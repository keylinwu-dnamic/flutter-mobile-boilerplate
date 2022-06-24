import 'package:flutter/material.dart';
import 'package:boilerplate/generated/l10n.dart';

class IngredientsPage extends StatelessWidget {
  const IngredientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.current.ingredients),
      ),
      body: const Center(
        child: null,
      ),
    );
  }
}
