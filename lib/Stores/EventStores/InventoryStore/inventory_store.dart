import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'actions.dart';

class InventoryStore implements Store {
  final List<EventListener> _listeners = [];
  late List<StoreAction> _callbacks;

  InventoryStore(BuildContext context) {
    _registerStores(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _callbacks[event.eventId].execute(event).then((response) {
      if (event.broadcast) {
        for (EventListener listener in _listeners) {
          listener.notifyEventResult(event.event, response);
        }
        return;
      }
      if (event.notifyEmitteur) {
        event.listener?.notifyEventResult(event.event, response);
      }
    });
  }

  @override
  void on(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerStores(BuildContext context) {
    ControllersProvider controllersProvider =
        Provider.of<ControllersProvider>(context, listen: false);

    StockLiveDataModel stockLiveModel = controllersProvider.stockLiveModel;

    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(StockEvents.values.length, emptyAction);

    AddProduct addProductAction = AddProduct(stockLiveModel);
    _callbacks[addProductAction.getId()] = addProductAction;

    RemoveProduct removeProductAction = RemoveProduct(stockLiveModel);
    _callbacks[removeProductAction.getId()] = removeProductAction;

    SearchProducts searchProductAction = SearchProducts(stockLiveModel);
    _callbacks[searchProductAction.getId()] = searchProductAction;

    UpdateProduct updateProductAction = UpdateProduct(stockLiveModel);
    _callbacks[updateProductAction.getId()] = updateProductAction;

     AddCategory addCategoryAction = AddCategory(stockLiveModel);
    _callbacks[addCategoryAction.getId()] = addCategoryAction;

    RemoveCategory removeCategoryAction = RemoveCategory(stockLiveModel);
    _callbacks[removeCategoryAction.getId()] = removeCategoryAction;

    SearchCategories searchCategoryAction = SearchCategories(stockLiveModel);
    _callbacks[searchCategoryAction.getId()] = searchCategoryAction;

    UpdateCategory updateategoryAction = UpdateCategory(stockLiveModel);
    _callbacks[updateategoryAction.getId()] = updateategoryAction;

  }
}
