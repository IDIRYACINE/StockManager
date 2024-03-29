import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/Domain/Models/product.dart';


typedef ValidationFunction<T> = String? Function(T? value);

typedef OnChangedFunction<T> = void Function(T? value);

typedef DataRowAdapter<T> = DataRow Function(T value);

typedef DataRowBuilder<T> = List<DataRow> Function();

typedef DataCellAdapter<T> = List<DataCell> Function(T value);

typedef DropDownMenuItemAdapter<T> = DropdownMenuItem<T> Function(T value);

typedef VoidValueCallback<T> = void Function(T value);

typedef VoidDoubleValueCallback<T, R> = void Function(T value, R secondValue);

typedef ValueCallback<R> = R Function();

typedef ResultCallback<T, R> = R Function(T value);

typedef OnSearchAttributeSelected = void Function(
    Callback<SelectorBuilder> queryCallback);

typedef RegisterSearchQueryBuilder = void Function(
    Callback<SelectorBuilder> queryCallback);

typedef SearchFieldsBuilder = List<Widget> Function(
    RegisterSearchQueryBuilder, RegisterSearchQueryBuilder);

typedef FutureMongoDbDataStream = Future<Stream<Map<String, dynamic>>>;

typedef MongoDbDataStream = Stream<Map<String, dynamic>>;

typedef JsonMap = Map<String, dynamic>;

typedef ItemBuilder = Widget Function(BuildContext context, int index);

typedef RowClickCallback = void Function(
    Callback<bool> turnOffRow, int rowIndex, VoidCallback updateRow);

typedef RowCellAdapter<T> = List<String> Function(T value);

typedef Callback<T> = void Function(T value);

typedef Callback2<A, B> = void Function(A first, B second);

typedef Callback3<A, B, C> = void Function(A first, B second, C third);

typedef AppJson<T> = Map<String, T>;

typedef EditorCallback<T, K> = void Function(T value, K secondValue);

typedef OnEditorSearchResulCallback = void Function(List<Product> result);

typedef EditorSearchCallback = void Function(
    String barcode, OnEditorSearchResulCallback callback);

typedef SearchFieldParser<R> = R Function(String value);

typedef TextFieldValidator = String? Function(String? value);

typedef ProductModelsType = Map<String, ProductModel>;
