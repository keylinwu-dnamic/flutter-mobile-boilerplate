import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/screens/cocktails_category/categories_list_provider.dart';
import 'package:boilerplate/screens/home/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:boilerplate/screens/home/widgets/cocktail_app_bar.dart';
import 'package:boilerplate/screens/home/widgets/cocktails_app_item.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';

class CategoriesListPage extends ConsumerStatefulWidget
{
  const CategoriesListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CategoriesListPage> createState() => _CocktailsCategoriesPageState();
}

class _CocktailsCategoriesPageState extends ConsumerState<CategoriesListPage>
{
  @override
  void initState()
  {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async
    {
      await ref.read(categoriesListViewModelProvider.notifier).getCategoriesList();
    });
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      appBar: const CocktailAppBar(),
      body: Column(
        children: [
          _CocktailsCategoriesList()
        ]
      ),
      bottomNavigationBar: const CocktailBottomNavigation(),
      backgroundColor: CocktailAppColors.lightMint
    );
  }
}

class _CocktailsCategoriesList extends ConsumerWidget
{
  @override
  Widget build(BuildContext context, WidgetRef widgetRef)
  {
    final state = widgetRef.watch(categoriesListViewModelProvider);

    return state.when(
      loading: () => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppStrings.current.loadingText, style: CocktailAppFonts.messageText),
          ]
        )
      ),
      success: (cocktailsCategories)
      {
        final categoriesItems = cocktailsCategories.map((cocktailCategory) => CocktailsAppItem(itemTitle: cocktailCategory.name)).toList();

        return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index)
            {
              return categoriesItems[index];
            }
          )
        );
      },
      failure: (errorMessage) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(errorMessage, style: CocktailAppFonts.messageText),
          ]
        )
      )
    );
  }
}
