import 'package:flutter/cupertino.dart';
import 'package:stock_manager/Stores/EventStores/SalesStore/sales_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_stores.dart';

class EventCenter implements IEventStore {

  EventCenter._();

  factory EventCenter() {
    _instance ??= EventCenter._();
    return _instance!;
  }

  static EventCenter? _instance;

  final Map<String, Store> _stores = {};
  
  @override
  void emit({required String eventType, required StoreEvent event}) {
    _stores[eventType]?.emit(event: event);
  }
  
  @override
  void off({required String eventType, String? subEventType, required String event, required EventListener listener}) {
    _stores[eventType]?.off(subEventType: subEventType, event: event, listener: listener);
  }
  
  @override
  void on({required String eventType, String? subEventType, required String event, required EventListener listener}) {
    _stores[eventType]?.on(subEventType: subEventType, event: event, listener: listener);
  }
  
  @override
  void registerStore({required String eventType, required Store store}) {
    _stores.putIfAbsent(eventType, () => store);
  }
  
  @override
  void unregisterStore({required String eventType}) {
    _stores.remove(eventType);
  }

  static void initialise(BuildContext context){
    EventCenter center = EventCenter();

    SalesStore salesStore = SalesStore(context);
    center.registerStore(eventType: EventTypes.sales.name, store: salesStore);


  }

}
