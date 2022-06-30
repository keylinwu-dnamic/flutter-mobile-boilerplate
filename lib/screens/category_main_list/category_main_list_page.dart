import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';

import 'package:boilerplate/screens/category_main_list/category_main_list_provider.dart';
import 'package:boilerplate/screens/home/home_provider.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';
import 'package:boilerplate/widgets/cocktail_item.dart';
import 'package:boilerplate/widgets/cocktail_list.dart';
import 'package:boilerplate/widgets/custom_app_bar.dart';
import 'package:boilerplate/widgets/loading_indicator.dart';

class CategoryMainListPage extends ConsumerStatefulWidget {
  const CategoryMainListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CategoryMainListPageState();
}

class _CategoryMainListPageState extends ConsumerState<CategoryMainListPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    _setupController();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(categoryMainListViewModelProvider.notifier)
          .getCategoryMainList(
              ref.read(homeViewModelProvider.notifier).currentCocktailMenuType);
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
          _CategoriesConsumer(),
        ],
      ),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }
}

class _CategoriesConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryMainListViewModelProvider);

    return state.when(
        loading: () => const Expanded(
              child: Center(
                child: LoadingIndicator(value: 1),
              ),
            ),
        success: (list) {
          CocktailMenuType cocktailMenuType =
              ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

          final categoriesItems = list
              .map(
                (item) => CocktailItem(
                  name: item.name,
                  image: cocktailMenuType.image,
                ),
              )
              .toList();
          return CocktailList(list: categoriesItems);
        },
        failure: (error) => Text(error));
  }
}
