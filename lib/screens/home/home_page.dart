import 'package:boilerplate/widgets/custom_message.dart';
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

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(homeViewModelProvider.notifier).initialize();
    });
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
          loading: () => const LoadingIndicator(),
          success: (_) => _buildSuccessWidget(),
          failure: (error) => CustomMessage(message: error),
        ),
      ),
    );
  }

  Widget _buildSuccessWidget() {
    return const CategoryMainMenu();
  }
}
