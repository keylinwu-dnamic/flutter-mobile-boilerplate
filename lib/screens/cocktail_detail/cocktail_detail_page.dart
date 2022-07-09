import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';

import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/classes/entities/cocktail_detail.dart';

import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/cocktail_detail/cocktail_detail_provider.dart';

import 'package:boilerplate/styles/cocktail_color.dart';
import 'package:boilerplate/styles/cocktail_fonts.dart';
import 'package:boilerplate/styles/cocktail_spacing.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';
import 'package:boilerplate/widgets/custom_message.dart';
import 'package:boilerplate/widgets/custom_sliver_app_bar.dart';
import 'package:boilerplate/widgets/loading_indicator.dart';

class CocktailDetailPage extends ConsumerStatefulWidget {
  final Cocktail cocktail;

  const CocktailDetailPage({Key? key, required this.cocktail})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CocktailDetailPageState();
}

class _CocktailDetailPageState extends ConsumerState<CocktailDetailPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(cocktailDetailViewModelProvider.notifier)
          .getCocktailDetail(widget.cocktail.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    CocktailMenuType cocktailMenuType =
        ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: widget.cocktail.name,
            placeHolder: cocktailMenuType.image,
            image: widget.cocktail.image,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              child: Column(children: [
                _CocktailConsumer(
                  cocktail: widget.cocktail,
                )
              ]),
            )
          ]))
        ],
      ),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }
}

class _CocktailConsumer extends ConsumerWidget {
  final Cocktail cocktail;
  final double maxWidthLabel = 120;
  static const int maxIngredients = 15;

  const _CocktailConsumer({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cocktailDetailViewModelProvider);

    return state.when(
        loading: () => const LoadingIndicator(),
        success: (cocktailDetail) =>
            _buildSuccessWidget(cocktail, cocktailDetail),
        failure: (error) => CustomMessage(message: error));
  }

  Widget _buildSuccessWidget(Cocktail cocktail, CocktailDetail cocktailDetail) {
    return Padding(
      padding: const EdgeInsets.all(CocktailSpacing.spacingSM),
      child: Column(
        children: [
          _titleCocktailDetail(cocktail),
          if (cocktailDetail.tags != null)
            _itemCocktailDetail(label: 'Tags', value: cocktailDetail.tags!),
          _itemDivider(),
          _itemCocktailDetail(
              label: 'Category', value: cocktailDetail.category),
          _itemDivider(),
          _itemCocktailDetail(
              label: 'Type of Glass', value: cocktailDetail.glass),
          _itemDivider(),
          _itemCocktailDetail(
              label: 'Ingredients',
              value: '',
              ingredientsList: _getListIngredients(cocktailDetail)),
          _itemDivider(),
          _itemCocktailDetail(
              label: 'Instructions', value: cocktailDetail.instructions),
        ],
      ),
    );
  }

  Widget _itemDivider() {
    return const Divider(
      color: CocktailColors.primary,
    );
  }

  Widget _titleCocktailDetail(Cocktail cocktail) {
    return Padding(
      padding: const EdgeInsets.all(CocktailSpacing.spacingSM),
      child: Text(
        cocktail.name,
        style: CocktailFonts.cocktailTitle,
      ),
    );
  }

  Widget _itemCocktailDetail(
      {required String label,
      required String value,
      List<Map<String, String>>? ingredientsList}) {
    return Padding(
      padding: const EdgeInsets.only(
          top: CocktailSpacing.spacingSM, bottom: CocktailSpacing.spacingSM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _labelItemCocktailDetail(label),
          _valueItemCocktailDetail(value, ingredientsList)
        ],
      ),
    );
  }

  SizedBox _labelItemCocktailDetail(String label) {
    return SizedBox(
      width: maxWidthLabel,
      child: Text(
        label,
        style: CocktailFonts.cocktailDetailLabel,
      ),
    );
  }

  Widget _valueItemCocktailDetail(
      String value, List<Map<String, String>>? ingredientsList) {
    return Expanded(
      child: (ingredientsList == null)
          ? Text(
              value,
              style: CocktailFonts.cocktailDetailValue,
              softWrap: true,
            )
          : _listViewIngredients(ingredientsList),
    );
  }

  Widget _listViewIngredients(List<Map<String, String>> ingredientsList) {
    return ListView.builder(
      itemCount: ingredientsList.length,
      itemBuilder: (_, index) {
        return Row(
          children: [
            Text(
              ingredientsList[index].keys.toString(),
              style: CocktailFonts.cocktailDetailIngredientValue,
            ),
            Text(
              ingredientsList[index].values.toString(),
              style: CocktailFonts.cocktailDetailMeasureValue,
            )
          ],
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }

  List<Map<String, String>> _getListIngredients(CocktailDetail cocktailDetail) {
    List<Map<String, String>> ingredientsList = [];

    var cocktailDetailJson = cocktailDetail.toJson();

    for (var i = 1; i <= maxIngredients; i++) {
      if ((cocktailDetailJson['strIngredient$i'] != null &&
              cocktailDetailJson['strIngredient$i'].toString().isNotEmpty) &&
          (cocktailDetailJson['strMeasure$i'] != null &&
              cocktailDetailJson['strMeasure$i'].toString().isNotEmpty)) {
        final Map<String, String> ingredient = {
          cocktailDetailJson['strIngredient$i']:
              cocktailDetailJson['strMeasure$i'].toString()
        };
        ingredientsList.add(ingredient);
      }
    }

    return ingredientsList;
  }
}
