import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:boilerplate/constants/constants.dart';
import 'package:boilerplate/router/router.gr.dart';

import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_decoration.dart';
import 'package:boilerplate/styles/cocktail_fonts.dart';
import 'package:boilerplate/styles/cocktail_sizes.dart';
import 'package:boilerplate/styles/cocktail_spacing.dart';

import 'package:boilerplate/widgets/cocktail_avatar.dart';

class CocktailItem extends StatelessWidget {
  final String name;
  final AssetImage image;
  final String? imageExt;

  const CocktailItem(
      {Key? key, required this.name, required this.image, this.imageExt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router
            .push(CocktailListRoute(categoryItem: name.replaceAll(' ', '_')));
      },
      child: Container(
        margin: const EdgeInsets.all(CocktailSpacing.spacingXS),
        decoration: CocktailDecoration.gridTileDecoration,
        height: CocktailSizes.sizeContainerItemList,
        child: Row(
          children: [_avatarItem(), _dividerItem(), _titleItem(), _bordeItem()],
        ),
      ),
    );
  }

  Padding _avatarItem() {
    return Padding(
      padding: const EdgeInsets.all(CocktailSpacing.spacingSM),
      child: CocktailAvatar(
        image: image,
        size: CocktailSizes.sizeAvatarList,
        spacing: CocktailSpacing.spacingXXS,
        imageExt: imageExt,
      ),
    );
  }

  SizedBox _dividerItem() {
    return const SizedBox(
      height: CocktailSizes.sizeVerticalItemDivider,
      child: VerticalDivider(
        color: CocktailColors.primary,
        thickness: 1,
      ),
    );
  }

  Expanded _titleItem() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: CocktailSpacing.spacingSM),
        child: Text(
          name,
          style: CocktailFonts.listItemTitle,
          overflow: TextOverflow.ellipsis,
          maxLines: Constants.maxLineTextInList,
          softWrap: false,
        ),
      ),
    );
  }

  Container _bordeItem() {
    return Container(
      height: CocktailSizes.sizeContainerItemList,
      width: CocktailSizes.sizeBorderItemList,
      decoration: CocktailDecoration.borderItemListDecoration,
    );
  }
}
