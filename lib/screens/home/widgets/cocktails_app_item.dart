import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/sizes.dart';
import 'package:boilerplate/styles/spacings.dart';

class CocktailsAppItem extends StatelessWidget
{
  const CocktailsAppItem({Key? key, required this.itemTitle}) : super(key: key);

  final String itemTitle;

  @override
  Widget build(BuildContext context)
  {
    void routeToItemPage()
    {
      context.router.push(CocktailsListRoute(categoryName: itemTitle.toLowerCase().replaceAll(" ", "-")));
    }
    return GestureDetector(
      onTap: ()
      {
        routeToItemPage();
      },
      child: Container(
        margin: const EdgeInsets.only(left: CocktailAppSpacings.listItemMarginSM, top: CocktailAppSpacings.listItemMarginSM, right: CocktailAppSpacings.listItemMarginSM),
        padding: const EdgeInsets.only(right: CocktailAppSpacings.listItemRightPaddingSM),
        height: CocktailAppSizes.listItemHeight,
        decoration: BoxDecoration(
          color: CocktailAppColors.mint,
          borderRadius: const BorderRadius.all(Radius.circular(CocktailAppSizes.homeScreenMenuItemBoxRadius)),
          boxShadow: [
            BoxShadow(
                color: CocktailAppColors.black.withOpacity(0.2),
                blurRadius: CocktailAppSizes.homeScreenMenuItemBoxShadowRadius,
                offset: const Offset(CocktailAppSpacings.homeScreenMenuItemBoxShadowOffsetX, CocktailAppSpacings.homeScreenMenuItemBoxShadowOffsetY)
            )
          ]
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: CocktailAppColors.white,
            borderRadius: BorderRadius.horizontal(left: Radius.circular(CocktailAppSizes.homeScreenMenuItemBoxRadius)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: CocktailAppSpacings.listItemCircleContainerLeftPaddingSM, right: CocktailAppSpacings.listItemCircleContainerRightPaddingSM),
                child: Container(
                  height: CocktailAppSizes.listItemCircleSize,
                  width: CocktailAppSizes.listItemCircleSize,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: CocktailAppColors.mint),
                  child: const Padding(
                    padding: EdgeInsets.all(CocktailAppSpacings.listItemCirclePaddingSM),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Assets.homeScreenTileCategory)
                    )
                  )
                )
              ),
              const SizedBox(
                height: CocktailAppSizes.listItemSeparatorHeight,
                child: VerticalDivider(color: CocktailAppColors.aqua, thickness: CocktailAppSizes.listItemSeparatorThickness)
              ),
              Padding(
                padding: const EdgeInsets.only(left: CocktailAppSpacings.listItemTextPaddingSM),
                child: Text(itemTitle, style: CocktailAppFonts.menuItemLabel)
              )
            ]
          )
        )
      )
    );
  }
}
