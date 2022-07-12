import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/classes/extensions/box_shadow.dart';

class CocktailItem extends StatelessWidget {
  const CocktailItem(
      {Key? key,
      required this.name,
      this.isTypeOfGlass = false,
      this.cocktailImage})
      : super(key: key);

  final String name;
  final bool isTypeOfGlass;
  final String? cocktailImage;

  String get image => isTypeOfGlass ? Assets.glass : Assets.categories;
  bool get isCocktail => cocktailImage != null ? true : false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Sizes.sizeXS),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadowExtension.defaultTileShadow,
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(Spacing.spacingSM),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: Sizes.sizeMD,
                color: CocktailColors.secondary,
              ),
            ),
            color: Colors.white,
          ),
          child: Row(
            children: [
              isCocktail
                  ? CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(cocktailImage!),
                      backgroundColor: CocktailColors.white,
                    )
                  : Image.asset(
                      image,
                      width: Sizes.sizeXXL,
                    ),
              const Padding(
                padding: EdgeInsets.only(
                  left: Spacing.spacingSM,
                  right: Spacing.spacingSM,
                ),
                child: SizedBox(
                  height: Sizes.sizeXXL,
                  child: VerticalDivider(
                    color: CocktailColors.primary,
                    thickness: 1,
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  name,
                  style: Fonts.tileTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
