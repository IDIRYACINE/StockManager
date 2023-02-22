import 'package:flutter/material.dart';
import 'package:stock_manager/DataModels/type_defs.dart';

abstract class IStockDelegate<T> {
  void edit(BuildContext context , T element , int index);

  void add(BuildContext context);

  void refresh(BuildContext context);
  void remove(BuildContext context, T element);

  void search(BuildContext context);

  void quickSearch(BuildContext context, AppJson query);

}
