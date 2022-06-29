import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/screens/type_of_glass/type_of_glass_provider.dart';
import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TypeOfGlassPage extends ConsumerStatefulWidget {
  const TypeOfGlassPage({Key? key}) : super(key: key);

  @override
  ConsumerState<TypeOfGlassPage> createState() => _TypeOfGlassPageState();
}

class _TypeOfGlassPageState extends ConsumerState<TypeOfGlassPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(typeOfGlassViewModelProvider.notifier).getTypeOfGlass();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.current.typeOfGlass),
      ),
      body: Column(
        children: [
          _TypeOfGlassConsumer(),
        ],
      ),
    );
  }
}

class _TypeOfGlassConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(typeOfGlassViewModelProvider);

    return state.when(
        loading: () => const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        success: (listGlass) {
          final categoriesItems = listGlass
              .map(
                (glass) => CocktailItem(name: glass.name),
              )
              .toList();
          return ListCocktail(list: categoriesItems);
        },
        failure: (error) => Text(error));
  }
}
