

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

typedef ValidationFunction<T> = String? Function(T? value);

typedef OnChangedFunction<T> = void Function(T? value);

typedef DataRowAdapter<T> = DataRow Function(T value);

typedef DataRowBuilder<T> = List<DataRow> Function();

typedef DataCellAdapter<T> = List<DataCell> Function(T value);

typedef DropDownMenuItemAdapter<T> = DropdownMenuItem<T> Function(T value);

typedef VoidValueCallback<T> = void Function(T value);

typedef VoidDoubleValueCallback<T,R> = void Function(T value,R secondValue);

typedef ValueCallback<R> = R Function();

typedef OnSearchAttributeSelected = void Function(ValueCallback<SelectorBuilder>  queryCallback);

typedef RegisterSearchQueryBuilder = void Function (ValueCallback<SelectorBuilder>  queryCallback);

typedef SearchFieldsBuilder = List<Widget> Function (RegisterSearchQueryBuilder ,RegisterSearchQueryBuilder);

typedef MongoDbDataStream = Future<Stream<Map<String,dynamic>>>;

typedef JsonMap = Map<String,dynamic>;

typedef ItemBuilder = Widget Function(BuildContext context, int index);

typedef DefaultCellAdapter = List<String> Function();

typedef RowClickCallback = void Function(VoidCallback turnOffLastRow);

typedef RowCellAdapter<T> = List<String> Function(T value);