import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/widgets/circular_progress.dart';
import 'package:boilerplate/widgets/item_cocktail.dart';
import 'package:boilerplate/widgets/list_cocktail.dart';
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
      appBar: AppBar(
        title: Text(AppStrings.current.alcoholicNonAlcoholic),
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
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(alcoholicViewModelProvider);

    return state.when(
      loading: () => const CircularProgress(),
      success: (alcoholicTypeList) {
        final alcoholicItems = alcoholicTypeList
            .map((alcohol) => CocktailItem(name: alcohol.name))
            .toList();
        return ListCocktail(list: alcoholicItems);
      },
      failure: (error) => Text(error),
    );
  }
}
