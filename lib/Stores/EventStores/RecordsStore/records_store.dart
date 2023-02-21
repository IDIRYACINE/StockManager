import 'package:flutter/material.dart';
import 'package:stock_manager/Stores/EventStores/RecordsStore/actions.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';

class RecordsStore implements Store {
  final List<EventListener> _listeners = [];
  late List<StoreAction> _callbacks;

  RecordsStore(BuildContext context) {
    _registerHandlers(context);
  }

  @override
  void receiveEvent({required StoreEvent event}) {
    _callbacks[event.eventId].execute(event).then((response) {
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
  void off(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.remove(listener);
  }

  @override
  void on(
      {String? subEventType,
      required String event,
      required EventListener listener}) {
    _listeners.add(listener);
  }

  void _registerHandlers(BuildContext context) {

    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(RecordEvents.values.length, emptyAction);

    SearchRecords searchRecords =
        SearchRecords();
    _callbacks[searchRecords.getId()] = searchRecords;
  }
}
