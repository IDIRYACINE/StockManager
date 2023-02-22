
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class LoadProductModels extends Command<LoadProductModelsEventData, LoadProductModelsRawEventData,
    LoadProductModelsResponse> {
  static final eventId = StockApi.loadProductModels.index;
  static final eventName = StockApi.loadProductModels.name;
  static final serviceId = Services.stockService.index;

  LoadProductModels() : super(eventId, eventName);

  @override
  Future<LoadProductModelsResponse> handleEvent(LoadProductModelsEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadProductModelsResponse> handleRawEvent(
      LoadProductModelsRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadProductModelsResponse extends ServiceEventResponse {
  LoadProductModelsResponse(super.messageId, super.responseType);
  }

  class LoadProductModelsRawEventData extends RawServiceEventData {
  LoadProductModelsRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProductModels.eventId);
  }

  class LoadProductModelsEventData extends ServiceEventData<LoadProductModelsRawEventData> {
  LoadProductModelsEventData(super.requesterId);

  @override
  LoadProductModelsRawEventData toRawServiceEventData() {
    return LoadProductModelsRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class LoadProductModelsEvent extends ServiceEvent<LoadProductModelsResponse> {
  LoadProductModelsEvent({required super.eventData, super.callback})
      : super(LoadProductModels.eventId, LoadProductModels.eventName, LoadProductModels.serviceId);
}
  