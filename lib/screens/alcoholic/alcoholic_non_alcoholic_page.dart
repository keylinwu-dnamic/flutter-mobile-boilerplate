import 'package:boilerplate/generated/l10n.dart';
import 'package:flutter/material.dart';

class AlcoholicNonAlcoholicPage extends StatelessWidget {
  const AlcoholicNonAlcoholicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.current.alcoholicNonAlcoholic),
      ),
      body: const Center(
        child: null,
      ),
    );
  }
}
