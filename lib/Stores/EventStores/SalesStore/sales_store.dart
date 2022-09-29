import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/orders.dart';
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/Stores/EventStores/SalesStore/actions.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';

class SalesStore implements Store {
  final List<EventListener> _listeners = [];
  late List<StoreAction> _callbacks;

  SalesStore(BuildContext context) {
    _registerStores(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _callbacks[event.eventId].execute(event).then((response) {
      if (event.broadcast) {
        for (EventListener listener in _listeners) {
          listener.notifyEventResult(
              event.event, response);
        }
        return;
      }
      if (event.notifyEmitteur) {
        event.listener
            ?.notifyEventResult(event.event, response);
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
        Provider.of<ControllersProvider>(context);

    RecordsLiveDataModel recordsLiveModel =
        controllersProvider.recordsLiveModel;

    StockLiveDataModel stockLiveModel = controllersProvider.stockLiveModel;

    OrdersLiveDataModel ordersLiveModel = controllersProvider.ordersLiveModel;

    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(SalesEvents.values.length, emptyAction);

    AddPurchase purchaseAction = AddPurchase(recordsLiveModel, stockLiveModel);
    _callbacks[purchaseAction.getId()] = purchaseAction;

    RemovePurchase removePurchaseAction =
        RemovePurchase(recordsLiveModel, stockLiveModel);
    _callbacks[removePurchaseAction.getId()] = removePurchaseAction;

    RemovePurchaseProduct removePurchaseProductAction =
        RemovePurchaseProduct(recordsLiveModel, stockLiveModel);
    _callbacks[removePurchaseProductAction.getId()] =
        removePurchaseProductAction;

    ClearPurchases clearPurchasesAction = ClearPurchases(recordsLiveModel);
    _callbacks[clearPurchasesAction.getId()] = clearPurchasesAction;

    AddDeposit addDepositAction = AddDeposit(recordsLiveModel, stockLiveModel);
    _callbacks[addDepositAction.getId()] = addDepositAction;

    RemoveDeposit removeDepositAction =
        RemoveDeposit(recordsLiveModel, stockLiveModel);
    _callbacks[removeDepositAction.getId()] = removeDepositAction;

    RemoveDepositProduct removeDepositProductAction =
        RemoveDepositProduct(recordsLiveModel, stockLiveModel);
    _callbacks[removeDepositAction.getId()] = removeDepositProductAction;

    QuickSearchDeposit quickSearchDepositAction =
        QuickSearchDeposit(recordsLiveModel);
    _callbacks[quickSearchDepositAction.getId()] = quickSearchDepositAction;

    AddOrder addOrderAction = AddOrder(ordersLiveModel, stockLiveModel);
    _callbacks[addOrderAction.getId()] = addOrderAction;

    AddOrderProduct addOrderProductAction =
        AddOrderProduct(ordersLiveModel, stockLiveModel);
    _callbacks[addOrderProductAction.getId()] = addOrderProductAction;

    RemoveOrder removeOrderAction =
        RemoveOrder(ordersLiveModel, stockLiveModel);
    _callbacks[removeOrderAction.getId()] = removeOrderAction;

    RemoveOrderProduct removeOrderProductAction =
        RemoveOrderProduct(ordersLiveModel, stockLiveModel);
    _callbacks[removeOrderProductAction.getId()] = removeOrderProductAction;

    UpdateOrder updateOrderAction =
        UpdateOrder(ordersLiveModel);
    _callbacks[updateOrderAction.getId()] = updateOrderAction;

    SearchOrder searchOrderAction =
        SearchOrder(ordersLiveModel);
    _callbacks[removeOrderAction.getId()] = searchOrderAction;

  }
}
