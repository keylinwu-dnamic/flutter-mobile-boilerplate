import 'package:flutter/material.dart';

import 'package:boilerplate/widgets/cocktail_item.dart';

class CocktailList extends StatelessWidget {
  final List<CocktailItem> list;

  const CocktailList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return list[index];
      },
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
    );
  }
}
