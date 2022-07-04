import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/screens/home/home_provider.dart';

class CocktailCustomAppBar extends ConsumerWidget with PreferredSizeWidget {
  const CocktailCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CocktailMenuType cocktailMenuType =
        ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

    return AppBar(
      title: Text(cocktailMenuType.name),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
