import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './categories_provider.dart';
import 'package:boilerplate/generated/l10n.dart';

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
      appBar: AppBar(
        title: Text(AppStrings.current.categories),
      ),
      body: Column(
        children: [
          _CategoriesConsumer(),
        ],
      ),
    );
  }
}

class _CategoriesConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoriesViewModelProvider);

    return state.when(
        loading: () => const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        success: (categories) => ListCocktail(
              list: categories,
            ),
        failure: (error) => Text(error));
  }
}
