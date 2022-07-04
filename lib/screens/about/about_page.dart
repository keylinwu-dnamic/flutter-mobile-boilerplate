import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';

class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends ConsumerState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('About Screen')),
      bottomNavigationBar: CocktailBottomNavigation(),
    );
  }
}
