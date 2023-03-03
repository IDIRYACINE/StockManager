import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Infrastructure/RegionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:graphql/client.dart';

class DeleteCity extends Command<DeleteCityEventData, DeleteCityRawEventData,
    DeleteCityResponse> {
  static final eventId = RegionApi.deleteCity.index;
  static final eventName = RegionApi.deleteCity.name;
  static final serviceId = Services.regionService.index;

  final GraphQLClient graphQl;
  DeleteCity(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteCityResponse> handleEvent(DeleteCityEventData eventData) async {
    final city = eventData.city;

    final where = graphql_service.Input$CityWhereUniqueInput(
      city_id: city.cityId,
    );

    final mutationVariables =
        graphql_service.Variables$Mutation$DeleteOneCity(where: where);

    final MutationOptions options =
        graphql_service.Options$Mutation$DeleteOneCity(
            variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteCityResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return DeleteCityResponse(messageId: eventData.messageId);
  }

  @override
  Future<DeleteCityResponse> handleRawEvent(DeleteCityRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteCityResponse extends ServiceEventResponse {
  DeleteCityResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteCityRawEventData extends RawServiceEventData {
  DeleteCityRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteCity.eventId);
}

class DeleteCityEventData extends ServiceEventData<DeleteCityRawEventData> {
  final City city;
  DeleteCityEventData({required String requesterId, required this.city})
      : super(requesterId);

  @override
  DeleteCityRawEventData toRawServiceEventData() {
    return DeleteCityRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteCityEvent extends ServiceEvent<DeleteCityResponse> {
  DeleteCityEvent({required super.eventData, super.callback})
      : super(DeleteCity.eventId, DeleteCity.eventName, DeleteCity.serviceId);
}
