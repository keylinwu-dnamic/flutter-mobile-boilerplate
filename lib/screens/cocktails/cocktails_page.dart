import 'package:boilerplate/screens/cocktails/cocktails_provider.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CocktailsPage extends ConsumerStatefulWidget {
  const CocktailsPage({Key? key, required this.apiKey, required this.name})
      : super(key: key);
  final String apiKey;
  final String name;

  @override
  ConsumerState<CocktailsPage> createState() =>
      _CocktailsPageState(apiKey: apiKey, name: name);
}

class _CocktailsPageState extends ConsumerState<CocktailsPage> {
  _CocktailsPageState({required this.apiKey, required this.name});

  final String apiKey;
  final String name;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(cocktailsViewModelProvider.notifier)
          .getCocktails(apiKey, name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: 'Cocktails'),
      body: Column(
        children: [
          _CocktailsConsumer(),
        ],
      ),
    );
  }
}

class _CocktailsConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cocktailsViewModelProvider);

    return state.when(
      loading: () => const CircularProgress(),
      success: (cocktails) {
        final cocktailItems = cocktails
            .map(
              (cocktail) => GestureDetector(
                child: CocktailItem(
                  name: cocktail.name,
                  cocktailImage: cocktail.image,
                ),
              ),
            )
            .toList();
        return ListCocktail(list: cocktailItems);
      },
      failure: (error) => Text(error),
    );
  }
}
