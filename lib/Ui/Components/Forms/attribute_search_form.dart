import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/special_enums.dart';
import 'package:stock_manager/Ui/Components/Forms/attribute_textfield.dart';
import 'package:stock_manager/Ui/Components/Forms/selector_dropdown.dart';
import 'package:stock_manager/Ui/Components/Generics/date_picker.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

abstract class SearchField {
  Map<String, dynamic>? getQuery();
}

class SearchFieldText<R> extends StatefulWidget {
  const SearchFieldText({
    Key? key,
    required this.label,
    required this.identifier,
    this.allowedSearchTypes = SearchType.values,
    required this.onSelected,
    required this.onDeselected, this.parser,
  }) : super(key: key);

  final String label;
  final String identifier;
  final OnSearchAttributeSelected onSelected, onDeselected;
  final List<SearchType> allowedSearchTypes;
  final SearchFieldParser<R>? parser;

  @override
  State<StatefulWidget> createState() => _SearchFieldTextState();
}

class _SearchFieldTextState extends State<SearchFieldText> {
  bool isChecked = false;

  String attributeValue = '';

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
    dynamic value = (widget.parser == null )? attributeValue: widget.parser!(attributeValue);

    switch (searchType) {
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
    }

  }

  void onSelectSearchType(SearchType value) {
    searchType = value;
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
              label: widget.label,
              onChanged: (value) {
                if (value != null) {
                  attributeValue = value;
                }
              }),
        ),
        const SizedBox(width: Measures.medium),
        Expanded(
            child: SelectorDropDown(
                label: const Text(Labels.searchType),
                items: widget.allowedSearchTypes,
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
    required this.values, this.adapter,
  }) : super(key: key);

  final String label;
  final List<T> values;
  final String identifier;
  final DropDownMenuItemAdapter<T>? adapter;
  final OnSearchAttributeSelected onSelected, onDeselected;

  @override
  State<SearchFieldDropDown<T>> createState() => _SearchFieldDropDownState<T>();
}

class _SearchFieldDropDownState<T> extends State<SearchFieldDropDown<T>> {
  bool isChecked = false;

  String attributeValue = '';

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
    selector.eq(widget.identifier, attributeValue);
  }

  void onSelect(T value) {
    attributeValue = (value as String);
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
                label: const Text(Labels.selectProductFamily),
                items: widget.values,
                adapter: widget.adapter,
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
    value ? widget.onSelected : widget.onDeselected;

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
      required this.onSelected,
      required this.onDeselected})
      : super(key: key);

  final String startLabel, endLabel;
  final String identifier;
  final OnSearchAttributeSelected onSelected, onDeselected;

  @override
  State<StatefulWidget> createState() => _SearchFieldDateState();
}

class _SearchFieldDateState extends State<SearchFieldDate> {
  bool isChecked = false;

  String minValue = '', maxValue = '';

  void onBoxChecked(bool value) {
    value ? widget.onSelected : widget.onDeselected;

    setState(() {
      isChecked = value;
    });
  }

  void queryGenerator(mongo.SelectorBuilder selector) {

     selector
        .gte(widget.identifier, minValue)
        .lte(widget.identifier, maxValue);

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
          child: DatePicker(
              label: widget.endLabel,
              onDatePicked: (value) {
                minValue = value;
              }),
        ),
        const SizedBox(width: Measures.medium),
        Expanded(
          child: DatePicker(
              label: widget.endLabel,
              onDatePicked: (value) {
                minValue = value;
              }),
        ),
      ],
    );
  }
}
