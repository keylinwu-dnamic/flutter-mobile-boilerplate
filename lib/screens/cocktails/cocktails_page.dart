import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/models/cocktail.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/screens/cocktails/cocktails_provider.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CocktailsPage extends ConsumerStatefulWidget {
  const CocktailsPage({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  ConsumerState<CocktailsPage> createState() => CocktailsPageState();
}

class CocktailsPageState extends ConsumerState<CocktailsPage> {
  CocktailsPageState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //Calling ViewModel input
      await ref
          .read(cocktailsViewModelProvider.notifier)
          .getCocktails(widget.category);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CocktailColors.background,
        appBar: AppBarCustom(
          //Getting ViewModel output
          title: ref.read(cocktailsViewModelProvider.notifier).appBarTitle,
        ),
        body: _buildAccordingToState());
  }

  Widget _buildAccordingToState() {
    final state = ref.watch(cocktailsViewModelProvider);

    return state.when(
      loading: () => const CircularProgress(),
      success: (cocktails) => _buildCocktailList(withCocktails: cocktails),
      failure: (error) => Text(error),
    );
  }

  Widget _buildCocktailList({required List<Cocktail> withCocktails}) {
    {
      final cocktailItems = withCocktails
          .map((cocktail) => _buildCocktailDetails(cocktail))
          .toList();
      return Column(
        children: [
          ListCocktail(list: cocktailItems),
        ],
      );
    }
  }

  Widget _buildCocktailDetails(Cocktail cocktail) {
    return GestureDetector(
      onTap: () => goToCocktailDetails(cocktail),
      child: CocktailItem(
        name: cocktail.name,
        cocktailImage: cocktail.image,
      ),
    );
  }

  void goToCocktailDetails(Cocktail cocktail) {
    context.router.push(
      CocktailDetailRoute(id: cocktail.id, name: cocktail.name),
    );
  }
}
