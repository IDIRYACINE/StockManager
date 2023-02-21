import 'package:flutter/material.dart';
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


    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(StockEvents.values.length, emptyAction);

    AddProduct addProductAction = AddProduct();
    _callbacks[addProductAction.getId()] = addProductAction;

    RemoveProduct removeProductAction = RemoveProduct();
    _callbacks[removeProductAction.getId()] = removeProductAction;

    SearchProducts searchProductAction = SearchProducts();
    _callbacks[searchProductAction.getId()] = searchProductAction;

    UpdateProduct updateProductAction = UpdateProduct();
    _callbacks[updateProductAction.getId()] = updateProductAction;

     AddCategory addCategoryAction = AddCategory();
    _callbacks[addCategoryAction.getId()] = addCategoryAction;

    RemoveCategory removeCategoryAction = RemoveCategory();
    _callbacks[removeCategoryAction.getId()] = removeCategoryAction;

    SearchCategories searchCategoryAction = SearchCategories();
    _callbacks[searchCategoryAction.getId()] = searchCategoryAction;

    UpdateCategory updateategoryAction = UpdateCategory();
    _callbacks[updateategoryAction.getId()] = updateategoryAction;

  }
}
