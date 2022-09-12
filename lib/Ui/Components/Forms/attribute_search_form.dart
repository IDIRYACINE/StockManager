import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'package:stock_manager/Application/Utility/Adapters/dropdown_adapter.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/default_button.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Generics/date_picker.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class SearchField {
  Map<String, dynamic>? getQuery();
}

class SearchFieldText<R> extends StatefulWidget {
  const SearchFieldText({
    Key? key,
    required this.label,
    required this.identifier,
    this.allowedSearchTypes,
    this.onSelected,
    this.onDeselected,
    this.parser,
    this.registerQueryGenerator,
    this.isOptional = true,
  })  : assert(
          (registerQueryGenerator != null) &&
                  (onSelected == null && onDeselected == null) ||
              (registerQueryGenerator == null) &&
                  (onSelected != null && onDeselected != null),
        ),
        super(key: key);

  final String label;
  final String identifier;
  final OnSearchAttributeSelected? onSelected, onDeselected;
  final List<SearchType>? allowedSearchTypes;
  final SearchFieldParser<R>? parser;
  final bool isOptional;
  final RegisterSearchQueryBuilder? registerQueryGenerator;

  @override
  State<StatefulWidget> createState() => _SearchFieldTextState();
}

class _SearchFieldTextState extends State<SearchFieldText> {
  bool isChecked = false;

  List<DropdownMenuItem<SearchType>>? searchTypes;

  String attributeValue = '';

  ValueNotifier<SearchType?> searchType = ValueNotifier(SearchType.equals);

  @override
  void initState() {
    if (widget.allowedSearchTypes != null) {
      searchTypes = widget.allowedSearchTypes!
          .map((e) => DropdownAdapters.enumDropDownMenuItemAdapter(e))
          .toList();
    }

    super.initState();
  }

  void onBoxChecked(bool value) {
    value
        ? widget.onSelected!(queryGenerator)
        : widget.onDeselected!(queryGenerator);

    setState(() {
      isChecked = value;
    });
  }

  void queryGenerator(mongo.SelectorBuilder selector) {
    dynamic value = (widget.parser == null)
        ? attributeValue
        : widget.parser!(attributeValue);

    switch (searchType.value) {
      case SearchType.equals:
        selector.eq(widget.identifier, value);
        break;
      case SearchType.greaterThan:
        selector.gt(widget.identifier, value);
        break;
      case SearchType.lessThan:
        selector.lt(widget.identifier, value);
        break;
      case SearchType.greaterThanEquals:
        selector.gte(widget.identifier, value);
        break;
      case SearchType.lessThanEquals:
        selector.lte(widget.identifier, value);
        break;
      default:
        break;
    }
  }

  void onSelectSearchType(SearchType value) {
    searchType.value = value;
  }

  @override
  Widget build(BuildContext context) {
    widget.registerQueryGenerator?.call(queryGenerator);

    return Row(
      children: [
        if (widget.isOptional)
          Flexible(
              child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              if (value != null) {
                onBoxChecked(value);
              }
            },
          )),
        const SizedBox(width: Measures.small),
        Expanded(
          child: AttributeTextField(
              label: widget.label,
              onChanged: (value) {
                if (value != null) {
                  attributeValue = value;
                }
              }),
        ),
        const SizedBox(width: Measures.medium),
        if (searchTypes != null)
          Expanded(
              child: SelectorDropDown(
                  label: const Text(Labels.searchType),
                  items: searchTypes,
                  initialSelection: searchType,
                  onSelect: onSelectSearchType)),
      ],
    );
  }
}

class SearchFieldDropDown<T> extends StatefulWidget {
  const SearchFieldDropDown({
    Key? key,
    required this.label,
    required this.identifier,
    required this.onSelected,
    required this.onDeselected,
    required this.values,
  }) : super(key: key);

  final String label;
  final List<DropdownMenuItem<T>> values;
  final String identifier;
  final OnSearchAttributeSelected onSelected, onDeselected;

  @override
  State<SearchFieldDropDown<T>> createState() => _SearchFieldDropDownState<T>();
}

class _SearchFieldDropDownState<T> extends State<SearchFieldDropDown<T>> {
  bool isChecked = false;

  ValueNotifier<T?> attributeValue = ValueNotifier(null);

  SearchType searchType = SearchType.equals;

  void onBoxChecked(bool value) {
    value
        ? widget.onSelected(queryGenerator)
        : widget.onDeselected(queryGenerator);

    setState(() {
      isChecked = value;
    });
  }

