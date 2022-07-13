import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/screens/home/cocktail_app_home_menu_items.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/sizes.dart';
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
          color: CocktailAppColors.mint,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(CocktailAppSizes.homeScreenImageBottomRadius)),
          image: DecorationImage(image: AssetImage(Assets.homeScreenBackground), opacity: 0.68, fit: BoxFit.fill)
      ),
      width: CocktailAppSizes.homeScreenImageWidth,
      height: CocktailAppSizes.homeScreenImageHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppStrings.current.homeScreenTitle, textAlign: TextAlign.center, style: CocktailAppFonts.homeTitle),
          Text(AppStrings.current.homeScreenText, textAlign: TextAlign.center, style: CocktailAppFonts.homeText)
        ],
      ),
    );
  }

  Container _homeScreenMenu(List<Widget> homeScreenMenuItems)
  {
    return Container(
      padding: const EdgeInsets.only(top: CocktailAppSpacings.homeScreenMenuTopSM),
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
    void routeToMenuItemPage()
    {
      context.router.push(cocktailAppHomeMenuItem.route);
    }
    return GestureDetector(
      onTap: ()
      {
        routeToMenuItemPage();
      },
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
            color: CocktailAppColors.white,
            boxShadow: [
              BoxShadow(
                color: CocktailAppColors.black.withOpacity(0.2),
                blurRadius: CocktailAppSizes.homeScreenMenuItemBoxShadowRadius,
                offset: const Offset(CocktailAppSpacings.homeScreenMenuItemBoxShadowOffsetX, CocktailAppSpacings.homeScreenMenuItemBoxShadowOffsetY)
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(CocktailAppSizes.homeScreenMenuItemBoxRadius))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Container(
                height: CocktailAppSizes.homeScreenMenuItemCircleSize,
                width: CocktailAppSizes.homeScreenMenuItemCircleSize,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: CocktailAppColors.mint),
                child: Padding(
                  padding: const EdgeInsets.all(CocktailAppSpacings.homeScreenMenuItemImagePaddingSM),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(cocktailAppHomeMenuItem.imageFileName),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: CocktailAppSpacings.homeScreenMenuItemTextPaddingSM),
                  child: Text(cocktailAppHomeMenuItem.name, style: CocktailAppFonts.menuItemLabel, textAlign: TextAlign.center),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
