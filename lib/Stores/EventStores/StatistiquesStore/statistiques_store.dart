import 'package:flutter/material.dart';
import 'package:stock_manager/Stores/event_center.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'actions.dart';

class StatistiquesStore implements Store, EventListener {
  final List<EventListener> _listeners = [];
  late List<StoreAction> _callbacks;
  late List<StoreReaction> _reactions;

  StatistiquesStore(BuildContext context) {
    _registerHandlers();
    _setup();
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

  @override
  void notifyEventResult(String event, EventResponse? response) {

    if ((event == SalesEvents.addOrder.name) ||
        (event == SalesEvents.removeOrder.name)) {
      _reactions[StatistiquesReactions.updateOrderStatistiques.index]
          .execute(response);
    } else {
      _reactions[StatistiquesReactions.updatePurchaseStatistiques.index]
          .execute(response);
    }
  }

  void _registerHandlers() {
    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(StatistiquesEvents.values.length, emptyAction);

    SearchStatistiques searchStatistiquesAction =
        SearchStatistiques();
    _callbacks[searchStatistiquesAction.getId()] = searchStatistiquesAction;

    EmptyReaction emptyReaction = EmptyReaction();
    _reactions =
        List.filled(StatistiquesReactions.values.length, emptyReaction);

    UpdateOrderStatistiques updateOrderStatsReaction =
        UpdateOrderStatistiques();
    _reactions[updateOrderStatsReaction.getId()] = updateOrderStatsReaction;

    UpdatePurchaseStatistiques updatePurchaseStatsReaction =
        UpdatePurchaseStatistiques();
    _reactions[updatePurchaseStatsReaction.getId()] =
        updatePurchaseStatsReaction;
  }

  void _setup() {
    EventCenter eventCenter = EventCenter.instance;

    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.deposit.name,
        event: DepositEvents.addDeposit.name,
        listener: this);
  }
}
