import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/models/category_main_item.dart';

import 'package:boilerplate/screens/category_main_list/category_main_list_provider.dart';
import 'package:boilerplate/screens/home/home_provider.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';
import 'package:boilerplate/widgets/cocktail_item.dart';
import 'package:boilerplate/widgets/cocktail_list.dart';
import 'package:boilerplate/widgets/custom_message.dart';
import 'package:boilerplate/widgets/custom_sliver_app_bar.dart';
import 'package:boilerplate/widgets/loading_indicator.dart';

class CategoryMainListPage extends ConsumerStatefulWidget {
  const CategoryMainListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CategoryMainListPageState();
}

class _CategoryMainListPageState extends ConsumerState<CategoryMainListPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      CocktailMenuType cocktailMenuType =
          ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

      await ref
          .read(categoryMainListViewModelProvider.notifier)
          .getCategoryMainList(cocktailMenuType);
    });
  }

  @override
  Widget build(BuildContext context) {
    CocktailMenuType cocktailMenuType =
        ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(title: cocktailMenuType.name),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              child: Column(children: [_CategoriesConsumer()]),
            )
          ]))
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
    CocktailMenuType cocktailMenuType =
        ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

    return state.when(
        loading: () => const LoadingIndicator(),
        success: (list) => _buildSuccessWidget(list, cocktailMenuType),
        failure: (error) => CustomMessage(message: error));
  }

  CocktailList _buildSuccessWidget(
      List<CategoryMainItem> list, CocktailMenuType cocktailMenuType) {
    final categoriesItems = list
        .map(
          (item) => CocktailItem(
            name: item.name,
            image: cocktailMenuType.image,
          ),
        )
        .toList();
    return CocktailList(list: categoriesItems);
  }
}
