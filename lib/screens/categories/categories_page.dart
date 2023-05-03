import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './categories_provider.dart';

class CategoriesPage extends ConsumerStatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends ConsumerState<CategoriesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(categoriesViewModelProvider.notifier).getCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CocktailColors.background,
      appBar: AppBarCustom(
        title: AppStrings.current.categories,
      ),
      body: _CategoriesConsumer(),
    );
  }
}

class _CategoriesConsumer extends ConsumerWidget {
  void _onCategoryTap(BuildContext context, String name) {
    context.router.push(
      CocktailsRoute(
        category: name,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoriesViewModelProvider);

    return state.when(
        loading: () => const CircularProgress(),
        success: (categories) {
          final categoriesItems = categories
              .map(
                (category) => GestureDetector(
                  onTap: () => _onCategoryTap(context, category.name),
                  child: CocktailItem(name: category.name),
                ),
              )
              .toList();
          return Column(
            children: [
              ListCocktail(list: categoriesItems),
            ],
          );
        },
        failure: (error) => Text(error));
  }
}
