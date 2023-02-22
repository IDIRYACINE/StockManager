import argparse
import os

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
parser = argparse.ArgumentParser(description="Generate a new command class")

# Add the input and output file arguments
parser.add_argument("file_name", help="file name")
parser.add_argument("class_name", help="class name")
parser.add_argument("base_api", help="api enum name")
parser.add_argument("command_api", help="command enum name")
parser.add_argument("service_name", help="service directory name")

# Parse the arguments
args = parser.parse_args()

# Access the input and output file paths
file_name = args.input_file

class_name = args.output_file
service_name = args.service_name
base_api = args.base_api
command_api = args.command_api


# Replace the placeholders with the desired values
class_template = class_template.replace("CLASS_NAME", class_name)
class_template = class_template.replace("SERVICE_NAME", service_name)
class_template = class_template.replace("BASE_API", base_api)
class_template = class_template.replace("API_COMMAND", command_api)
class_template = class_template.replace("CLASS_NAME_RESPONSE", class_name+"Response")


# Write the modified class to a new file
output_directory = os.getcwd()
output_directory +=  "/"+ service_name + "/Commands/" + file_name+".dart"

with open(output_directory, "w") as f:
    f.write(class_template)
