import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/models/cocktail.dart';
import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    _setupController();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(homeViewModelProvider.notifier).mockAPICall();
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
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(ref.read(homeViewModelProvider.notifier).title),
    );
  }

  Widget buildAccordingToState() {
    return ref.watch(
      homeViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => _buildLoader(),
          success: (cocktails) => _buildCocktailScreen(cocktails),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }

  Widget _buildLoader() {
    return Center(
      child: CircularProgressIndicator(
        value: animationController?.value,
        semanticsLabel: 'Linear progress indicator',
      ),
    );
  }

  Widget _buildCocktailScreen(List<Cocktail> cocktails) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            AppStrings.current.welcome,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
