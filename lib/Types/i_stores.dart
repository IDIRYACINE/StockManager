
typedef EventCallback = EventResponse Function(Object? data);

class StoreEvent {
  StoreEvent(
      {this.subEventType,
      required this.event,
      this.listener,
      this.broadcast = true,
      this.data});

  String? subEventType;

  String event;

  EventListener? listener;

  bool broadcast;

  Object? data;
}

class EventResponse {
  EventResponse({required this.event, this.status, this.data});
  String event ;
  String? status;
  Object? data;
}


abstract class EventListener {
  void notifyEventResult(String event, EventResponse? response);
}

abstract class Store {
  void emit({required StoreEvent event});

  void on(
      {
      String? subEventType,
      required String event,
      required EventListener listener});

  void off(
      {
      String? subEventType,
      required String event,
      required EventListener listener});
}


abstract class BaseStore {

  void receiveEvent({required StoreEvent event});

  void on(
      {
      required String event,
      required EventListener listener});

  void off(
      {
      required String event,
      required EventListener listener});
}


abstract class IEventStore {
  void emit({required String eventType, required StoreEvent event});

  void on(
      {required String eventType,
      String? subEventType,
      required String event,
      required EventListener listener});

  void off(
      {required String eventType,
      String? subEventType,
      required String event,
      required EventListener listener});

  void registerStore({required String eventType, required Store store});
  void unregisterStore({required String eventType});
}
