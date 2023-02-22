
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class LoadProductModels extends Command<EventData, RawEventData,
    LoadProductModelsResponse> {
  static final eventId = StockApi.loadProductModels.index;
  static final eventName = StockApi.loadProductModels.name;

  LoadProductModels() : super(eventId, eventName);

  @override
  Future<LoadProductModelsResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadProductModelsResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadProductModelsResponse extends ServiceEventResponse {
  LoadProductModelsResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProductModels.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  