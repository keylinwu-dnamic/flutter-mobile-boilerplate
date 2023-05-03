import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/models/cocktail.dart';
import 'package:boilerplate/screens/cocktail_detail/cocktail_detail_provider.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CocktailDetailPage extends ConsumerStatefulWidget {
  const CocktailDetailPage({Key? key, required this.id, required this.name})
      : super(key: key);

  final String id;
  final String name;

  @override
  ConsumerState<CocktailDetailPage> createState() => _CocktailDetailPageState();
}

class _CocktailDetailPageState extends ConsumerState<CocktailDetailPage> {
  _CocktailDetailPageState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(cocktailDetailViewModelProvider.notifier)
          .getCocktailDetail(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CocktailColors.background,
      appBar: AppBarCustom(title: widget.name),
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
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderImage(cocktail.image),
            _buildTitle(cocktail.category),
            _buildDetails(cocktail),
          ],
        );
      },
      failure: (error) => Text(error),
    );
  }

  Widget _buildDetails(Cocktail cocktail) {
    return Container(
      margin: const EdgeInsets.only(
        left: Spacing.spacingMD,
        right: Spacing.spacingMD,
      ),
      child: Column(
        children: [
          _CocktailInfo(
              title: AppStrings.current.tag, definition: cocktail.tag),
          _CocktailInfo(
              title: AppStrings.current.category,
              definition: cocktail.category),
          _CocktailInfo(
              title: AppStrings.current.typeOfGlass,
              definition: cocktail.glass),
          _buildIngredientsInfo(cocktail),
          _CocktailInfo(
              title: AppStrings.current.instructions,
              definition: cocktail.instructions,
              hasDivider: false),
        ],
      ),
    );
  }

  Widget _buildTitle(String cocktailName) {
    return Container(
      margin: const EdgeInsets.only(
          top: Spacing.spacingXS, bottom: Spacing.spacingMD),
      child: Text(
        cocktailName,
        style: Fonts.detailTitle,
      ),
    );
  }

  Widget _buildHeaderImage(String cocktailImage) {
    return Container(
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
        child: Image.network(cocktailImage),
      ),
    );
  }

  Widget _buildIngredientsInfo(Cocktail cocktail) {
    bool hasIngredients = cocktail.ingredients != null ? true : false;
    return hasIngredients
        ? Column(
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
          )
        : Column(
            children: [
              Text(
                AppStrings.current.noIngredients,
                style: Fonts.detailTitle,
              ),
              const Divider(
                color: CocktailColors.primary,
              ),
            ],
          );
  }
}

class _CocktailInfo extends StatelessWidget {
  final String title;
  final String definition;
  final bool hasDivider;

  const _CocktailInfo({
    required this.title,
    required this.definition,
    this.hasDivider = true,
  });

  @override
  Widget build(BuildContext context) {
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
}
