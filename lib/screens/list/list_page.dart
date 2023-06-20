import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/home/widgets/menu_avatar.dart';
import 'package:boilerplate/screens/list/list_provider.dart';
import 'package:boilerplate/screens/list/widgets/generic_card.dart';
import 'package:boilerplate/screens/search/search_page.dart';
import 'package:boilerplate/screens/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListPage extends ConsumerStatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ListPage> createState() => _ListPageState();
}

class _ListPageState extends ConsumerState<ListPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(listViewModelProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      backgroundColor: const Color(AppColors.background),
    );
  }

  void dispose() {
    super.dispose();
  }

  AppBar _buildAppBar() {
    String title = ref.read(listViewModelProvider.notifier).menu!.name;
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black54),
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget _buildBody() {
    final menu = ref.read(listViewModelProvider.notifier).menu;
    var borderColor = menu!.leftColor
        ? const Border(
            left: BorderSide(
              color: Color(AppColors.outline),
              width: 12,
            ),
          )
        : const Border(
            right: BorderSide(
              color: Color(AppColors.outline),
              width: 12,
            ),
          );

    return ref.watch(
      listViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color(AppColors.outline),
              semanticsValue: 'Loading',
            ),
          ),
          success: (list) => CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return GenericCard(
                      borderColor: borderColor,
                      img: menu.img,
                      name: list[index].name,
                      outlineImg: true,
                      onTap: () {
                        ref.read(queryProvider.notifier).state = list[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const SearchPage();
                          }),
                        );
                      },
                    );
                  },
                  childCount: list.length,
                ),
              ),
            ],
          ),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }
}
