
  import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class LoadAllSizes extends Command<LoadAllSizesEventData, LoadAllSizesRawEventData,
    LoadAllSizesResponse> {
  static final eventId = StockApi.loadAllSizes.index;
  static final eventName = StockApi.loadAllSizes.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  LoadAllSizes(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadAllSizesResponse> handleEvent(LoadAllSizesEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadAllSizesResponse> handleRawEvent(
      LoadAllSizesRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadAllSizesResponse extends ServiceEventResponse {
    final List<ModelSize> sizes;
  LoadAllSizesResponse({required int messageId, required this.sizes,  ServiceEventResponseStatus status =ServiceEventResponseStatus.success })
      : super(messageId, status);
  }

  class LoadAllSizesRawEventData extends RawServiceEventData {
  LoadAllSizesRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadAllSizes.eventId);
  }

  class LoadAllSizesEventData extends ServiceEventData<LoadAllSizesRawEventData> {
  LoadAllSizesEventData({required String requesterId}) : super(requesterId);

  @override
  LoadAllSizesRawEventData toRawServiceEventData() {
    return LoadAllSizesRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class LoadAllSizesEvent extends ServiceEvent<LoadAllSizesResponse> {
  LoadAllSizesEvent({required super.eventData, super.callback})
      : super(LoadAllSizes.eventId, LoadAllSizes.eventName, LoadAllSizes.serviceId);
}
  