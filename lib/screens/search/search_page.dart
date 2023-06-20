import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/screens/cocktail/cocktail_page.dart';
import 'package:boilerplate/screens/cocktail/cocktail_provider.dart';
import 'package:boilerplate/screens/list/widgets/generic_card.dart';
import 'package:boilerplate/screens/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final query = ref.read(queryProvider.notifier).state;
      await ref.read(searchViewModelProvider.notifier).initialize(query: query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      backgroundColor: const Color(AppColors.background),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildBody() {
    final hideItemsOnView =
        ref.read(searchViewModelProvider.notifier).hideItemsOnView;
    final title = ref.read(searchViewModelProvider.notifier).title;

    return ref.watch(
      searchViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color(AppColors.outline),
              semanticsValue: 'Loading',
            ),
          ),
          success: (list, noResults) => CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              leading: !hideItemsOnView
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                        ref.read(queryProvider.notifier).state = null;
                      },
                    ),
              backgroundColor: Colors.white,
              floating: false,
              pinned: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: hideItemsOnView
                    ? Text(
                        title,
                        style: const TextStyle(color: Colors.black),
                      )
                    : PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: Padding(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: 'Search for cocktails'),
                            onSubmitted: (String value) async {
                              await ref
                                  .read(searchViewModelProvider.notifier)
                                  .search(query: value);
                              ref.read(queryProvider.notifier).state = value;
                            },
                          ),
                        ),
                      ),
                background: const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GenericCard(
                    url: list[index].img,
                    name: list[index].name,
                    outlineImg: false,
                    onTap: () {
                      ref.read(cocktailProvider.notifier).state = list[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const CocktailPage();
                        }),
                      );
                    },
                  );
                },
                childCount: list.length,
              ),
            ),
            if (noResults ?? false)
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('No Results'),
                      ),
                    );
                  },
                  childCount: 1,
                ),
              )
          ]),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }
}
