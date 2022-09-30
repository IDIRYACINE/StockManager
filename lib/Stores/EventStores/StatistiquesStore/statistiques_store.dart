import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_manager/Application/controllers_provider.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stats.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';

import 'actions.dart';

class StatistiquesStore implements Store , EventListener {
   final List<EventListener> _listeners = [];
  late List<StoreAction> _callbacks;
  late List<StoreReaction> _reactions;


  StatistiquesStore(BuildContext context) {
    _registerHandlers(
        Provider.of<ControllersProvider>(context).statsLiveModel);
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
  void on({String? subEventType,required String event, required EventListener listener}) {
    _listeners.add(listener);
  }

  @override
  void off({String? subEventType,required String event, required EventListener listener}) {
    _listeners.remove(listener);
  }

  void _registerHandlers(StatsLiveDataModel statsLiveModel) {

    EmptyAction emptyAction = EmptyAction();
    _callbacks = List.filled(StatistiquesEvents.values.length, emptyAction);

    SearchStatistiques searchStatistiquesAction = SearchStatistiques(statsLiveModel);
    _callbacks[searchStatistiquesAction.getId()] = searchStatistiquesAction;



    EmptyReaction emptyReaction = EmptyReaction();
    _reactions = List.filled(StatistiquesReactions.values.length, emptyReaction);
    
    UpdateOrderStatistiques updateOrderStatsReaction = UpdateOrderStatistiques(statsLiveModel);
    _reactions[updateOrderStatsReaction.getId()] = updateOrderStatsReaction;


    UpdatePurchaseStatistiques updatePurchaseStatsReaction = UpdatePurchaseStatistiques(statsLiveModel);
    _reactions[updatePurchaseStatsReaction.getId()] = updatePurchaseStatsReaction;
  }
  
  @override
  void notifyEventResult(String event, EventResponse? response) {
    if((event == SalesEvents.addOrder.name) || (event == SalesEvents.removeOrder.name) ){
      _reactions[StatistiquesReactions.updateOrderStatistiques.index].execute(response);
    }
    else{
      _reactions[StatistiquesReactions.updatePurchaseStatistiques.index].execute(response);
    }
  }
}
