import os


class DataHolder:
    def __init__(self, file_name, class_name, base_api, command_api, service_name):
        self.file_name = file_name
        self.class_name = class_name
        self.base_api = base_api
        self.command_api = command_api
        self.service_name = service_name

def generate_command_file(data_holder : DataHolder)  : 

  class_template = """
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/SERVICE_NAME/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class CLASS_NAME extends Command<CLASS_EVENT_DATA, CLASS_RAW_EVENT_DATA,
    CLASS_NAME_RESPONSE> {
  static final eventId = BASE_API.API_COMMAND.index;
  static final eventName = BASE_API.API_COMMAND.name;
  static final serviceId = Services.SERVICES_SERVICE.index;

  CLASS_NAME() : super(eventId, eventName);

  @override
  Future<CLASS_NAME_RESPONSE> handleEvent(CLASS_EVENT_DATA eventData) {
    throw UnimplementedError();
  }

  @override
  Future<CLASS_NAME_RESPONSE> handleRawEvent(
      CLASS_RAW_EVENT_DATA eventData) {
    throw UnimplementedError();
  }
  }

  class CLASS_NAME_RESPONSE extends ServiceEventResponse {
  CLASS_NAME_RESPONSE(super.messageId, super.responseType);
  }

  class CLASS_RAW_EVENT_DATA extends RawServiceEventData {
  CLASS_RAW_EVENT_DATA({required int messageId, required String requesterId})
      : super(messageId, requesterId, CLASS_NAME.eventId);
  }

  class CLASS_EVENT_DATA extends ServiceEventData<CLASS_RAW_EVENT_DATA> {
  CLASS_EVENT_DATA(super.requesterId);

  @override
  CLASS_RAW_EVENT_DATA toRawServiceEventData() {
    return CLASS_RAW_EVENT_DATA(messageId: messageId, requesterId: requesterId);
  }
  }


class CLASS_EVENT extends ServiceEvent<CLASS_NAME_RESPONSE> {
  CLASS_EVENT({required super.eventData, super.callback})
      : super(CLASS_NAME.eventId, CLASS_NAME.eventName, CLASS_NAME.serviceId);
}
  """

  class_template = class_template.replace("CLASS_NAME", data_holder.class_name)
  class_template = class_template.replace("SERVICE_NAME", data_holder.service_name)
  class_template = class_template.replace("BASE_API", data_holder.base_api)
  class_template = class_template.replace("API_COMMAND", data_holder.command_api)
  class_template = class_template.replace(data_holder.class_name+"_RESPONSE", data_holder.class_name+"Response")
  class_template = class_template.replace("CLASS_EVENT_DATA", data_holder.class_name + "EventData")
  class_template = class_template.replace("CLASS_RAW_EVENT_DATA", data_holder.class_name + "RawEventData")
  class_template = class_template.replace("SERVICES_SERVICE", data_holder.service_name )
  class_template = class_template.replace("CLASS_EVENT", data_holder.class_name + "Event")


  output_directory = os.getcwd() + "/"+ data_holder.service_name + "/Commands"
  if not os.path.exists(output_directory):
    os.makedirs(output_directory)

  output_directory +=  "/" + data_holder.file_name+".dart"

  with open(output_directory, "w") as f:
    f.write(class_template)
