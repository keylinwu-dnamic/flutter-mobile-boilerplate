import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/home/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:boilerplate/screens/home/widgets/category_main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  final mainScreens = [
    const CategoryMainMenu(),
    const OtherScreen(title: 'Search Screen'),
    const OtherScreen(title: 'About Screen'),
  ];

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
      appBar: _buildAppBar(),
      body: buildAccordingToState(),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        ref.read(homeViewModelProvider.notifier).title,
        style: const TextStyle(color: Colors.black54),
      ),
      backgroundColor: Colors.amber.shade100,
    );
  }

  Widget buildAccordingToState() {
    return ref.watch(
      homeViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => _buildLoader(),
          success: (currentNavigationIndex) => buildNavigationWidget(
            currentNavigationIndex,
          ),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }

  Widget buildNavigationWidget(int withIndex) {
    return mainScreens[withIndex];
  }

  Widget _buildLoader() {
    return Center(
      child: CircularProgressIndicator(
        value: animationController?.value,
        semanticsLabel: 'Linear progress indicator',
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
