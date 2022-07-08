import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/constants.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/styles/colors.dart';
import 'package:boilerplate/styles/fonts.dart';
import 'package:boilerplate/styles/size.dart';
import 'package:boilerplate/styles/spacing.dart';
import 'package:boilerplate/widgets/app_bar_custom.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:boilerplate/classes/extensions/box_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './alcoholic_provider.dart';

class AlcoholicNonAlcoholicPage extends ConsumerStatefulWidget {
  const AlcoholicNonAlcoholicPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AlcoholicNonAlcoholicPage> createState() =>
      _AlcoholicNonAlcoholicPageState();
}

class _AlcoholicNonAlcoholicPageState
    extends ConsumerState<AlcoholicNonAlcoholicPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(alcoholicViewModelProvider.notifier).getAlcoholic();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: AppStrings.current.alcoholicNonAlcoholic,
      ),
      body: Column(
        children: [
          _AlcoholicConsumer(),
        ],
      ),
    );
  }
}

class _AlcoholicConsumer extends ConsumerWidget {
  void _onAlcoholicTap(BuildContext context, name) {
    context.router.push(
      CocktailsRoute(
        apiKey: Constants.endpointAlcoholic,
        name: name,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(alcoholicViewModelProvider);

    return state.when(
      loading: () => const CircularProgress(),
      success: (alcoholicTypeList) => Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: alcoholicTypeList.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                _onAlcoholicTap(
                  context,
                  alcoholicTypeList[index].name,
                );
              },
              child: AlcoholItem(
                name: alcoholicTypeList[index].name,
              ),
            );
          },
        ),
      ),
      failure: (error) => Text(error),
    );
  }
}

class AlcoholItem extends StatelessWidget {
  const AlcoholItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Sizes.sizeXS),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadowExtension.defaultTileShadow,
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        child: Container(
            padding: const EdgeInsets.all(Spacing.spacingSM),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: Sizes.sizeMD,
                  color: CocktailColors.secondary,
                ),
              ),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                name,
                style: Fonts.tileTitile,
              ),
            )),
      ),
    );
  }
}
