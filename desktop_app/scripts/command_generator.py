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

  class CLASS_NAME extends Command<EventData, RawEventData,
    CLASS_NAME_RESPONSE> {
  static final eventId = BASE_API.API_COMMAND.index;
  static final eventName = BASE_API.API_COMMAND.name;

  CLASS_NAME() : super(eventId, eventName);

  @override
  Future<CLASS_NAME_RESPONSE> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<CLASS_NAME_RESPONSE> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class CLASS_NAME_RESPONSE extends ServiceEventResponse {
  CLASS_NAME_RESPONSE(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, CLASS_NAME.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  """

  class_template = class_template.replace("CLASS_NAME", data_holder.class_name)
  class_template = class_template.replace("SERVICE_NAME", data_holder.service_name)
  class_template = class_template.replace("BASE_API", data_holder.base_api)
  class_template = class_template.replace("API_COMMAND", data_holder.command_api)
  class_template = class_template.replace(data_holder.class_name+"_RESPONSE", data_holder.class_name+"Response")


  output_directory = os.getcwd() + "/"+ data_holder.service_name + "/Commands"
  if not os.path.exists(output_directory):
    os.makedirs(output_directory)

  output_directory +=  "/" + data_holder.file_name+".dart"

  with open(output_directory, "w") as f:
    f.write(class_template)
