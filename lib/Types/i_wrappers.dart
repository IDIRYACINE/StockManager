


class UpdateRequestWrapper<T>{
  final T instance;
  final int? index;
  final Map<String,dynamic> updatedField;

  UpdateRequestWrapper(this.instance, this.updatedField,this.index);
}

class RemoveRequestWrapper<T>{
  final T instance;
  final int? index;

  RemoveRequestWrapper(this.instance,this.index);
}