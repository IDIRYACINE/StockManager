import 'package:flutter/material.dart';

abstract class IStockDelegate {
  void edit(BuildContext context);

  void add(BuildContext context);

  void refresh(BuildContext context);
  void remove(BuildContext context);

  void search(BuildContext context);
}
