import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          (tile) => _buildGridTile(
              withName: tile.name, path: tile.path, image: tile.image),
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
  Widget _buildGridTile(
      {required String withName,
      required PageRouteInfo path,
      required String image}) {
    void goTo() {
      context.router.push(path);
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
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes
                ),
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
                        child: Image.asset(image),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      withName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: CocktailColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
