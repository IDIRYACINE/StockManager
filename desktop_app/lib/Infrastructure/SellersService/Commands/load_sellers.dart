
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/SellersService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class LoadSellers extends Command<LoadSellersEventData, LoadSellersRawEventData,
    LoadSellersResponse> {
  static final eventId = SellersApi.loadSellers.index;
  static final eventName = SellersApi.loadSellers.name;
  static final serviceId = Services.SellersService.index;

  LoadSellers() : super(eventId, eventName);

  @override
  Future<LoadSellersResponse> handleEvent(LoadSellersEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadSellersResponse> handleRawEvent(
      LoadSellersRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadSellersResponse extends ServiceEventResponse {
  LoadSellersResponse(super.messageId, super.responseType);
  }

  class LoadSellersRawEventData extends RawServiceEventData {
  LoadSellersRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadSellers.eventId);
  }

  class LoadSellersEventData extends ServiceEventData<LoadSellersRawEventData> {
  LoadSellersEventData(super.requesterId);

  @override
  LoadSellersRawEventData toRawServiceEventData() {
    return LoadSellersRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class LoadSellersEvent extends ServiceEvent<LoadSellersResponse> {
  LoadSellersEvent({required super.eventData, super.callback})
      : super(LoadSellers.eventId, LoadSellers.eventName, LoadSellers.serviceId);
}
  