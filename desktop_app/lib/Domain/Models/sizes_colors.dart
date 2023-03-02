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
      0
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
      0
    );
  }
}