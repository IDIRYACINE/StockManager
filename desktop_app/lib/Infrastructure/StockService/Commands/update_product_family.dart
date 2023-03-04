import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:stock_manager/Types/i_wrappers.dart';

class UpdateProductFamily extends Command<UpdateProductFamilyEventData,
    UpdateProductFamilyRawEventData, UpdateProductFamilyResponse> {
  static final eventId = StockApi.updateProductFamily.index;
  static final eventName = StockApi.updateProductFamily.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  UpdateProductFamily(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateProductFamilyResponse> handleEvent(
      UpdateProductFamilyEventData eventData) async {
    final data = graphql_service.Input$ProductFamilyUpdateInput(
        name: graphql_service.Input$StringFieldUpdateOperationsInput(
      $set: eventData.family.instance.name,
    ));

    final where = graphql_service.Input$ProductFamilyWhereUniqueInput(
      id: eventData.family.instance.reference,
    );

    final variables = graphql_service.Variables$Mutation$UpdateOneProductFamily(
        data: data, where: where);

    final options = graphql_service.Options$Mutation$UpdateOneProductFamily(
      variables: variables,
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateProductFamilyResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    return UpdateProductFamilyResponse(
      messageId: eventData.messageId,
    );
  }

  @override
  Future<UpdateProductFamilyResponse> handleRawEvent(
      UpdateProductFamilyRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateProductFamilyResponse extends ServiceEventResponse {
  UpdateProductFamilyResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateProductFamilyRawEventData extends RawServiceEventData {
  UpdateProductFamilyRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProductFamily.eventId);
}

class UpdateProductFamilyEventData
    extends ServiceEventData<UpdateProductFamilyRawEventData> {
  final UpdateRequestWrapper<ProductFamily> family;

  UpdateProductFamilyEventData(
      {required String requesterId, required this.family})
      : super(requesterId);

  @override
  UpdateProductFamilyRawEventData toRawServiceEventData() {
    return UpdateProductFamilyRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateProductFamilyEvent
    extends ServiceEvent<UpdateProductFamilyResponse> {
  UpdateProductFamilyEvent({required super.eventData, super.callback})
      : super(UpdateProductFamily.eventId, UpdateProductFamily.eventName,
            UpdateProductFamily.serviceId);
}
