import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/screens/cocktails_category/cocktails_by_category_provider.dart';
import 'package:boilerplate/screens/home/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:boilerplate/screens/home/widgets/cocktail_app_bar.dart';
import 'package:boilerplate/screens/home/widgets/cocktails_category_item.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';

class CocktailsCategoriesPage extends ConsumerStatefulWidget
{
  const CocktailsCategoriesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CocktailsCategoriesPage> createState() => _CocktailsCategoriesPageState();
}

class _CocktailsCategoriesPageState extends ConsumerState<CocktailsCategoriesPage>
{
  @override
  void initState()
  {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async
    {
      await ref.read(cocktailsByCategoryViewModelProvider.notifier).getCategoriesList();
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
      backgroundColor: CocktailAppColors.lightMint,
    );
  }
}

class _CocktailsCategoriesList extends ConsumerWidget
{
  @override
  Widget build(BuildContext context, WidgetRef widgetRef)
  {
    final state = widgetRef.watch(cocktailsByCategoryViewModelProvider);

    return state.when(
      loading: () => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppStrings.current.loadingText, style: CocktailAppFonts.messageText),
          ],
        ),
      ),
      success: (cocktailsCategories)
      {
        final categoriesItems = cocktailsCategories.map((cocktailCategory) => CocktailsCategoryItem(categoryName: cocktailCategory.name)).toList();

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
          ],
        ),
      ),
    );
  }
}
