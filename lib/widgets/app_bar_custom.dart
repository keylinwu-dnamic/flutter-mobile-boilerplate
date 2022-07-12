import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSize {
  const AppBarCustom({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Widget get child => AppBar(
        backgroundColor: CocktailColors.header,
        iconTheme: const IconThemeData(color: CocktailColors.primary),
        title: Text(
          title,
          style: Fonts.tileTitle,
        ),
      );
}
