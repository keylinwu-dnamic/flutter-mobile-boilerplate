import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      height: 440,
      width: 428,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.cocktailsBackgroundApp),
              fit: BoxFit.fill,
              opacity: 0.6),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90)),
          color: CocktailColors.primary),
      child: Center(
          child: SizedBox(
        width: 280,
        child: Text(
          ref.read(homeViewModelProvider.notifier).title.toUpperCase(),
          maxLines: 2,
          textAlign: TextAlign.center,
          style: CocktailsFonts.headTitle,
        ),
      )),
    );
  }

  Padding _mainMenu(List<Widget> gridTile) {
    return Padding(
      padding: const EdgeInsets.only(top: 356),
      child: Center(
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: gridTile,
      )),
    );
  }

  Widget _buildGridTile({required CocktailMenu cocktailMenu}) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print(cocktailMenu);
      },
      child: GridTile(
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: CocktailColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(5, 5), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _avatarMenu(image: cocktailMenu.image),
              _titleMenu(title: cocktailMenu.name)
            ],
          ),
        ),
      ),
    );
  }

  Container _avatarMenu({required AssetImage image}) {
    return Container(
      height: 115,
      width: 115,
      decoration: const BoxDecoration(
          color: CocktailColors.backgroundColor, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: image,
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
          style: CocktailsFonts.menuTitle,
        ),
      ),
    );
  }
}
