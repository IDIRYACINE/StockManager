import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/Stores/EventStores/StatistiquesStore/delegates.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_stores.dart';

class StatistiquesStore implements Store {
  final List<EventListener> _listeners = [];
  final Map<String, EventCallback> _callbacks = {};

  late StatistiquesStoreHandler statistiauesDelegate;

  StatistiquesStore(BuildContext context) {
    statistiauesDelegate = StatistiquesStoreHandler(
        Provider.of<ControllersProvider>(context, listen: false)
            .statsLiveModel);
    _registerHandlers();
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
  void on({String? subEventType,required String event, required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off({String? subEventType,required String event, required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerHandlers() {
    _callbacks[StatistiquesEvents.searchStatistiques.name] =
        statistiauesDelegate.searchStatistiques;
  }
}
