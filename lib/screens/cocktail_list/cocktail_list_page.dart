import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/generated/l10n.dart';

import 'package:boilerplate/screens/home/home_provider.dart';
import 'package:boilerplate/screens/cocktail_list/cocktail_list_provider.dart';

import 'package:boilerplate/widgets/bottom_navigation.dart';
import 'package:boilerplate/widgets/cocktail_item.dart';
import 'package:boilerplate/widgets/cocktail_list.dart';
import 'package:boilerplate/widgets/custom_sliver_app_bar.dart';
import 'package:boilerplate/widgets/custom_message.dart';
import 'package:boilerplate/widgets/loading_indicator.dart';

class CocktailListPage extends ConsumerStatefulWidget {
  final String categoryItem;

  const CocktailListPage({Key? key, required this.categoryItem})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CocktailListPageState();
}

class _CocktailListPageState extends ConsumerState<CocktailListPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      CocktailMenuType cocktailMenuType =
          ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;
      await ref
          .read(cocktailListViewModelProvider.notifier)
          .getCocktailsList(cocktailMenuType, widget.categoryItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(title: AppStrings.current.cocktailList),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              child: Column(children: [_CocktailConsumer()]),
            )
          ]))
        ],
      ),
      bottomNavigationBar: const CocktailBottomNavigation(),
    );
  }
}

class _CocktailConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cocktailListViewModelProvider);
    CocktailMenuType cocktailMenuType =
        ref.read(homeViewModelProvider.notifier).currentCocktailMenuType;

    return state.when(
        loading: () => const LoadingIndicator(),
        success: (list) => _buildSuccessWidget(list, cocktailMenuType),
        failure: (error) => CustomMessage(message: error));
  }

  CocktailList _buildSuccessWidget(
      List<Cocktail> list, CocktailMenuType cocktailMenuType) {
    final cocktailItems = list
        .map(
          (item) => CocktailItem(
            name: item.name,
            image: cocktailMenuType.image,
            cocktail: Cocktail(id: item.id, name: item.name, image: item.image),
          ),
        )
        .toList();
    return CocktailList(list: cocktailItems);
  }
}
