import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/classes/entities/category.dart';

class ListCocktail extends StatelessWidget {
  final List<TextButton> list;

  ListCocktail({required this.list});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (_, index) {
            return list[index];
          }),
    );
  }
}
