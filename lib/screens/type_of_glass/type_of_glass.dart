import 'package:boilerplate/generated/l10n.dart';
import 'package:flutter/material.dart';

class TypeOfGlassPage extends StatelessWidget {
  const TypeOfGlassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.current.typeOfGlass),
      ),
      body: const Center(
        child: null,
      ),
    );
  }
}
