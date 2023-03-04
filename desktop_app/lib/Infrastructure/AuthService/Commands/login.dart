import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/AuthService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class LoginEvent extends Command<LoginEventEventData, LoginEventRawEventData,
    LoginEventResponse> {
  static final eventId = AuthApi.login.index;
  static final eventName = AuthApi.login.name;
  static final serviceId = Services.authService.index;

  final GraphQLClient graphQL;

  LoginEvent(this.graphQL) : super(eventId, eventName);

  @override
  Future<LoginEventResponse> handleEvent(LoginEventEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoginEventResponse> handleRawEvent(LoginEventRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoginEventResponse extends ServiceEventResponse {
  LoginEventResponse(super.messageId, super.responseType);
}

class LoginEventRawEventData extends RawServiceEventData {
  LoginEventRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoginEvent.eventId);
}

class LoginEventEventData extends ServiceEventData<LoginEventRawEventData> {
  final String username;
  final String password;
  LoginEventEventData({required String requesterId, required this.username,required this.password})
      : super(requesterId);

  @override
  LoginEventRawEventData toRawServiceEventData() {
    return LoginEventRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoginEventEvent extends ServiceEvent<LoginEventResponse> {
  LoginEventEvent({required super.eventData, super.callback})
      : super(LoginEvent.eventId, LoginEvent.eventName, LoginEvent.serviceId);
}
