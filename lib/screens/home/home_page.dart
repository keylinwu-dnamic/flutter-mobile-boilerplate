import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/home/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:boilerplate/screens/home/widgets/category_main_menu.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
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
      body: _buildMain(),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }

  Container _buildMain() {
    return Container(
      height: Sizes.backgroundImageSize,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.backgroundImage),
          fit: BoxFit.fitWidth,
          alignment: FractionalOffset.topCenter,
          colorFilter: ColorFilter.mode(
            CocktailColors.primary,
            BlendMode.modulate,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(Spacing.spacingXXL),
            child: Image.asset(Assets.title),
          ),
          _buildAccordingToState(),
        ],
      ),
    );
  }

  Widget _buildAccordingToState() {
    return ref.watch(
      homeViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => _buildLoader(),
          success: (currentNavigationIndex) => _buildNavigationWidget(
            currentNavigationIndex,
          ),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }

  Widget _buildNavigationWidget(int withIndex) {
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

//TODO: This is temporal and can be remove when we make the proper widgets for each screen
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
