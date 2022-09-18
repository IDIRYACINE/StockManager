import 'package:stock_manager/Stores/event_center.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_stores.dart';

abstract class DepositEmitter {
  static void emitDepositEvent(DepositEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {

    StoreEvent event = StoreEvent(
        event: events.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        subEventType: SubEventType.deposit.name,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.sales.name, event: event);
  }
}

abstract class PurchaseEmitter {
  static void emitPurchaseEvent(PurchaseEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {
    StoreEvent event = StoreEvent(
        event: events.name,
        subEventType: SubEventType.purchase.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.sales.name, event: event);
  }
}

abstract class OrderEmiter {
  static void emitOrderEvent(OrderEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {
    StoreEvent event = StoreEvent(
        event: events.name,
        subEventType: SubEventType.order.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.sales.name, event: event);
  }
}


abstract class StockProductEmiter {

  static void emitProductEvent(StockProductEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {

    StoreEvent event = StoreEvent(
        event: events.name,
        subEventType: SubEventType.product.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.inventory.name, event: event);
  }

}


abstract class StockCategroyEmiter {

  static void emitCategoryEvent(StockCategoryEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {
        
    StoreEvent event = StoreEvent(
        event: events.name,
        subEventType: SubEventType.category.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.inventory.name, event: event);
  }

}


abstract class RecordEmiter {

  static void emitRecordEvent(RecordEvents events,
      {Object? data, bool broadcast = false, bool notifyEmitteur = false}) {
        
    StoreEvent event = StoreEvent(
        event: events.name,
        notifyEmitteur: notifyEmitteur,
        broadcast: broadcast,
        data: data);

    EventCenter.instance.emit(eventType: EventTypes.record.name, event: event);
  }

}