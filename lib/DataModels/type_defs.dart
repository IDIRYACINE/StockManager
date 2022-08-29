

import 'package:flutter/material.dart';

typedef ValidationFunction<T> = String? Function(T? value);

typedef OnChangedFunction<T> = void Function(T? value);

typedef DataRowAdapter<T> = DataRow Function(T value);

typedef DataRowBuilder<T> = List<DataRow> Function();

typedef DataCellAdapter<T> = List<DataCell> Function(T value);

typedef DropDownMenuItemAdapter<T> = DropdownMenuItem<T> Function(T value);

typedef ValueCallback<T> = void Function(T value);

typedef MongoDbDataStream = Future<Stream<Map<String,dynamic>>>;

typedef JsonMap = Map<String,dynamic>;

typedef ItemBuilder = Widget Function(BuildContext context, int index);

typedef DefaultCellAdapter = List<String> Function();

typedef RowClickCallback = void Function(VoidCallback turnOffLastRow);

typedef RowCellAdapter<T> = List<String> Function(T value);