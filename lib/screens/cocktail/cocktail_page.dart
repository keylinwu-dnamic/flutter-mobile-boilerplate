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
      backgroundColor: const Color(AppColors.background),
      body: _buildAccordingToState(),
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
                backgroundColor: const Color(AppColors.green),
                expandedHeight: 300,
                leading: FloatingActionButton(
                  onPressed: () => Navigator.of(context).pop(),
                  backgroundColor: const Color(
                    AppColors.background,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    child: Image.network(
                      data.img!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    final List<Map<String, dynamic>> lines = [
                      if (data.tagList.isNotEmpty)
                        {
                          'title': 'Tags',
                          'data': data.tagList.join(', '),
                        },
                      if (data.category != null)
                        {
                          'title': 'Category',
                          'data': data.category!,
                        },
                      if (data.glass != null)
                        {
                          'title': 'Type of glass',
                          'data': data.glass!,
                        },
                      if (data.ingredients.isNotEmpty)
                        {
                          'title': 'Ingredients',
                          'list': data.ingredients,
                        },
                      if (data.instructions != null)
                        {
                          'title': 'Instructions',
                          'data': data.instructions!,
                        },
                    ];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: Text(
                            data.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        ...lines.map(
                          (line) {
                            Widget? content;
                            Widget title = Expanded(
                              flex: 1,
                              child: Text(
                                line["title"] as String,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );

                            if (line["data"] != null) {
                              content = Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Row(
                                  children: [
                                    title,
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        line["data"] as String,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }

                            if (line["list"] != null) {
                              content = Row(
                                children: [
                                  title,
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        ...line["list"].map(
                                          (e) => Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 5,
                                            ),
                                            child: Ingredient(
                                              name: '${e['name']}',
                                              measure: '${e['measure']}',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }
                            final divider =
                                lines.indexOf(line) != lines.length - 1
                                    ? const Divider(
                                        color: Color(AppColors.green),
                                        thickness: 2,
                                      )
                                    : null;

                            return ListTile(
                              title: content,
                              subtitle: divider,
                            );
                          },
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

class Ingredient extends StatelessWidget {
  final String name;
  final String measure;
  const Ingredient({super.key, required this.name, required this.measure});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                TextSpan(
                  text: '$name${measure != '' ? ':' : ''} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: measure,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
