import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stats.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/models_stats.dart';
import 'package:stock_manager/DataModels/models_utility.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Stores/event_center.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/special_enums.dart';

class StatistiquesStoreHandler
    implements StatistiquesStoreDelegate, EventListener {
  final Map<String, EventCallback> _reactions = {};
  final StatsLiveDataModel statsLiveModel;
  final DateTime _date = Utility.getMonth();

  StatistiquesStoreHandler(this.statsLiveModel) {
    _registerHandlers();
    _setup();
  }

  @override
  Future<void> notifyEventResult(String event, EventResponse? response) async {
    _reactions[event]?.call(response);
  }

  @override
  Future<void> searchStatistiques(Object? data) async {
    // TODO: implement searchStatistiques
    throw UnimplementedError();
  }

  @override
  Future<void> updatePurchaseStatistiques(Object? data) async {
    EventResponse response = data as EventResponse;

    Record record = response.data as Record;

    int modifier = _isAddOrRemoveEvent(response.event);
    StatsProductChanges productStatsChanges = _recordProductsToStats(record,modifier);

    statsLiveModel.updatePurchaseStats(productStatsChanges);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: productStatsChanges,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.updatePurchaseStatistiques,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> updateOrderStatistiques(Object? data) async{
    EventResponse response = data as EventResponse;

    Order order = response.data as Order;

    int modifier = _isAddOrRemoveEvent(response.event);
    StatsProductChanges productStatsChanges = _orderProductsToStats(order,modifier);

    statsLiveModel.updateOrderStats(productStatsChanges);

    Map<ServicesData, dynamic> requestData = {
      ServicesData.instance: productStatsChanges,
    };

    ServiceMessage message = ServiceMessage(
        data: requestData,
        event: DatabaseEvent.updatePurchaseStatistiques,
        service: AppServices.database);

    ServicesStore.instance.sendMessage(message);
  }

  @override
  Future<void> updateSellersStatistiques(Object? data) async {
    // TODO: implement updateSellersStatistiques
    throw UnimplementedError();
  }

  void _registerHandlers() {
    _reactions[DepositEvents.addDeposit.name] = updatePurchaseStatistiques;
    _reactions[DepositEvents.removeDeposit.name] = updatePurchaseStatistiques;

    _reactions[PurchaseEvents.addPurchase.name] = updatePurchaseStatistiques;
    _reactions[PurchaseEvents.removePurchase.name] = updatePurchaseStatistiques;

    _reactions[OrderEvents.addOrder.name] = updateOrderStatistiques;
    _reactions[OrderEvents.removeOrder.name] = updateOrderStatistiques;
  }

  void _setup() {
    EventCenter eventCenter = EventCenter.instance;

    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.deposit.name,
        event: DepositEvents.addDeposit.name,
        listener: this);
    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.deposit.name,
        event: DepositEvents.removeDeposit.name,
        listener: this);

    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.purchase.name,
        event: PurchaseEvents.addPurchase.name,
        listener: this);
    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.purchase.name,
        event: PurchaseEvents.removePurchase.name,
        listener: this);

    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.order.name,
        event: OrderEvents.addOrder.name,
        listener: this);
    eventCenter.on(
        eventType: EventTypes.sales.name,
        subEventType: SubEventType.order.name,
        event: OrderEvents.removeOrder.name,
        listener: this);
  }

  StatsProductChanges _recordProductsToStats(Record record , int modifier) {
    Map<String, StatsProduct> statsProducts = {};
    double profitChange = 0;
    int productCounts = 0;

    record.products.forEach((timestamp, recordProduct) {
      StatsProduct? stats = statsProducts[recordProduct.reference];
      if (stats != null) {
        stats.totalQuantity += (1 * modifier);
        stats.profit += (recordProduct.deposit * modifier);
      } else {
        stats = StatsProduct(
            reference: recordProduct.reference,
            name: recordProduct.product,
            totalQuantity: 1,
            profit: recordProduct.deposit);
        statsProducts[recordProduct.reference] = stats;
      }
      profitChange += recordProduct.deposit;
      productCounts += (1 * modifier);
    });

    return StatsProductChanges(
        statsProducts: statsProducts,
        profitChange: profitChange,
        sellerCode: record.sellerName,
        productCounts: productCounts,
        sellerName: record.sellerName);
  }

  StatsProductChanges _orderProductsToStats(Order order, int modifier) {}

  
  int _isAddOrRemoveEvent(String event) {
    int modifier = 1;
    if (event.contains("remove")) {
      modifier = -1;
    }
    return modifier;
  }
  
}
