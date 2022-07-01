import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/screens/home/home_provider.dart';

import 'package:boilerplate/styles/cocktail_decoration.dart';
import 'package:boilerplate/styles/cocktail_fonts.dart';
import 'package:boilerplate/styles/cocktail_spacing.dart';
import 'package:boilerplate/styles/cocktail_sizes.dart';

import 'package:boilerplate/widgets/cocktail_avatar.dart';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/enums/cocktail_menu.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_fonts.dart';

class CategoryMainMenu extends ConsumerStatefulWidget {
  const CategoryMainMenu({Key? key}) : super(key: key);

  @override
  ConsumerState<CategoryMainMenu> createState() => _CategoryMainMenuState();
}

class _CategoryMainMenuState extends ConsumerState<CategoryMainMenu> {
  static const double topPositionMainMenu = 356;

  void continueToMainList(CocktailMenuType cocktailMenu) {
    ref.read(homeViewModelProvider.notifier).currentCocktailMenuType =
        cocktailMenu;
    context.router.push(const CategoryMainListRoute());
  }

  @override
  Widget build(BuildContext context) {
    final gridTile = ref
        .read(homeViewModelProvider.notifier)
        .cocktailMenuTiles
        .map((tile) => _buildGridTile(cocktailMenu: tile))
        .toList();

    return Stack(
      children: [_mainTitle(), _mainMenu(gridTile)],
    );
  }

  Container _mainTitle() {
    return Container(
      height: CocktailSizes.heightMainTitle,
      width: CocktailSizes.widthMainTitle,
      decoration: CocktailDecoration.mainTitleDecoration,
      child: Center(
          child: SizedBox(
        width: CocktailSizes.sizeMainTitle,
        child: Text(
          ref.read(homeViewModelProvider.notifier).title.toUpperCase(),
          maxLines: 2,
          textAlign: TextAlign.center,
          style: CocktailFonts.headTitle,
        ),
      )),
    );
  }

  Padding _mainMenu(List<Widget> gridTile) {
    return Padding(
      padding: const EdgeInsets.only(top: topPositionMainMenu),
      child: Center(
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: CocktailSpacing.spacingXS,
        mainAxisSpacing: CocktailSpacing.spacingXS,
        crossAxisCount: 2,
        children: gridTile,
      )),
    );
  }

  Widget _buildGridTile({required CocktailMenuType cocktailMenu}) {
    return GestureDetector(
      onTap: () => continueToMainList(cocktailMenu),
      child: GridTile(
        child: Container(
          padding: const EdgeInsets.all(CocktailSpacing.spacingXS),
          decoration: CocktailDecoration.gridTileDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CocktailAvatar(
                image: cocktailMenu.image,
                size: CocktailSizes.sizeAvatarMenu,
                spacing: CocktailSpacing.spacingXS,
              ),
              _titleMenu(title: cocktailMenu.name)
            ],
          ),
        ),
      ),
    );
  }

  Center _titleMenu({required String title}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: CocktailFonts.menuTitle,
        ),
      ),
    );
  }
}
