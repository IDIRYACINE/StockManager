import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Stores/EventStores/SalesStore/delegates.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';

class SalesStore implements Store {
  final Map<String, Store> _stores = {};

  SalesStore(BuildContext context) {
    _registerStores(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _stores[event.subEventType]?.receiveEvent(event: event);
  }

  @override
  void off(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _stores[subEventType]?.off(event: event, listener: listener);
  }

  @override
  void on(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _stores[subEventType]?.on(event: event, listener: listener);
  }

  void _registerStores(BuildContext context) {
    ControllersProvider controllersProvider =
        Provider.of<ControllersProvider>(context);

    DepositStoreDelegate depositDelegate = DepositStoreHandler(
        controllersProvider.recordsLiveModel,
        controllersProvider.stockLiveModel);

    PurchaseStoreDelegate purchaseDelegate = PurchaseStoreHandler(
        controllersProvider.recordsLiveModel,
        controllersProvider.stockLiveModel);

    OrderStoreDelegate orderStoreDelegate = OrderStoreHandler(
        controllersProvider.ordersLiveModel,
        controllersProvider.stockLiveModel);

    _stores[SubEventType.deposit.name] = DepositStore(depositDelegate);
    _stores[SubEventType.purchase.name] = PurchaseStore(purchaseDelegate);
    _stores[SubEventType.order.name] = OrderStore(orderStoreDelegate);
  }
}

class DepositStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  DepositStoreDelegate depositDelegate;

  DepositStore(this.depositDelegate) {
    _registerStringHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event).then((response) {
      if (event.broadcast) {
        for (EventListener listener in _listeners) {
          listener.notifyEventResult(
              event.subEventType ?? event.event, response);
        }
        return;
      }
      if (event.notifyEmitteur) {
        event.listener
            ?.notifyEventResult(event.subEventType ?? event.event, response);
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

  void _registerStringHandlers() {
    _callbacks[DepositEvents.addDeposit.name] = depositDelegate.addDeposit;
    _callbacks[DepositEvents.updateDeposit.name] =
        depositDelegate.updateDeposit;
    _callbacks[DepositEvents.removeDeposit.name] =
        depositDelegate.removeDeposit;

    _callbacks[DepositEvents.addDepositProduct.name] =
        depositDelegate.addDepositProduct;
    _callbacks[DepositEvents.updateDepositProduct.name] =
        depositDelegate.updateDepositProduct;
    _callbacks[DepositEvents.removeDepositProduct.name] =
        depositDelegate.removeDepositProduct;

    _callbacks[DepositEvents.clearDeposit.name] = depositDelegate.clearDeposit;

    _callbacks[DepositEvents.quickSearchDeposit.name] =
        depositDelegate.quickSearchDeposit;
  }
}

class OrderStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  OrderStoreDelegate orderDelegate;

  OrderStore(this.orderDelegate) {
    _registerStringHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event).then((response) {
      if (event.broadcast) {
        for (EventListener listener in _listeners) {
          listener.notifyEventResult(
              event.subEventType ?? event.event, response);
        }
        return;
      }
      if (event.notifyEmitteur) {
        event.listener
            ?.notifyEventResult(event.subEventType ?? event.event, response);
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

  void _registerStringHandlers() {
    _callbacks[OrderEvents.addOrder.name] = orderDelegate.addOrder;
    _callbacks[OrderEvents.updateOrder.name] = orderDelegate.updateOrder;
    _callbacks[OrderEvents.removeOrder.name] = orderDelegate.removeOrder;

    _callbacks[OrderEvents.addOrderProduct.name] =
        orderDelegate.addOrderProduct;
    _callbacks[OrderEvents.updateOrderProduct.name] =
        orderDelegate.updateOrderProduct;
    _callbacks[OrderEvents.removeOrderProduct.name] =
        orderDelegate.removeOrderProduct;

    _callbacks[OrderEvents.searchOrders.name] = orderDelegate.searchOrders;
  }
}

class PurchaseStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  PurchaseStoreDelegate purchaseDelegate;

  PurchaseStore(this.purchaseDelegate) {
    _registerStringHandlers();
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    String target = event.event;
    _callbacks[target]?.call(event).then((response) {
      if (event.broadcast) {
        for (EventListener listener in _listeners) {
          listener.notifyEventResult(target, response);
        }
        return;
      }
      if (event.notifyEmitteur) {
        event.listener?.notifyEventResult(target, response);
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

  void _registerStringHandlers() {
    _callbacks[PurchaseEvents.addPurchase.name] = purchaseDelegate.addPurchase;
    _callbacks[PurchaseEvents.updatePurchase.name] =
        purchaseDelegate.updatePurchase;
    _callbacks[PurchaseEvents.removePurchase.name] =
        purchaseDelegate.removePurchase;

    _callbacks[PurchaseEvents.addPurchaseProduct.name] =
        purchaseDelegate.addPurchaseProduct;
    _callbacks[PurchaseEvents.updatePurchaseProduct.name] =
        purchaseDelegate.updatePurchaseProduct;
    _callbacks[PurchaseEvents.removePurchaseProduct.name] =
        purchaseDelegate.removePurchaseProduct;

    _callbacks[PurchaseEvents.clearPurchase.name] =
        purchaseDelegate.clearPurchase;
  }
}
