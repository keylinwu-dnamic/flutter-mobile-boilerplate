import 'dart:ui';

import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/list/list_page.dart';
import 'package:boilerplate/screens/list/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'menu_avatar.dart';

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
        .map((tile) => _buildGridTile(menu: tile))
        .toList();

    return Container(
        decoration: const BoxDecoration(
          color: Color(AppColors.background),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 440,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  child: ImageFiltered(
                    imageFilter: ColorFilter.mode(
                        const Color(AppColors.imageFilter).withOpacity(0.7),
                        BlendMode.darken),
                    child: Image.asset(
                      'assets/background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Cocktails app", textAlign: TextAlign.center),
                  ],
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                delegate: SliverChildListDelegate(
                  gridTile,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildGridTile({required CocktailMenu menu}) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          ref.read(listViewModelProvider.notifier).menu = menu;
          return const ListPage();
        }),
      ),
      child: GridTile(
        child: Material(
          elevation: 3,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuAvatar(
                    img: menu.img,
                    outlineImg: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(menu.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
