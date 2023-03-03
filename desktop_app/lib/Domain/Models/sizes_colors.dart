import 'package:stock_manager/Application/Utility/utility.dart';

class ModelColor{
  String color;
  int colorId;

  ModelColor(this.color, this.colorId);

  ModelColor copyWith({String? color}){
    return ModelColor(
      color ?? this.color,
      colorId 
    );
  }

  factory ModelColor.defaultInstance() {
    return ModelColor(
      'Default Color',
      Utility.getTimeStamp()
    );
  }

}

class ModelSize{
  String size;
  int sizeId;

  ModelSize(this.size, this.sizeId);

  ModelSize copyWith({String? size}){
    return ModelSize(
      size ?? this.size,
      sizeId 
    );
  }

   factory ModelSize.defaultInstance() {
    return ModelSize(
      'Default Size',
      Utility.getTimeStamp()
    );
  }
}

enum _ColorFields{color , colorId}
extension _ApiColorFields on _ColorFields{
  String get name {
    switch(this){
      case _ColorFields.color:
        return 'color';
      case _ColorFields.colorId:
        return 'id';
    }
  }
}

enum _SizeFields{size , sizeId}
extension _ApiSizeFields on _SizeFields{
  String get name {
    switch(this){
      case _SizeFields.size:
        return 'size';
      case _SizeFields.sizeId:
        return 'id';
    }
  }
}

ModelColor colorFromJson(Map<String, dynamic> json) {
  return ModelColor(
    json[_ColorFields.color.name] as String,
    json[_ColorFields.colorId.name] as int,
  );
}

List<ModelColor> colorsFromJsonList(List<dynamic> json) {
  return json.map((e) => colorFromJson(e as Map<String, dynamic>)).toList();
}

ModelSize sizeFromJson(Map<String, dynamic> json) {
  return ModelSize(
    json[_SizeFields.size.name] as String,
    json[_SizeFields.sizeId.name] as int,
  );
}

List<ModelSize> sizesFromJsonList(List<dynamic> json) {
  return json.map((e) => sizeFromJson(e as Map<String, dynamic>)).toList();
}