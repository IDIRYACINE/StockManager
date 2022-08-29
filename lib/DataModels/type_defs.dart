

import 'package:flutter/material.dart';

typedef ValidationFunction<T> = String? Function(T? value);
typedef OnChangedFunction<T> = void Function(T? value);
typedef DataRowBuilder<T> = DataRow Function(T value);
typedef DataCellAdapter<T> = List<DataCell> Function(T value);
typedef DropDownMenuItemAdapter<T> = DropdownMenuItem<T> Function(T value);
typedef ValueCallback<T> = void Function(T value);
typedef MongoDbDataStream = Future<Stream<Map<String,dynamic>>>;
typedef JsonMap = Map<String,dynamic>;
typedef ItemBuilder<T> = Widget Function(BuildContext context, T value);
typedef DefaultCellHelper = List<String> Function();
typedef RowClickCallback = void Function(VoidCallback turnOffLastRow);