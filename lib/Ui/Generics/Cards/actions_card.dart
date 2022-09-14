import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Ui/Generics/action_button.dart';
import 'package:stock_manager/Ui/Generics/attribute_search_form.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/l10n/generated/translations.dart';

class SearchActionsCard extends StatelessWidget {
  const SearchActionsCard({Key? key, this.onPrint, this.onAdd, this.onRefresh, required this.title})
      : super(key: key);

  final VoidCallback? onPrint;
  final VoidCallback? onAdd;
  final VoidCallback? onRefresh;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.displayMedium,
            ),
            const Spacer(),
            if (onPrint != null)
              ActionButton(
                onPressed: onPrint,
                label: Translations.of(context).print,
                icon: Icons.print,
              ),
            const SizedBox(
              width: Measures.medium,
            ),
            if (onRefresh != null)
              ActionButton(
                onPressed: onRefresh,
                label: Translations.of(context).refresh,
                icon: Icons.refresh,
              ),
            if (onAdd != null)
              Container(
                margin: const EdgeInsets.only(
                  left: Measures.medium,
                ),
                child: ActionButton(
                  onPressed: onAdd,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  label: Translations.of(context).add,
                  icon: Icons.add,
                  iconColor: Colors.white,
                ),
              ),
          ],
        )
      ],
    );
  }
}

class QuickSearchField<T> extends StatelessWidget {
  QuickSearchField(
      {Key? key,
      required this.onQuickSearch,
      required this.valueIdentifier,
      this.parser})
      : super(key: key);

  final Callback<AppJson> onQuickSearch;
  final ResultCallback<String, T>? parser;

  final String valueIdentifier;

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  void onSearch() {
    final query = SelectorBuilder();
    for (Callback<SelectorBuilder> generator in queryGenerators) {
      generator(query);
    }
    onQuickSearch(query.map);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: Measures.quickSearchFieldWidth,
          child: SearchFieldText<T>(
              label: Translations.of(context).invoiceId,
              isOptional: false,
              parser: parser,
              registerQueryGenerator: registerQuery,
              identifier: valueIdentifier),
        ),
        ActionButton(
          onPressed: () {
            onSearch();
          },
          label: Translations.of(context).quickSearch,
          icon: Icons.search,
        ),
      ],
    );
  }
}

class QuickSearchDate extends StatelessWidget {
  QuickSearchDate({
    Key? key,
    required this.onQuickSearch,
    required this.valueIdentifier,
  }) : super(key: key);

  final Callback<AppJson> onQuickSearch;

  final String valueIdentifier;

  final List<Callback<SelectorBuilder>> queryGenerators = [];

  void registerQuery(Callback<SelectorBuilder> queryGenerator) {
    queryGenerators.add(queryGenerator);
  }

  void onSearch() {
    final query = SelectorBuilder();
    for (Callback<SelectorBuilder> generator in queryGenerators) {
      generator(query);
    }
    onQuickSearch(query.map);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: Measures.quickSearchFieldWidth,
          child: SearchFieldDate(
              startLabel: Translations.of(context).startDate,
              endLabel: Translations.of(context).endDate,
              isOptional: false,
              registerQueryGenerator: registerQuery,
              identifier: valueIdentifier),
        ),
        const SizedBox(
          width: Measures.medium,
        ),
        ActionButton(
          onPressed: () {
            onSearch();
          },
          label: Translations.of(context).quickSearch,
          icon: Icons.search,
        ),
      ],
    );
  }
}
