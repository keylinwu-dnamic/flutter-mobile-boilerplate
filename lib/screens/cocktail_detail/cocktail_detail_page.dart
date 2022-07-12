import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/screens/cocktail_detail/cocktail_detail_provider.dart';
import 'package:boilerplate/widgets/circular_progress.dart';

class CocktailDetailPage extends ConsumerStatefulWidget {
  const CocktailDetailPage({Key? key, required this.id, required this.name})
      : super(key: key);

  final String id;
  final String name;

  @override
  ConsumerState<CocktailDetailPage> createState() =>
      _CocktailDetailPageState(id: id, name: name);
}

class _CocktailDetailPageState extends ConsumerState<CocktailDetailPage> {
  _CocktailDetailPageState({required this.id, required this.name});

  final String id;
  final String name;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(cocktailDetailViewModelProvider.notifier)
          .getCocktailDetail(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CocktailColors.background,
      appBar: AppBarCustom(
        title: name,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            bottom: Spacing.spacingXL,
          ),
          child: _DetailConsumer(),
        ),
      ),
    );
  }
}

class _DetailConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cocktailDetailViewModelProvider);

    return state.when(
      loading: () => const CircularProgress(),
      success: (cocktail) {
        return (Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: CocktailColors.secondary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
              padding: const EdgeInsets.only(bottom: Spacing.spacingXS),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
                child: Image.network(cocktail.image),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: Spacing.spacingXS, bottom: Spacing.spacingMD),
              child: Text(
                cocktail.name,
                style: Fonts.detailTitle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: Spacing.spacingMD,
                right: Spacing.spacingMD,
              ),
              child: Column(
                children: [
                  _CocktailInfo(title: 'Tag', definition: cocktail.tag),
                  _CocktailInfo(
                      title: 'Category', definition: cocktail.category),
                  _CocktailInfo(
                      title: 'Type of Glass', definition: cocktail.glass),
                  _IngredientsInfo(cocktail),
                  _CocktailInfo(
                      title: 'Instructions',
                      definition: cocktail.instructions,
                      hasDivider: false),
                ],
              ),
            )
          ],
        ));
      },
      failure: (error) => Text(error),
    );
  }

  Container _CocktailInfo(
      {required String title,
      required String definition,
      bool hasDivider = true}) {
    return Container(
      margin: const EdgeInsets.only(top: Spacing.spacingXS),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: Sizes.sizeXXXXL,
                margin: const EdgeInsets.only(bottom: Spacing.spacingXS),
                child: Text(
                  title,
                  style: Fonts.tileTitle,
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(bottom: Spacing.spacingXS),
                  child: Text(
                    definition,
                  ),
                ),
              ),
            ],
          ),
          hasDivider
              ? const Divider(
                  color: CocktailColors.primary,
                )
              : const SizedBox()
        ],
      ),
    );
  }

  Column _IngredientsInfo(Cocktail cocktail) {
    return Column(
      children: [
        ...cocktail.ingredients!.map(
          (ingredient) => Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: Spacing.spacingXS,
                  bottom: Spacing.spacingXS,
                ),
                width: Sizes.sizeXXXXL,
                child: Text(
                  ingredient.name,
                  style: Fonts.tileTitle,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: Spacing.spacingXS),
                  child: Text('> ${ingredient.measure}'))
            ],
          ),
        ),
        const Divider(
          color: CocktailColors.primary,
        ),
      ],
    );
  }
}
