import 'package:flutter/material.dart';

class ListCocktail extends StatelessWidget {
  final List<Widget> list;

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
