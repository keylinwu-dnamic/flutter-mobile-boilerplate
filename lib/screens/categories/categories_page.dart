import 'package:boilerplate/common_widgets/list_cocktail.dart';
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
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Categories'),
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
