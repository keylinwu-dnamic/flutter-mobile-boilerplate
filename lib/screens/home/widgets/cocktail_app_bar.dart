import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';

class CocktailAppBar extends ConsumerStatefulWidget with PreferredSizeWidget
{
  const CocktailAppBar({Key? key}) : super(key: key);

  @override
  ConsumerState<CocktailAppBar> createState() => _CocktailAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CocktailAppBarState extends ConsumerState<CocktailAppBar>
{
  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      //leading: const Text("Back", style: CocktailAppFonts.appBarTitle),
      title: Text(AppStrings.current.cocktailsCategories, style: CocktailAppFonts.appBarTitle),
      backgroundColor: CocktailAppColors.appBarGray,
    );
  }
}
