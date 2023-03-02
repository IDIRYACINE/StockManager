
  import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

  class UpdateSize extends Command<UpdateSizeEventData, UpdateSizeRawEventData,
    UpdateSizeResponse> {
  static final eventId = StockApi.updateSize.index;
  static final eventName = StockApi.updateSize.name;
  static final serviceId = Services.stockService.index;
  
  final GraphQLClient graphQl;

  UpdateSize(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateSizeResponse> handleEvent(UpdateSizeEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateSizeResponse> handleRawEvent(
      UpdateSizeRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateSizeResponse extends ServiceEventResponse {
  UpdateSizeResponse(super.messageId, super.responseType);
  }

  class UpdateSizeRawEventData extends RawServiceEventData {
  UpdateSizeRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateSize.eventId);
  }

  class UpdateSizeEventData extends ServiceEventData<UpdateSizeRawEventData> {
  final UpdateRequestWrapper<ModelSize> size;
  UpdateSizeEventData({required this.size,required String requesterId}) : super(requesterId);

  @override
  UpdateSizeRawEventData toRawServiceEventData() {
    return UpdateSizeRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class UpdateSizeEvent extends ServiceEvent<UpdateSizeResponse> {
  UpdateSizeEvent({required super.eventData, super.callback})
      : super(UpdateSize.eventId, UpdateSize.eventName, UpdateSize.serviceId);
}
  