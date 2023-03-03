import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Infrastructure/RegionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:graphql/client.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class UpdateCity extends Command<UpdateCityEventData, UpdateCityRawEventData,
    UpdateCityResponse> {
  static final eventId = RegionApi.updateCity.index;
  static final eventName = RegionApi.updateCity.name;
  static final serviceId = Services.regionService.index;

  final GraphQLClient graphQl;

  UpdateCity(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateCityResponse> handleEvent(UpdateCityEventData eventData) async {
    final city = eventData.city.instance;

    final where =
        graphql_service.Input$CityWhereUniqueInput(city_id: city.cityId);

    final input = graphql_service.Input$CityUpdateInput(
      city_name: graphql_service.Input$StringFieldUpdateOperationsInput(
          $set: city.cityName),
    );

    final mutationVariables = graphql_service.Variables$Mutation$UpdateOneCity(
        where: where, data: input);

    final MutationOptions options =
        graphql_service.Options$Mutation$UpdateOneCity(
            variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateCityResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return UpdateCityResponse(messageId: eventData.messageId);
  }

  @override
  Future<UpdateCityResponse> handleRawEvent(UpdateCityRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateCityResponse extends ServiceEventResponse {
  UpdateCityResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateCityRawEventData extends RawServiceEventData {
  UpdateCityRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateCity.eventId);
}

class UpdateCityEventData extends ServiceEventData<UpdateCityRawEventData> {
  final UpdateRequestWrapper<City> city;
  UpdateCityEventData({required String requesterId, required this.city})
      : super(requesterId);

  @override
  UpdateCityRawEventData toRawServiceEventData() {
    return UpdateCityRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateCityEvent extends ServiceEvent<UpdateCityResponse> {
  UpdateCityEvent({required super.eventData, super.callback})
      : super(UpdateCity.eventId, UpdateCity.eventName, UpdateCity.serviceId);
}
