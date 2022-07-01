import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/classes/extensions/box_shadow.dart';

class CategoryMainMenu extends ConsumerStatefulWidget {
  const CategoryMainMenu({Key? key}) : super(key: key);

  @override
  ConsumerState<CategoryMainMenu> createState() => _CategoryMainMenuState();
}

class _CategoryMainMenuState extends ConsumerState<CategoryMainMenu> {
  @override
  Widget build(BuildContext context) {
    final gridTile = ref
        .read(homeViewModelProvider.notifier)
        .cocktailMenuTiles
        .map(
          (tile) => _buildGridTile(tile),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(Spacing.spacingXXS),
          crossAxisSpacing: Spacing.spacingXS,
          mainAxisSpacing: Spacing.spacingXS,
          crossAxisCount: 2,
          children: gridTile,
        ),
      ],
    );
  }

  // add required String routeName
  Widget _buildGridTile(CocktailMenu info) {
    void goTo() {
      context.router.push(info.path);
    }

    return GridTile(
      child: TextButton(
        onPressed: () {
          goTo();
        },
        child: Container(
            decoration: BoxDecoration(
              color: CocktailColors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadowExtension.defaultTileShadow,
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(Sizes.sizeXS),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: Sizes.sizeXS),
                      decoration: BoxDecoration(
                        color: CocktailColors.primary,
                        borderRadius: BorderRadius.circular(Sizes.sizeXXXL),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.sizeXXS),
                        child: Image.asset(info.image),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      info.name,
                      textAlign: TextAlign.center,
                      style: Fonts.menuTitle,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
