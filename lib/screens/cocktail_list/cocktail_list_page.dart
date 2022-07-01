import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/cocktail_list/cocktail_list_provider.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';
import 'package:boilerplate/widgets/cocktail_item.dart';
import 'package:boilerplate/widgets/cocktail_list.dart';
import 'package:boilerplate/widgets/custom_app_bar.dart';
import 'package:boilerplate/widgets/loading_indicator.dart';

class CocktailListPage extends ConsumerStatefulWidget {
  final String categoryItem;

  const CocktailListPage({Key? key, required this.categoryItem})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CocktailListPageState();
}

class _CocktailListPageState extends ConsumerState<CocktailListPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    _setupController();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(cocktailListViewModelProvider.notifier).getCocktailsList(
          ref.read(homeViewModelProvider.notifier).currentCocktailMenuType,
          widget.categoryItem);
    });
  }

  void _setupController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animationController?.addListener(() => setState(() {}));
    animationController?.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CocktailCustomAppBar(),
      body: Column(
        children: [
          _CocktailConsumer(),
        ],
      ),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }
}

class _CocktailConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cocktailListViewModelProvider);

    return state.when(
        loading: () => const Expanded(
              child: Center(
                child: LoadingIndicator(value: 1),
              ),
            ),
        success: (list) {
          final cocktailItems = list
              .map(
                (item) => CocktailItem(
                  name: item.name,
                  image: AssetImage(item.image),
                ),
              )
              .toList();
          return CocktailList(list: cocktailItems);
        },
        failure: (error) => Text(error));
  }
}
