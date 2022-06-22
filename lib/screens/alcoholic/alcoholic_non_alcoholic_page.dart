import 'package:flutter/material.dart';

class AlcoholicNonAlcoholicPage extends StatelessWidget {
  const AlcoholicNonAlcoholicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alcoholic/Non Alcoholic'),
      ),
      body: const Center(
        child: Text('Alcoholic/Non Alcoholic'),
      ),
    );
  }
}
