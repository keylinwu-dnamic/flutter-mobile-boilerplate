import 'package:boilerplate/screens/home/home_provider.dart';
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
      bottomNavigationBar: _buildBottomNavigationBar(),
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
          success: () => _buildCategoriesMenu(),
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

  Widget _buildCategoriesMenu() {
    final gridTile = ref
        .read(homeViewModelProvider.notifier)
        .cocktailMenuTiles
        .map((tile) => _buildGridTile(withName: tile.name))
        .toList();

    return Center(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: gridTile,
    ));
  }

  Widget _buildGridTile({required String withName}) {
    return GridTile(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal,
        child: Text(withName),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.amber[800],
      onTap: (index) => print('Nav Bar clicked  - change to autoroute $index'),
    );
  }
}
