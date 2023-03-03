import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Types/i_wrappers.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class UpdateSize extends Command<UpdateSizeEventData, UpdateSizeRawEventData,
    UpdateSizeResponse> {
  static final eventId = StockApi.updateSize.index;
  static final eventName = StockApi.updateSize.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  UpdateSize(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateSizeResponse> handleEvent(UpdateSizeEventData eventData) async{
    final variables = graphql_service.Variables$Mutation$UpdateOneSizes(
      where: graphql_service.Input$SizesWhereUniqueInput(id: eventData.size.instance.sizeId),
      data: graphql_service.Input$SizesUpdateInput(
        size: graphql_service.Input$StringFieldUpdateOperationsInput(
            $set: eventData.size.instance.size),
      ),
    );

    final options = graphql_service.Options$Mutation$UpdateOneSizes(variables: variables);
    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateSizeResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return UpdateSizeResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.success);
  }

  @override
  Future<UpdateSizeResponse> handleRawEvent(UpdateSizeRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateSizeResponse extends ServiceEventResponse {
  UpdateSizeResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateSizeRawEventData extends RawServiceEventData {
  UpdateSizeRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateSize.eventId);
}

class UpdateSizeEventData extends ServiceEventData<UpdateSizeRawEventData> {
  final UpdateRequestWrapper<ModelSize> size;
  UpdateSizeEventData({required this.size, required String requesterId})
      : super(requesterId);

  @override
  UpdateSizeRawEventData toRawServiceEventData() {
    return UpdateSizeRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateSizeEvent extends ServiceEvent<UpdateSizeResponse> {
  UpdateSizeEvent({required super.eventData, super.callback})
      : super(UpdateSize.eventId, UpdateSize.eventName, UpdateSize.serviceId);
}
