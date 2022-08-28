

import 'package:flutter/material.dart';

typedef ValidationFunction<T> = String? Function(T? value);
typedef OnChangedFunction<T> = void Function(T? value);
typedef DataRowBuilder<T> = DataRow Function(T value);
typedef DataCellAdapter<T> = List<DataCell> Function(T value);
typedef DropDownMenuItemAdapter<T> = DropdownMenuItem<T> Function(T value);