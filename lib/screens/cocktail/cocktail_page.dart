import 'package:boilerplate/screens/home/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import 'cocktail_provider.dart';

class CocktailPage extends ConsumerStatefulWidget {
  const CocktailPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CocktailPage> createState() => _CocktailPageState();
}

class _CocktailPageState extends ConsumerState<CocktailPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final drink = ref.read(cocktailProvider);
      await ref
          .read(cocktailViewModelProvider.notifier)
          .initialize(id: drink!.id);
    });
  }

  @override
  void dispose() {
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
      cocktailViewModelProvider.select(
        (viewModel) => viewModel.when(
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color(AppColors.outline),
              semanticsValue: 'Loading',
            ),
          ),
          success: (data) => CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    data.name,
                    textScaleFactor: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  background: Image.network(
                    data.img!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    final List<Map<String, dynamic>> lines = [
                      if (data.tags != null)
                        {
                          'title': 'Tags:',
                          'data': data.tagList.join(','),
                        },
                      if (data.category != null)
                        {
                          'title': 'Category:',
                          'data': data.category!,
                        },
                      if (data.glass != null)
                        {
                          'title': 'Type of glass:',
                          'data': data.glass!,
                        },
                      if (data.ingredients.isNotEmpty)
                        {
                          'title': 'Ingredients: ',
                          'list': data.ingredients,
                        },
                      if (data.instructions != null)
                        {
                          'title': 'Instructions: ',
                          'data': data.instructions!,
                        },
                    ];

                    return Column(
                      children: [
                        ...lines.map(
                          (line) => ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                line["title"] as String,
                                textScaleFactor: 1.1,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (line["data"] != null)
                                  Text(
                                    line["data"] as String,
                                    textScaleFactor: 1,
                                  ),
                                if (line["list"] != null)
                                  ...line["list"].map(
                                    (e) => Ingredients(
                                      name: '${e['name']}',
                                      measure: '${e['measure']}',
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
          failure: (error) => Text('Error $error'),
        ),
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  final String name;
  final String measure;
  const Ingredients({super.key, required this.name, required this.measure});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$name${measure != '' ? ':' : ''} ',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Text(
            measure,
          ),
        )
      ],
    );
  }
}