  void queryGenerator(mongo.SelectorBuilder selector) {
    String value = (attributeValue.value is Enum)
        ? (attributeValue.value as Enum).name
        : attributeValue.value.toString();

    selector.eq(widget.identifier, value);
  }

  void onSelect(T value) {
    attributeValue.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Checkbox(
          value: isChecked,
          onChanged: (value) {
            if (value != null) {
              onBoxChecked(value);
            }
          },
        )),
        const SizedBox(width: Measures.small),
        Flexible(
          child: Text(widget.label),
        ),
        const SizedBox(width: Measures.medium),
        Expanded(
            child: SelectorDropDown(
                label: Text(widget.label),
                items: widget.values,
                initialSelection: attributeValue,
                onSelect: onSelect)),
      ],
    );
  }
}

class SearchFieldRanged extends StatefulWidget {
  const SearchFieldRanged(
      {Key? key,
      required this.minlabel,
      required this.maxLabel,
      required this.minIdentifier,
      required this.maxIdentifier,
      required this.onSelected,
      required this.onDeselected})
      : super(key: key);

  final String minlabel, maxLabel;
  final String minIdentifier, maxIdentifier;
  final OnSearchAttributeSelected onSelected, onDeselected;

  @override
  State<StatefulWidget> createState() => _SearchFieldRangedState();
}

class _SearchFieldRangedState extends State<SearchFieldRanged> {
  bool isChecked = false;

  String minValue = '', maxValue = '';

  void onBoxChecked(bool value) {
    value
        ? widget.onSelected(queryGenerator)
        : widget.onDeselected(queryGenerator);

    setState(() {
      isChecked = value;
    });
  }

  void queryGenerator(mongo.SelectorBuilder selector) {
    selector
        .gte(widget.minIdentifier, minValue)
        .lte(widget.maxIdentifier, maxValue);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Checkbox(
          value: isChecked,
          onChanged: (value) {
            if (value != null) {
              onBoxChecked(value);
            }
          },
        )),
        const SizedBox(width: Measures.small),
        Expanded(
          child: AttributeTextField(
              label: widget.maxLabel,
              onChanged: (value) {
                if (value != null) {
                  minValue = value;
                }
              }),
        ),
        const SizedBox(width: Measures.medium),
        Expanded(
          child: AttributeTextField(
              label: widget.minlabel,
              onChanged: (value) {
                if (value != null) {
                  maxValue = value;
                }
              }),
        ),
      ],
    );
  }
}

class SearchFieldDate extends StatefulWidget {
  const SearchFieldDate(
      {Key? key,
      required this.startLabel,
      required this.endLabel,
      required this.identifier,
      this.onSelected,
      this.onDeselected,
      this.isOptional = true,
      this.registerQueryGenerator})
      : assert(
          (registerQueryGenerator != null) &&
                  (onSelected == null && onDeselected == null) ||
              (registerQueryGenerator == null) &&
                  (onSelected != null && onDeselected != null),
        ),
        super(key: key);

  final String startLabel, endLabel;
  final String identifier;
  final bool isOptional;
  final OnSearchAttributeSelected? onSelected, onDeselected;
  final RegisterSearchQueryBuilder? registerQueryGenerator;

  @override
  State<StatefulWidget> createState() => _SearchFieldDateState();
}

class _SearchFieldDateState extends State<SearchFieldDate> {
  bool isChecked = false;

  DateTime minValue = DateTime.now();

  void onBoxChecked(bool value) {
    value
        ? widget.onSelected!(queryGenerator)
        : widget.onDeselected!(queryGenerator);

    setState(() {
      isChecked = value;
    });
  }

  void queryGenerator(mongo.SelectorBuilder selector) {
    selector.gte(widget.identifier, minValue);
  }

  @override
  Widget build(BuildContext context) {
    widget.registerQueryGenerator?.call(queryGenerator);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.isOptional)
          Flexible(
              child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              if (value != null) {
                onBoxChecked(value);
              }
            },
          )),
        const SizedBox(width: Measures.small),
        Expanded(
          child: DatePicker(
              label: widget.startLabel,
              onDatePicked: (value) {
                minValue = value;
              }),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.onSearch}) : super(key: key);

  final Callback<String> onSearch;

  @override
  Widget build(BuildContext context) {
    String searchValue = '';

    void setSearchValue(String? value) {
      if (value != null) {
        searchValue = value;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: AttributeTextField(
          label: Labels.reference,
          initialValue: searchValue,
          onChanged: setSearchValue,
        )),
        Flexible(
            child: DefaultButton(
                label: Labels.search,
                onPressed: () {
                  onSearch(searchValue);
                })),
      ],
    );
  }
}
