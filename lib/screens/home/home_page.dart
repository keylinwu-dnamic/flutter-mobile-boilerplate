import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/home/widgets/category_main_menu.dart';
import 'package:boilerplate/widgets/bottom_navigation.dart';

import 'package:boilerplate/widgets/loading_indicator.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    _setupController();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(homeViewModelProvider.notifier).initialize();
    });
  }

  void _setupController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animationController?.addListener(() => setState(() {}));
    animationController?.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildAccordingToState(),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }

  Widget _buildAccordingToState() {
    return ref.watch(
      homeViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => LoadingIndicator(value: animationController?.value),
          success: (currentNavigationIndex) => _buildNavigationWidget(
            currentNavigationIndex,
          ),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }

  Widget _buildNavigationWidget(int withIndex) {
    return const CategoryMainMenu();
  }
}
