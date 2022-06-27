import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/home/cocktail_app_home_menu_items.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/images.dart';
import 'package:boilerplate/styles/spacings.dart';

class CategoryMainMenu extends ConsumerStatefulWidget {
  const CategoryMainMenu({Key? key}) : super(key: key);

  @override
  ConsumerState<CategoryMainMenu> createState() => _CategoryMainMenuState();
}

class _CategoryMainMenuState extends ConsumerState<CategoryMainMenu>
{
  @override
  Widget build(BuildContext context)
  {
    final homeScreenMenuItems = ref
        .read(homeViewModelProvider.notifier)
        .cocktailMenuTiles
        .map((tile) => _buildHomeScreenMenuItems(cocktailAppHomeMenuItem: tile))
        .toList();

    return Center(
      child: Stack(
        children: [
          _homeScreenImage(),
          _homeScreenMenu(homeScreenMenuItems)
        ],
      )
    );
  }

  Container _homeScreenImage()
  {
    return Container(
      decoration: const BoxDecoration(
          color: CocktailAppColors.aquaGreen,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(90)),
          image: DecorationImage(image: AssetImage(CocktailAppImages.homeScreenBackground), opacity: 0.68, fit: BoxFit.fill)
      ),
      width: 393,
      height: 440,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('COCKTAILS APP', textAlign: TextAlign.center, style: CocktailAppFonts.homeTitle),
          Text('Be your own Bartender', textAlign: TextAlign.center, style: CocktailAppFonts.homeText)
        ],
      ),
    );
  }

  Container _homeScreenMenu(List<Widget> homeScreenMenuItems)
  {
    return Container(
      padding: const EdgeInsets.only(top: 335),
      child: Center(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(CocktailAppSpacings.homeMenuItemsPaddingSM),
            crossAxisSpacing: CocktailAppSpacings.homeMenuItemsAxisSpacingSM,
            mainAxisSpacing: CocktailAppSpacings.homeMenuItemsAxisSpacingSM,
            crossAxisCount: 2,
            children: homeScreenMenuItems,
          )),
    );
  }

  Widget _buildHomeScreenMenuItems({required CocktailAppHomeMenuItems cocktailAppHomeMenuItem})
  {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          color: CocktailAppColors.white,
          border: Border.all(color: CocktailAppColors.aquaGreen.withOpacity(0.3), width: 2.0),
          borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: CocktailAppColors.aquaGreen),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(cocktailAppHomeMenuItem.imageFileName),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
                child: Text(cocktailAppHomeMenuItem.name, style: CocktailAppFonts.menuItemLabel, textAlign: TextAlign.center),
              ),
            )
          ],
        ),
      ),
    );
  }
}
