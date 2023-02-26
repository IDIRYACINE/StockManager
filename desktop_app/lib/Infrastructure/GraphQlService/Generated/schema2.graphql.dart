import 'schema1.graphql.dart';
import 'schema3.graphql.dart';
import 'schema6.graphql.dart';
import 'schema7.graphql.dart';

class Input$ProductsCreateWithoutFamilyInput {
  factory Input$ProductsCreateWithoutFamilyInput({
    required int reference,
    required String name,
    required double buyingPrice,
    required double sellingPrice,
    required String description,
    required String picture,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      Input$ProductsCreateWithoutFamilyInput._({
        r'reference': reference,
        r'name': name,
        r'buyingPrice': buyingPrice,
        r'sellingPrice': sellingPrice,
        r'description': description,
        r'picture': picture,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsCreateWithoutFamilyInput._(this._$data);

  factory Input$ProductsCreateWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reference = data['reference'];
    result$data['reference'] = (l$reference as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$buyingPrice = data['buyingPrice'];
    result$data['buyingPrice'] = (l$buyingPrice as num).toDouble();
    final l$sellingPrice = data['sellingPrice'];
    result$data['sellingPrice'] = (l$sellingPrice as num).toDouble();
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelCreateNestedManyWithoutProductInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductCreateNestedManyWithoutProductInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsCreateWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get reference => (_$data['reference'] as int);
  String get name => (_$data['name'] as String);
  double get buyingPrice => (_$data['buyingPrice'] as double);
  double get sellingPrice => (_$data['sellingPrice'] as double);
  String get description => (_$data['description'] as String);
  String get picture => (_$data['picture'] as String);
  Input$ProductModelCreateNestedManyWithoutProductInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelCreateNestedManyWithoutProductInput?);
  Input$TransactionProductCreateNestedManyWithoutProductInput?
      get TransactionProduct => (_$data['TransactionProduct']
          as Input$TransactionProductCreateNestedManyWithoutProductInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reference = reference;
    result$data['reference'] = l$reference;
    final l$name = name;
    result$data['name'] = l$name;
    final l$buyingPrice = buyingPrice;
    result$data['buyingPrice'] = l$buyingPrice;
    final l$sellingPrice = sellingPrice;
    result$data['sellingPrice'] = l$sellingPrice;
    final l$description = description;
    result$data['description'] = l$description;
    final l$picture = picture;
    result$data['picture'] = l$picture;
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsCreateWithoutFamilyInput<
          Input$ProductsCreateWithoutFamilyInput>
      get copyWith => CopyWith$Input$ProductsCreateWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      l$reference,
      l$name,
      l$buyingPrice,
      l$sellingPrice,
      l$description,
      l$picture,
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> {
  factory CopyWith$Input$ProductsCreateWithoutFamilyInput(
    Input$ProductsCreateWithoutFamilyInput instance,
    TRes Function(Input$ProductsCreateWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateWithoutFamilyInput;

  factory CopyWith$Input$ProductsCreateWithoutFamilyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateWithoutFamilyInput;

  TRes call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsCreateWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsCreateWithoutFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsCreateWithoutFamilyInput._({
        ..._instance._$data,
        if (reference != _undefined && reference != null)
          'reference': (reference as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (buyingPrice != _undefined && buyingPrice != null)
          'buyingPrice': (buyingPrice as double),
        if (sellingPrice != _undefined && sellingPrice != null)
          'sellingPrice': (sellingPrice as double),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelCreateNestedManyWithoutProductInput?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductCreateNestedManyWithoutProductInput?),
      }));
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateWithoutFamilyInput(this._res);

  TRes _res;

  call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
              _res);
}

class Input$ProductModelCreateNestedManyWithoutProductInput {
  factory Input$ProductModelCreateNestedManyWithoutProductInput({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      Input$ProductModelCreateNestedManyWithoutProductInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductModelCreateNestedManyWithoutProductInput._(this._$data);

  factory Input$ProductModelCreateNestedManyWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutProductInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutProductInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductModelCreateNestedManyWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutProductInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutProductInput>?);
  List<Input$ProductModelCreateOrConnectWithoutProductInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutProductInput>?);
  List<Input$ProductModelWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductModelWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<
          Input$ProductModelCreateNestedManyWithoutProductInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateNestedManyWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput(
    Input$ProductModelCreateNestedManyWithoutProductInput instance,
    TRes Function(Input$ProductModelCreateNestedManyWithoutProductInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutProductInput;

  factory CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutProductInput;

  TRes call({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutProductInput<
                      Input$ProductModelCreateWithoutProductInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
                      Input$ProductModelCreateOrConnectWithoutProductInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateNestedManyWithoutProductInput _instance;

  final TRes Function(Input$ProductModelCreateNestedManyWithoutProductInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductModelCreateNestedManyWithoutProductInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$ProductModelCreateWithoutProductInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutProductInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductModelWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutProductInput<
                          Input$ProductModelCreateWithoutProductInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutProductInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
                          Input$ProductModelCreateOrConnectWithoutProductInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutProductInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$ProductModelCreateWithoutProductInput {
  factory Input$ProductModelCreateWithoutProductInput({
    required int quantity,
    required Input$SizesCreateNestedOneWithoutProductModelInput size,
    required Input$ColorsCreateNestedOneWithoutProductModelInput color,
  }) =>
      Input$ProductModelCreateWithoutProductInput._({
        r'quantity': quantity,
        r'size': size,
        r'color': color,
      });

  Input$ProductModelCreateWithoutProductInput._(this._$data);

  factory Input$ProductModelCreateWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$size = data['size'];
    result$data['size'] =
        Input$SizesCreateNestedOneWithoutProductModelInput.fromJson(
            (l$size as Map<String, dynamic>));
    final l$color = data['color'];
    result$data['color'] =
        Input$ColorsCreateNestedOneWithoutProductModelInput.fromJson(
            (l$color as Map<String, dynamic>));
    return Input$ProductModelCreateWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  Input$SizesCreateNestedOneWithoutProductModelInput get size =>
      (_$data['size'] as Input$SizesCreateNestedOneWithoutProductModelInput);
  Input$ColorsCreateNestedOneWithoutProductModelInput get color =>
      (_$data['color'] as Input$ColorsCreateNestedOneWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$size = size;
    result$data['size'] = l$size.toJson();
    final l$color = color;
    result$data['color'] = l$color.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateWithoutProductInput<
          Input$ProductModelCreateWithoutProductInput>
      get copyWith => CopyWith$Input$ProductModelCreateWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$size = size;
    final l$color = color;
    return Object.hashAll([
      l$quantity,
      l$size,
      l$color,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> {
  factory CopyWith$Input$ProductModelCreateWithoutProductInput(
    Input$ProductModelCreateWithoutProductInput instance,
    TRes Function(Input$ProductModelCreateWithoutProductInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateWithoutProductInput;

  factory CopyWith$Input$ProductModelCreateWithoutProductInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateWithoutProductInput;

  TRes call({
    int? quantity,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  });
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color;
}

class _CopyWithImpl$Input$ProductModelCreateWithoutProductInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateWithoutProductInput _instance;

  final TRes Function(Input$ProductModelCreateWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelCreateWithoutProductInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (size != _undefined && size != null)
          'size': (size as Input$SizesCreateNestedOneWithoutProductModelInput),
        if (color != _undefined && color != null)
          'color':
              (color as Input$ColorsCreateNestedOneWithoutProductModelInput),
      }));
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color {
    final local$color = _instance.color;
    return CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput(
        local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateWithoutProductInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateWithoutProductInput(this._res);

  TRes _res;

  call({
    int? quantity,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes>
      get color =>
          CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput.stub(
              _res);
}

class Input$ColorsCreateNestedOneWithoutProductModelInput {
  factory Input$ColorsCreateNestedOneWithoutProductModelInput({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsWhereUniqueInput? connect,
  }) =>
      Input$ColorsCreateNestedOneWithoutProductModelInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ColorsCreateNestedOneWithoutProductModelInput._(this._$data);

  factory Input$ColorsCreateNestedOneWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ColorsCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ColorsCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ColorsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$ColorsCreateNestedOneWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$ColorsCreateWithoutProductModelInput?);
  Input$ColorsCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ColorsCreateOrConnectWithoutProductModelInput?);
  Input$ColorsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ColorsWhereUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<
          Input$ColorsCreateNestedOneWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsCreateNestedOneWithoutProductModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput(
    Input$ColorsCreateNestedOneWithoutProductModelInput instance,
    TRes Function(Input$ColorsCreateNestedOneWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ColorsCreateNestedOneWithoutProductModelInput;

  factory CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ColorsCreateNestedOneWithoutProductModelInput;

  TRes call({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsWhereUniqueInput? connect,
  });
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ColorsCreateNestedOneWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ColorsCreateNestedOneWithoutProductModelInput _instance;

  final TRes Function(Input$ColorsCreateNestedOneWithoutProductModelInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ColorsCreateNestedOneWithoutProductModelInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ColorsCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ColorsCreateOrConnectWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ColorsWhereUniqueInput?),
      }));
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$ColorsCreateNestedOneWithoutProductModelInput<
        TRes>
    implements
        CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ColorsCreateNestedOneWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput.stub(
              _res);
}

class Input$ColorsCreateWithoutProductModelInput {
  factory Input$ColorsCreateWithoutProductModelInput({
    required int id,
    required String color,
  }) =>
      Input$ColorsCreateWithoutProductModelInput._({
        r'id': id,
        r'color': color,
      });

  Input$ColorsCreateWithoutProductModelInput._(this._$data);

  factory Input$ColorsCreateWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$color = data['color'];
    result$data['color'] = (l$color as String);
    return Input$ColorsCreateWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String get color => (_$data['color'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$color = color;
    result$data['color'] = l$color;
    return result$data;
  }

  CopyWith$Input$ColorsCreateWithoutProductModelInput<
          Input$ColorsCreateWithoutProductModelInput>
      get copyWith => CopyWith$Input$ColorsCreateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsCreateWithoutProductModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      l$id,
      l$color,
    ]);
  }
}

abstract class CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ColorsCreateWithoutProductModelInput(
    Input$ColorsCreateWithoutProductModelInput instance,
    TRes Function(Input$ColorsCreateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ColorsCreateWithoutProductModelInput;

  factory CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsCreateWithoutProductModelInput;

  TRes call({
    int? id,
    String? color,
  });
}

class _CopyWithImpl$Input$ColorsCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ColorsCreateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ColorsCreateWithoutProductModelInput _instance;

  final TRes Function(Input$ColorsCreateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsCreateWithoutProductModelInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (color != _undefined && color != null) 'color': (color as String),
      }));
}

class _CopyWithStubImpl$Input$ColorsCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ColorsCreateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    int? id,
    String? color,
  }) =>
      _res;
}

class Input$ColorsCreateOrConnectWithoutProductModelInput {
  factory Input$ColorsCreateOrConnectWithoutProductModelInput({
    required Input$ColorsWhereUniqueInput where,
    required Input$ColorsCreateWithoutProductModelInput create,
  }) =>
      Input$ColorsCreateOrConnectWithoutProductModelInput._({
        r'where': where,
        r'create': create,
      });

  Input$ColorsCreateOrConnectWithoutProductModelInput._(this._$data);

  factory Input$ColorsCreateOrConnectWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ColorsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ColorsCreateWithoutProductModelInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ColorsCreateOrConnectWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsWhereUniqueInput get where =>
      (_$data['where'] as Input$ColorsWhereUniqueInput);
  Input$ColorsCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$ColorsCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<
          Input$ColorsCreateOrConnectWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsCreateOrConnectWithoutProductModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput(
    Input$ColorsCreateOrConnectWithoutProductModelInput instance,
    TRes Function(Input$ColorsCreateOrConnectWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ColorsCreateOrConnectWithoutProductModelInput;

  factory CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ColorsCreateOrConnectWithoutProductModelInput;

  TRes call({
    Input$ColorsWhereUniqueInput? where,
    Input$ColorsCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ColorsCreateOrConnectWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ColorsCreateOrConnectWithoutProductModelInput _instance;

  final TRes Function(Input$ColorsCreateOrConnectWithoutProductModelInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ColorsCreateOrConnectWithoutProductModelInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ColorsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ColorsCreateWithoutProductModelInput),
      }));
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ColorsCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ColorsCreateOrConnectWithoutProductModelInput<
        TRes>
    implements
        CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ColorsCreateOrConnectWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$ColorsWhereUniqueInput? where,
    Input$ColorsCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(_res);
}

class Input$ProductModelCreateOrConnectWithoutProductInput {
  factory Input$ProductModelCreateOrConnectWithoutProductInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelCreateWithoutProductInput create,
  }) =>
      Input$ProductModelCreateOrConnectWithoutProductInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductModelCreateOrConnectWithoutProductInput._(this._$data);

  factory Input$ProductModelCreateOrConnectWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductModelCreateWithoutProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductModelCreateOrConnectWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelCreateWithoutProductInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
          Input$ProductModelCreateOrConnectWithoutProductInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateOrConnectWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput(
    Input$ProductModelCreateOrConnectWithoutProductInput instance,
    TRes Function(Input$ProductModelCreateOrConnectWithoutProductInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutProductInput;

  factory CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutProductInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutProductInput? create,
  });
  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutProductInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateOrConnectWithoutProductInput _instance;

  final TRes Function(Input$ProductModelCreateOrConnectWithoutProductInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelCreateOrConnectWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutProductInput),
      }));
  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutProductInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutProductInput.stub(_res);
}

class Input$ProductsCreateOrConnectWithoutFamilyInput {
  factory Input$ProductsCreateOrConnectWithoutFamilyInput({
    required Input$ProductsWhereUniqueInput where,
    required Input$ProductsCreateWithoutFamilyInput create,
  }) =>
      Input$ProductsCreateOrConnectWithoutFamilyInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductsCreateOrConnectWithoutFamilyInput._(this._$data);

  factory Input$ProductsCreateOrConnectWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductsCreateWithoutFamilyInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductsCreateOrConnectWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Input$ProductsCreateWithoutFamilyInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutFamilyInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<
          Input$ProductsCreateOrConnectWithoutFamilyInput>
      get copyWith => CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateOrConnectWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<TRes> {
  factory CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput(
    Input$ProductsCreateOrConnectWithoutFamilyInput instance,
    TRes Function(Input$ProductsCreateOrConnectWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateOrConnectWithoutFamilyInput;

  factory CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutFamilyInput;

  TRes call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutFamilyInput? create,
  });
  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsCreateOrConnectWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateOrConnectWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateOrConnectWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsCreateOrConnectWithoutFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsCreateOrConnectWithoutFamilyInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductsCreateWithoutFamilyInput),
      }));
  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutFamilyInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutFamilyInput(this._res);

  TRes _res;

  call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutFamilyInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutFamilyInput.stub(_res);
}

class Input$ProductFamilyUpdateManyMutationInput {
  factory Input$ProductFamilyUpdateManyMutationInput(
          {Input$StringFieldUpdateOperationsInput? name}) =>
      Input$ProductFamilyUpdateManyMutationInput._({
        if (name != null) r'name': name,
      });

  Input$ProductFamilyUpdateManyMutationInput._(this._$data);

  factory Input$ProductFamilyUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$ProductFamilyUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyUpdateManyMutationInput<
          Input$ProductFamilyUpdateManyMutationInput>
      get copyWith => CopyWith$Input$ProductFamilyUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Input$ProductFamilyUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$ProductFamilyUpdateManyMutationInput(
    Input$ProductFamilyUpdateManyMutationInput instance,
    TRes Function(Input$ProductFamilyUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyUpdateManyMutationInput;

  factory CopyWith$Input$ProductFamilyUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyUpdateManyMutationInput;

  TRes call({Input$StringFieldUpdateOperationsInput? name});
}

class _CopyWithImpl$Input$ProductFamilyUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyUpdateManyMutationInput _instance;

  final TRes Function(Input$ProductFamilyUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$ProductFamilyUpdateManyMutationInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyUpdateManyMutationInput(this._res);

  TRes _res;

  call({Input$StringFieldUpdateOperationsInput? name}) => _res;
}

class Input$ProductFamilyUpdateInput {
  factory Input$ProductFamilyUpdateInput({
    Input$StringFieldUpdateOperationsInput? name,
    Input$ProductsUpdateManyWithoutFamilyNestedInput? Products,
  }) =>
      Input$ProductFamilyUpdateInput._({
        if (name != null) r'name': name,
        if (Products != null) r'Products': Products,
      });

  Input$ProductFamilyUpdateInput._(this._$data);

  factory Input$ProductFamilyUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('Products')) {
      final l$Products = data['Products'];
      result$data['Products'] = l$Products == null
          ? null
          : Input$ProductsUpdateManyWithoutFamilyNestedInput.fromJson(
              (l$Products as Map<String, dynamic>));
    }
    return Input$ProductFamilyUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductsUpdateManyWithoutFamilyNestedInput? get Products =>
      (_$data['Products'] as Input$ProductsUpdateManyWithoutFamilyNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('Products')) {
      final l$Products = Products;
      result$data['Products'] = l$Products?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyUpdateInput<Input$ProductFamilyUpdateInput>
      get copyWith => CopyWith$Input$ProductFamilyUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$Products = Products;
    final lOther$Products = other.Products;
    if (_$data.containsKey('Products') !=
        other._$data.containsKey('Products')) {
      return false;
    }
    if (l$Products != lOther$Products) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$Products = Products;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('Products') ? l$Products : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyUpdateInput<TRes> {
  factory CopyWith$Input$ProductFamilyUpdateInput(
    Input$ProductFamilyUpdateInput instance,
    TRes Function(Input$ProductFamilyUpdateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyUpdateInput;

  factory CopyWith$Input$ProductFamilyUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyUpdateInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$ProductsUpdateManyWithoutFamilyNestedInput? Products,
  });
  CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes> get Products;
}

class _CopyWithImpl$Input$ProductFamilyUpdateInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyUpdateInput _instance;

  final TRes Function(Input$ProductFamilyUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? Products = _undefined,
  }) =>
      _then(Input$ProductFamilyUpdateInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (Products != _undefined)
          'Products':
              (Products as Input$ProductsUpdateManyWithoutFamilyNestedInput?),
      }));
  CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes> get Products {
    final local$Products = _instance.Products;
    return local$Products == null
        ? CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput(
            local$Products, (e) => call(Products: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyUpdateInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyUpdateInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$ProductsUpdateManyWithoutFamilyNestedInput? Products,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes>
      get Products =>
          CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput.stub(_res);
}

class Input$ProductsUpdateManyWithoutFamilyNestedInput {
  factory Input$ProductsUpdateManyWithoutFamilyNestedInput({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? upsert,
    List<Input$ProductsWhereUniqueInput>? $set,
    List<Input$ProductsWhereUniqueInput>? disconnect,
    List<Input$ProductsWhereUniqueInput>? delete,
    List<Input$ProductsWhereUniqueInput>? connect,
    List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? update,
    List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? updateMany,
    List<Input$ProductsScalarWhereInput>? deleteMany,
  }) =>
      Input$ProductsUpdateManyWithoutFamilyNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$ProductsUpdateManyWithoutFamilyNestedInput._(this._$data);

  factory Input$ProductsUpdateManyWithoutFamilyNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductsCreateWithoutFamilyInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) => Input$ProductsCreateOrConnectWithoutFamilyInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$ProductsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$ProductsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$ProductsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsUpdateManyWithWhereWithoutFamilyInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductsUpdateManyWithoutFamilyNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductsCreateWithoutFamilyInput>? get create =>
      (_$data['create'] as List<Input$ProductsCreateWithoutFamilyInput>?);
  List<Input$ProductsCreateOrConnectWithoutFamilyInput>? get connectOrCreate =>
      (_$data['connectOrCreate']
          as List<Input$ProductsCreateOrConnectWithoutFamilyInput>?);
  List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? get upsert =>
      (_$data['upsert']
          as List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>?);
  List<Input$ProductsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ProductsWhereUniqueInput>?);
  List<Input$ProductsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ProductsWhereUniqueInput>?);
  List<Input$ProductsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$ProductsWhereUniqueInput>?);
  List<Input$ProductsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductsWhereUniqueInput>?);
  List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? get update =>
      (_$data['update']
          as List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>?);
  List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? get updateMany =>
      (_$data['updateMany']
          as List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>?);
  List<Input$ProductsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$ProductsScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<
          Input$ProductsUpdateManyWithoutFamilyNestedInput>
      get copyWith => CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateManyWithoutFamilyNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes> {
  factory CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput(
    Input$ProductsUpdateManyWithoutFamilyNestedInput instance,
    TRes Function(Input$ProductsUpdateManyWithoutFamilyNestedInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput;

  factory CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput;

  TRes call({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? upsert,
    List<Input$ProductsWhereUniqueInput>? $set,
    List<Input$ProductsWhereUniqueInput>? disconnect,
    List<Input$ProductsWhereUniqueInput>? delete,
    List<Input$ProductsWhereUniqueInput>? connect,
    List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? update,
    List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? updateMany,
    List<Input$ProductsScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$ProductsCreateWithoutFamilyInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsCreateWithoutFamilyInput<
                      Input$ProductsCreateWithoutFamilyInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductsCreateOrConnectWithoutFamilyInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<
                      Input$ProductsCreateOrConnectWithoutFamilyInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<
                      Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>>?)
          _fn);
  TRes update(
      Iterable<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<
                      Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<
                      Input$ProductsUpdateManyWithWhereWithoutFamilyInput>>?)
          _fn);
  TRes deleteMany(
      Iterable<Input$ProductsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereInput<
                      Input$ProductsScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes>
    implements CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateManyWithoutFamilyNestedInput _instance;

  final TRes Function(Input$ProductsUpdateManyWithoutFamilyNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$ProductsUpdateManyWithoutFamilyNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$ProductsCreateWithoutFamilyInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductsCreateOrConnectWithoutFamilyInput>?),
        if (upsert != _undefined)
          'upsert': (upsert
              as List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$ProductsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect': (disconnect as List<Input$ProductsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$ProductsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update
              as List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany
              as List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>?),
        if (deleteMany != _undefined)
          'deleteMany': (deleteMany as List<Input$ProductsScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$ProductsCreateWithoutFamilyInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsCreateWithoutFamilyInput<
                          Input$ProductsCreateWithoutFamilyInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductsCreateWithoutFamilyInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductsCreateOrConnectWithoutFamilyInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput<
                          Input$ProductsCreateOrConnectWithoutFamilyInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map(
              (e) => CopyWith$Input$ProductsCreateOrConnectWithoutFamilyInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes upsert(
          Iterable<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<
                          Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<
                          Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<
                          Input$ProductsUpdateManyWithWhereWithoutFamilyInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput(
                e,
                (i) => i,
              )))?.toList());
  TRes deleteMany(
          Iterable<Input$ProductsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereInput<
                          Input$ProductsScalarWhereInput>>?)
              _fn) =>
      call(
          deleteMany: _fn(_instance.deleteMany
              ?.map((e) => CopyWith$Input$ProductsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes>
    implements CopyWith$Input$ProductsUpdateManyWithoutFamilyNestedInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateManyWithoutFamilyNestedInput(this._res);

  TRes _res;

  call({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>? upsert,
    List<Input$ProductsWhereUniqueInput>? $set,
    List<Input$ProductsWhereUniqueInput>? disconnect,
    List<Input$ProductsWhereUniqueInput>? delete,
    List<Input$ProductsWhereUniqueInput>? connect,
    List<Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>? update,
    List<Input$ProductsUpdateManyWithWhereWithoutFamilyInput>? updateMany,
    List<Input$ProductsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
  deleteMany(_fn) => _res;
}

class Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput {
  factory Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput({
    required Input$ProductsWhereUniqueInput where,
    required Input$ProductsUpdateWithoutFamilyInput update,
    required Input$ProductsCreateWithoutFamilyInput create,
  }) =>
      Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput._(this._$data);

  factory Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$ProductsUpdateWithoutFamilyInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductsCreateWithoutFamilyInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Input$ProductsUpdateWithoutFamilyInput get update =>
      (_$data['update'] as Input$ProductsUpdateWithoutFamilyInput);
  Input$ProductsCreateWithoutFamilyInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutFamilyInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<
          Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput>
      get copyWith =>
          CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<
    TRes> {
  factory CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput(
    Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput instance,
    TRes Function(Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput;

  factory CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput;

  TRes call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsUpdateWithoutFamilyInput? update,
    Input$ProductsCreateWithoutFamilyInput? create,
  });
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get update;
  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<TRes>
    implements
        CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$ProductsUpdateWithoutFamilyInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductsCreateWithoutFamilyInput),
      }));
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductsUpdateWithoutFamilyInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutFamilyInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpsertWithWhereUniqueWithoutFamilyInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsUpdateWithoutFamilyInput? update,
    Input$ProductsCreateWithoutFamilyInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get update =>
      CopyWith$Input$ProductsUpdateWithoutFamilyInput.stub(_res);
  CopyWith$Input$ProductsCreateWithoutFamilyInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutFamilyInput.stub(_res);
}

class Input$ProductsUpdateWithoutFamilyInput {
  factory Input$ProductsUpdateWithoutFamilyInput({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      Input$ProductsUpdateWithoutFamilyInput._({
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsUpdateWithoutFamilyInput._(this._$data);

  factory Input$ProductsUpdateWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelUpdateManyWithoutProductNestedInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductUpdateManyWithoutProductNestedInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsUpdateWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get reference =>
      (_$data['reference'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductModelUpdateManyWithoutProductNestedInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelUpdateManyWithoutProductNestedInput?);
  Input$TransactionProductUpdateManyWithoutProductNestedInput?
      get TransactionProduct => (_$data['TransactionProduct']
          as Input$TransactionProductUpdateManyWithoutProductNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateWithoutFamilyInput<
          Input$ProductsUpdateWithoutFamilyInput>
      get copyWith => CopyWith$Input$ProductsUpdateWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> {
  factory CopyWith$Input$ProductsUpdateWithoutFamilyInput(
    Input$ProductsUpdateWithoutFamilyInput instance,
    TRes Function(Input$ProductsUpdateWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateWithoutFamilyInput;

  factory CopyWith$Input$ProductsUpdateWithoutFamilyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateWithoutFamilyInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsUpdateWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsUpdateWithoutFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsUpdateWithoutFamilyInput._({
        ..._instance._$data,
        if (reference != _undefined)
          'reference': (reference as Input$IntFieldUpdateOperationsInput?),
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (buyingPrice != _undefined)
          'buyingPrice':
              (buyingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (sellingPrice != _undefined)
          'sellingPrice':
              (sellingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelUpdateManyWithoutProductNestedInput?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductUpdateManyWithoutProductNestedInput?),
      }));
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateWithoutFamilyInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
              _res);
}

class Input$ProductModelUpdateManyWithoutProductNestedInput {
  factory Input$ProductModelUpdateManyWithoutProductNestedInput({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutProductInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      Input$ProductModelUpdateManyWithoutProductNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$ProductModelUpdateManyWithoutProductNestedInput._(this._$data);

  factory Input$ProductModelUpdateManyWithoutProductNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutProductInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutProductInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpsertWithWhereUniqueWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpdateWithWhereUniqueWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpdateManyWithWhereWithoutProductInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$ProductModelScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductModelUpdateManyWithoutProductNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutProductInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutProductInput>?);
  List<Input$ProductModelCreateOrConnectWithoutProductInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutProductInput>?);
  List<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>?
      get upsert => (_$data['upsert']
          as List<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>?);
  List<Input$ProductModelWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>?
      get update => (_$data['update']
          as List<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>?);
  List<Input$ProductModelUpdateManyWithWhereWithoutProductInput>?
      get updateMany => (_$data['updateMany']
          as List<Input$ProductModelUpdateManyWithWhereWithoutProductInput>?);
  List<Input$ProductModelScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$ProductModelScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<
          Input$ProductModelUpdateManyWithoutProductNestedInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithoutProductNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput(
    Input$ProductModelUpdateManyWithoutProductNestedInput instance,
    TRes Function(Input$ProductModelUpdateManyWithoutProductNestedInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithoutProductNestedInput;

  factory CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutProductNestedInput;

  TRes call({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutProductInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutProductInput<
                      Input$ProductModelCreateWithoutProductInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
                      Input$ProductModelCreateOrConnectWithoutProductInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
                      Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>>?)
          _fn);
  TRes update(
      Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
                      Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$ProductModelUpdateManyWithWhereWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
                      Input$ProductModelUpdateManyWithWhereWithoutProductInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithoutProductNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithoutProductNestedInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithoutProductNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$ProductModelUpdateManyWithoutProductNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$ProductModelCreateWithoutProductInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutProductInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$ProductModelWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$ProductModelWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$ProductModelWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductModelWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$ProductModelUpdateManyWithWhereWithoutProductInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$ProductModelScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutProductInput<
                          Input$ProductModelCreateWithoutProductInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutProductInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput<
                          Input$ProductModelCreateOrConnectWithoutProductInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$ProductModelCreateOrConnectWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
                          Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
                          Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$ProductModelUpdateManyWithWhereWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
                          Input$ProductModelUpdateManyWithWhereWithoutProductInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutProductNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutProductNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutProductInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutProductInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutProductInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
}

class Input$ProductModelUpsertWithWhereUniqueWithoutProductInput {
  factory Input$ProductModelUpsertWithWhereUniqueWithoutProductInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutProductInput update,
    required Input$ProductModelCreateWithoutProductInput create,
  }) =>
      Input$ProductModelUpsertWithWhereUniqueWithoutProductInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$ProductModelUpsertWithWhereUniqueWithoutProductInput._(this._$data);

  factory Input$ProductModelUpsertWithWhereUniqueWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] =
        Input$ProductModelUpdateWithoutProductInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductModelCreateWithoutProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductModelUpsertWithWhereUniqueWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutProductInput get update =>
      (_$data['update'] as Input$ProductModelUpdateWithoutProductInput);
  Input$ProductModelCreateWithoutProductInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
          Input$ProductModelUpsertWithWhereUniqueWithoutProductInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductModelUpsertWithWhereUniqueWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput(
    Input$ProductModelUpsertWithWhereUniqueWithoutProductInput instance,
    TRes Function(Input$ProductModelUpsertWithWhereUniqueWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput;

  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutProductInput? update,
    Input$ProductModelCreateWithoutProductInput? create,
  });
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get update;
  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpsertWithWhereUniqueWithoutProductInput _instance;

  final TRes Function(
      Input$ProductModelUpsertWithWhereUniqueWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelUpsertWithWhereUniqueWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$ProductModelUpdateWithoutProductInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutProductInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductModelUpdateWithoutProductInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutProductInput? update,
    Input$ProductModelCreateWithoutProductInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get update =>
      CopyWith$Input$ProductModelUpdateWithoutProductInput.stub(_res);
  CopyWith$Input$ProductModelCreateWithoutProductInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutProductInput.stub(_res);
}

class Input$ProductModelUpdateWithoutProductInput {
  factory Input$ProductModelUpdateWithoutProductInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      Input$ProductModelUpdateWithoutProductInput._({
        if (quantity != null) r'quantity': quantity,
        if (size != null) r'size': size,
        if (color != null) r'color': color,
      });

  Input$ProductModelUpdateWithoutProductInput._(this._$data);

  factory Input$ProductModelUpdateWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$SizesUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .fromJson((l$color as Map<String, dynamic>));
    }
    return Input$ProductModelUpdateWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? get size =>
      (_$data['size']
          as Input$SizesUpdateOneRequiredWithoutProductModelNestedInput?);
  Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? get color =>
      (_$data['color']
          as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithoutProductInput<
          Input$ProductModelUpdateWithoutProductInput>
      get copyWith => CopyWith$Input$ProductModelUpdateWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$size = size;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> {
  factory CopyWith$Input$ProductModelUpdateWithoutProductInput(
    Input$ProductModelUpdateWithoutProductInput instance,
    TRes Function(Input$ProductModelUpdateWithoutProductInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithoutProductInput;

  factory CopyWith$Input$ProductModelUpdateWithoutProductInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithoutProductInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  });
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color;
}

class _CopyWithImpl$Input$ProductModelUpdateWithoutProductInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithoutProductInput _instance;

  final TRes Function(Input$ProductModelUpdateWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithoutProductInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (size != _undefined)
          'size': (size
              as Input$SizesUpdateOneRequiredWithoutProductModelNestedInput?),
        if (color != _undefined)
          'color': (color
              as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?),
      }));
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
            local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithoutProductInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithoutProductInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color =>
          CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .stub(_res);
}

class Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput {
  factory Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsUpsertWithoutProductModelInput? upsert,
    Input$ColorsWhereUniqueInput? connect,
    Input$ColorsUpdateWithoutProductModelInput? update,
  }) =>
      Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput._(this._$data);

  factory Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ColorsCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ColorsCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$ColorsUpsertWithoutProductModelInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ColorsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$ColorsUpdateWithoutProductModelInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$ColorsCreateWithoutProductModelInput?);
  Input$ColorsCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ColorsCreateOrConnectWithoutProductModelInput?);
  Input$ColorsUpsertWithoutProductModelInput? get upsert =>
      (_$data['upsert'] as Input$ColorsUpsertWithoutProductModelInput?);
  Input$ColorsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ColorsWhereUniqueInput?);
  Input$ColorsUpdateWithoutProductModelInput? get update =>
      (_$data['update'] as Input$ColorsUpdateWithoutProductModelInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
          Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput>
      get copyWith =>
          CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$connect = connect;
    final l$update = update;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('upsert') ? l$upsert : const {},
      _$data.containsKey('connect') ? l$connect : const {},
      _$data.containsKey('update') ? l$update : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
    TRes> {
  factory CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput instance,
    TRes Function(Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput)
        then,
  ) = _CopyWithImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput;

  factory CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput;

  TRes call({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsUpsertWithoutProductModelInput? upsert,
    Input$ColorsWhereUniqueInput? connect,
    Input$ColorsUpdateWithoutProductModelInput? update,
  });
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
  CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> get upsert;
  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update;
}

class _CopyWithImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
    this._instance,
    this._then,
  );

  final Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput _instance;

  final TRes Function(
      Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ColorsCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ColorsCreateOrConnectWithoutProductModelInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$ColorsUpsertWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ColorsWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$ColorsUpdateWithoutProductModelInput?),
      }));
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$ColorsUpsertWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsUpsertWithoutProductModelInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$ColorsUpdateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ColorsUpdateWithoutProductModelInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
      this._res);

  TRes _res;

  call({
    Input$ColorsCreateWithoutProductModelInput? create,
    Input$ColorsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ColorsUpsertWithoutProductModelInput? upsert,
    Input$ColorsWhereUniqueInput? connect,
    Input$ColorsUpdateWithoutProductModelInput? update,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ColorsCreateOrConnectWithoutProductModelInput.stub(
              _res);
  CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> get upsert =>
      CopyWith$Input$ColorsUpsertWithoutProductModelInput.stub(_res);
  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$ColorsUpdateWithoutProductModelInput.stub(_res);
}

class Input$ColorsUpsertWithoutProductModelInput {
  factory Input$ColorsUpsertWithoutProductModelInput({
    required Input$ColorsUpdateWithoutProductModelInput update,
    required Input$ColorsCreateWithoutProductModelInput create,
  }) =>
      Input$ColorsUpsertWithoutProductModelInput._({
        r'update': update,
        r'create': create,
      });

  Input$ColorsUpsertWithoutProductModelInput._(this._$data);

  factory Input$ColorsUpsertWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] = Input$ColorsUpdateWithoutProductModelInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ColorsCreateWithoutProductModelInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ColorsUpsertWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsUpdateWithoutProductModelInput get update =>
      (_$data['update'] as Input$ColorsUpdateWithoutProductModelInput);
  Input$ColorsCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$ColorsCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ColorsUpsertWithoutProductModelInput<
          Input$ColorsUpsertWithoutProductModelInput>
      get copyWith => CopyWith$Input$ColorsUpsertWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsUpsertWithoutProductModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ColorsUpsertWithoutProductModelInput(
    Input$ColorsUpsertWithoutProductModelInput instance,
    TRes Function(Input$ColorsUpsertWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ColorsUpsertWithoutProductModelInput;

  factory CopyWith$Input$ColorsUpsertWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsUpsertWithoutProductModelInput;

  TRes call({
    Input$ColorsUpdateWithoutProductModelInput? update,
    Input$ColorsCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update;
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$ColorsUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ColorsUpsertWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ColorsUpsertWithoutProductModelInput _instance;

  final TRes Function(Input$ColorsUpsertWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ColorsUpsertWithoutProductModelInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$ColorsUpdateWithoutProductModelInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ColorsCreateWithoutProductModelInput),
      }));
  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ColorsUpdateWithoutProductModelInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ColorsCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ColorsUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsUpsertWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ColorsUpsertWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$ColorsUpdateWithoutProductModelInput? update,
    Input$ColorsCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$ColorsUpdateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ColorsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ColorsCreateWithoutProductModelInput.stub(_res);
}

class Input$ColorsUpdateWithoutProductModelInput {
  factory Input$ColorsUpdateWithoutProductModelInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  }) =>
      Input$ColorsUpdateWithoutProductModelInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsUpdateWithoutProductModelInput._(this._$data);

  factory Input$ColorsUpdateWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$color as Map<String, dynamic>));
    }
    return Input$ColorsUpdateWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get id =>
      (_$data['id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get color =>
      (_$data['color'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsUpdateWithoutProductModelInput<
          Input$ColorsUpdateWithoutProductModelInput>
      get copyWith => CopyWith$Input$ColorsUpdateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsUpdateWithoutProductModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ColorsUpdateWithoutProductModelInput(
    Input$ColorsUpdateWithoutProductModelInput instance,
    TRes Function(Input$ColorsUpdateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ColorsUpdateWithoutProductModelInput;

  factory CopyWith$Input$ColorsUpdateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsUpdateWithoutProductModelInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  });
}

class _CopyWithImpl$Input$ColorsUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ColorsUpdateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ColorsUpdateWithoutProductModelInput _instance;

  final TRes Function(Input$ColorsUpdateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsUpdateWithoutProductModelInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (color != _undefined)
          'color': (color as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ColorsUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ColorsUpdateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ColorsUpdateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  }) =>
      _res;
}

class Input$ProductModelUpdateWithWhereUniqueWithoutProductInput {
  factory Input$ProductModelUpdateWithWhereUniqueWithoutProductInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutProductInput data,
  }) =>
      Input$ProductModelUpdateWithWhereUniqueWithoutProductInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateWithWhereUniqueWithoutProductInput._(this._$data);

  factory Input$ProductModelUpdateWithWhereUniqueWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateWithoutProductInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateWithWhereUniqueWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutProductInput get data =>
      (_$data['data'] as Input$ProductModelUpdateWithoutProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
          Input$ProductModelUpdateWithWhereUniqueWithoutProductInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductModelUpdateWithWhereUniqueWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput(
    Input$ProductModelUpdateWithWhereUniqueWithoutProductInput instance,
    TRes Function(Input$ProductModelUpdateWithWhereUniqueWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput;

  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutProductInput? data,
  });
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithWhereUniqueWithoutProductInput _instance;

  final TRes Function(
      Input$ProductModelUpdateWithWhereUniqueWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithWhereUniqueWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateWithoutProductInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductModelUpdateWithoutProductInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutProductInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutProductInput<TRes> get data =>
      CopyWith$Input$ProductModelUpdateWithoutProductInput.stub(_res);
}

class Input$ProductModelUpdateManyWithWhereWithoutProductInput {
  factory Input$ProductModelUpdateManyWithWhereWithoutProductInput({
    required Input$ProductModelScalarWhereInput where,
    required Input$ProductModelUpdateManyMutationInput data,
  }) =>
      Input$ProductModelUpdateManyWithWhereWithoutProductInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateManyWithWhereWithoutProductInput._(this._$data);

  factory Input$ProductModelUpdateManyWithWhereWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateManyWithWhereWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelScalarWhereInput get where =>
      (_$data['where'] as Input$ProductModelScalarWhereInput);
  Input$ProductModelUpdateManyMutationInput get data =>
      (_$data['data'] as Input$ProductModelUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
          Input$ProductModelUpdateManyWithWhereWithoutProductInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithWhereWithoutProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput(
    Input$ProductModelUpdateManyWithWhereWithoutProductInput instance,
    TRes Function(Input$ProductModelUpdateManyWithWhereWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput;

  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput;

  TRes call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  });
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithWhereWithoutProductInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithWhereWithoutProductInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateManyWithWhereWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateManyMutationInput),
      }));
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  }) =>
      _res;
}

class Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput {
  factory Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput({
    required Input$ProductsWhereUniqueInput where,
    required Input$ProductsUpdateWithoutFamilyInput data,
  }) =>
      Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput._(this._$data);

  factory Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductsUpdateWithoutFamilyInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Input$ProductsUpdateWithoutFamilyInput get data =>
      (_$data['data'] as Input$ProductsUpdateWithoutFamilyInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<
          Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput>
      get copyWith =>
          CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<
    TRes> {
  factory CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput(
    Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput instance,
    TRes Function(Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput;

  factory CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput;

  TRes call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsUpdateWithoutFamilyInput? data,
  });
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<TRes>
    implements
        CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductsUpdateWithoutFamilyInput),
      }));
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductsUpdateWithoutFamilyInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateWithWhereUniqueWithoutFamilyInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsUpdateWithoutFamilyInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateWithoutFamilyInput<TRes> get data =>
      CopyWith$Input$ProductsUpdateWithoutFamilyInput.stub(_res);
}

class Input$ProductsUpdateManyWithWhereWithoutFamilyInput {
  factory Input$ProductsUpdateManyWithWhereWithoutFamilyInput({
    required Input$ProductsScalarWhereInput where,
    required Input$ProductsUpdateManyMutationInput data,
  }) =>
      Input$ProductsUpdateManyWithWhereWithoutFamilyInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductsUpdateManyWithWhereWithoutFamilyInput._(this._$data);

  factory Input$ProductsUpdateManyWithWhereWithoutFamilyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductsUpdateManyWithWhereWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsScalarWhereInput get where =>
      (_$data['where'] as Input$ProductsScalarWhereInput);
  Input$ProductsUpdateManyMutationInput get data =>
      (_$data['data'] as Input$ProductsUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<
          Input$ProductsUpdateManyWithWhereWithoutFamilyInput>
      get copyWith =>
          CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateManyWithWhereWithoutFamilyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<
    TRes> {
  factory CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput(
    Input$ProductsUpdateManyWithWhereWithoutFamilyInput instance,
    TRes Function(Input$ProductsUpdateManyWithWhereWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput;

  factory CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput;

  TRes call({
    Input$ProductsScalarWhereInput? where,
    Input$ProductsUpdateManyMutationInput? data,
  });
  CopyWith$Input$ProductsScalarWhereInput<TRes> get where;
  CopyWith$Input$ProductsUpdateManyMutationInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<TRes>
    implements
        CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateManyWithWhereWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsUpdateManyWithWhereWithoutFamilyInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductsUpdateManyWithWhereWithoutFamilyInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductsUpdateManyMutationInput),
      }));
  CopyWith$Input$ProductsScalarWhereInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$ProductsScalarWhereInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$ProductsUpdateManyMutationInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductsUpdateManyMutationInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateManyWithWhereWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateManyWithWhereWithoutFamilyInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsScalarWhereInput? where,
    Input$ProductsUpdateManyMutationInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductsScalarWhereInput<TRes> get where =>
      CopyWith$Input$ProductsScalarWhereInput.stub(_res);
  CopyWith$Input$ProductsUpdateManyMutationInput<TRes> get data =>
      CopyWith$Input$ProductsUpdateManyMutationInput.stub(_res);
}

class Input$ProductsScalarWhereInput {
  factory Input$ProductsScalarWhereInput({
    List<Input$ProductsScalarWhereInput>? AND,
    List<Input$ProductsScalarWhereInput>? OR,
    List<Input$ProductsScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
  }) =>
      Input$ProductsScalarWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (product_id != null) r'product_id': product_id,
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family_id != null) r'family_id': family_id,
      });

  Input$ProductsScalarWhereInput._(this._$data);

  factory Input$ProductsScalarWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ProductsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFilter.fromJson((l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFilter.fromJson((l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFilter.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFilter.fromJson((l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('family_id')) {
      final l$family_id = data['family_id'];
      result$data['family_id'] = l$family_id == null
          ? null
          : Input$IntFilter.fromJson((l$family_id as Map<String, dynamic>));
    }
    return Input$ProductsScalarWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductsScalarWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ProductsScalarWhereInput>?);
  List<Input$ProductsScalarWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ProductsScalarWhereInput>?);
  List<Input$ProductsScalarWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductsScalarWhereInput>?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get reference => (_$data['reference'] as Input$IntFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$FloatFilter? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFilter?);
  Input$FloatFilter? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFilter?);
  Input$StringFilter? get description =>
      (_$data['description'] as Input$StringFilter?);
  Input$StringFilter? get picture => (_$data['picture'] as Input$StringFilter?);
  Input$IntFilter? get family_id => (_$data['family_id'] as Input$IntFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AND')) {
      final l$AND = AND;
      result$data['AND'] = l$AND?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('OR')) {
      final l$OR = OR;
      result$data['OR'] = l$OR?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('NOT')) {
      final l$NOT = NOT;
      result$data['NOT'] = l$NOT?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('family_id')) {
      final l$family_id = family_id;
      result$data['family_id'] = l$family_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsScalarWhereInput<Input$ProductsScalarWhereInput>
      get copyWith => CopyWith$Input$ProductsScalarWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsScalarWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$AND = AND;
    final lOther$AND = other.AND;
    if (_$data.containsKey('AND') != other._$data.containsKey('AND')) {
      return false;
    }
    if (l$AND != null && lOther$AND != null) {
      if (l$AND.length != lOther$AND.length) {
        return false;
      }
      for (int i = 0; i < l$AND.length; i++) {
        final l$AND$entry = l$AND[i];
        final lOther$AND$entry = lOther$AND[i];
        if (l$AND$entry != lOther$AND$entry) {
          return false;
        }
      }
    } else if (l$AND != lOther$AND) {
      return false;
    }
    final l$OR = OR;
    final lOther$OR = other.OR;
    if (_$data.containsKey('OR') != other._$data.containsKey('OR')) {
      return false;
    }
    if (l$OR != null && lOther$OR != null) {
      if (l$OR.length != lOther$OR.length) {
        return false;
      }
      for (int i = 0; i < l$OR.length; i++) {
        final l$OR$entry = l$OR[i];
        final lOther$OR$entry = lOther$OR[i];
        if (l$OR$entry != lOther$OR$entry) {
          return false;
        }
      }
    } else if (l$OR != lOther$OR) {
      return false;
    }
    final l$NOT = NOT;
    final lOther$NOT = other.NOT;
    if (_$data.containsKey('NOT') != other._$data.containsKey('NOT')) {
      return false;
    }
    if (l$NOT != null && lOther$NOT != null) {
      if (l$NOT.length != lOther$NOT.length) {
        return false;
      }
      for (int i = 0; i < l$NOT.length; i++) {
        final l$NOT$entry = l$NOT[i];
        final lOther$NOT$entry = lOther$NOT[i];
        if (l$NOT$entry != lOther$NOT$entry) {
          return false;
        }
      }
    } else if (l$NOT != lOther$NOT) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (_$data.containsKey('family_id') !=
        other._$data.containsKey('family_id')) {
      return false;
    }
    if (l$family_id != lOther$family_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$product_id = product_id;
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family_id = family_id;
    return Object.hashAll([
      _$data.containsKey('AND')
          ? l$AND == null
              ? null
              : Object.hashAll(l$AND.map((v) => v))
          : const {},
      _$data.containsKey('OR')
          ? l$OR == null
              ? null
              : Object.hashAll(l$OR.map((v) => v))
          : const {},
      _$data.containsKey('NOT')
          ? l$NOT == null
              ? null
              : Object.hashAll(l$NOT.map((v) => v))
          : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family_id') ? l$family_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsScalarWhereInput<TRes> {
  factory CopyWith$Input$ProductsScalarWhereInput(
    Input$ProductsScalarWhereInput instance,
    TRes Function(Input$ProductsScalarWhereInput) then,
  ) = _CopyWithImpl$Input$ProductsScalarWhereInput;

  factory CopyWith$Input$ProductsScalarWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsScalarWhereInput;

  TRes call({
    List<Input$ProductsScalarWhereInput>? AND,
    List<Input$ProductsScalarWhereInput>? OR,
    List<Input$ProductsScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
  });
  TRes AND(
      Iterable<Input$ProductsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereInput<
                      Input$ProductsScalarWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereInput<
                      Input$ProductsScalarWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductsScalarWhereInput<
                      Input$ProductsScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductsScalarWhereInput<TRes>
    implements CopyWith$Input$ProductsScalarWhereInput<TRes> {
  _CopyWithImpl$Input$ProductsScalarWhereInput(
    this._instance,
    this._then,
  );

  final Input$ProductsScalarWhereInput _instance;

  final TRes Function(Input$ProductsScalarWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family_id = _undefined,
  }) =>
      _then(Input$ProductsScalarWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ProductsScalarWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ProductsScalarWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ProductsScalarWhereInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (reference != _undefined)
          'reference': (reference as Input$IntFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (buyingPrice != _undefined)
          'buyingPrice': (buyingPrice as Input$FloatFilter?),
        if (sellingPrice != _undefined)
          'sellingPrice': (sellingPrice as Input$FloatFilter?),
        if (description != _undefined)
          'description': (description as Input$StringFilter?),
        if (picture != _undefined) 'picture': (picture as Input$StringFilter?),
        if (family_id != _undefined)
          'family_id': (family_id as Input$IntFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereInput<
                          Input$ProductsScalarWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(
              _instance.AND?.map((e) => CopyWith$Input$ProductsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereInput<
                          Input$ProductsScalarWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(
              _instance.OR?.map((e) => CopyWith$Input$ProductsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductsScalarWhereInput<
                          Input$ProductsScalarWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(
              _instance.NOT?.map((e) => CopyWith$Input$ProductsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductsScalarWhereInput<TRes>
    implements CopyWith$Input$ProductsScalarWhereInput<TRes> {
  _CopyWithStubImpl$Input$ProductsScalarWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ProductsScalarWhereInput>? AND,
    List<Input$ProductsScalarWhereInput>? OR,
    List<Input$ProductsScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? reference,
    Input$StringFilter? name,
    Input$FloatFilter? buyingPrice,
    Input$FloatFilter? sellingPrice,
    Input$StringFilter? description,
    Input$StringFilter? picture,
    Input$IntFilter? family_id,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$ProductsUpdateManyMutationInput {
  factory Input$ProductsUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      Input$ProductsUpdateManyMutationInput._({
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
      });

  Input$ProductsUpdateManyMutationInput._(this._$data);

  factory Input$ProductsUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    return Input$ProductsUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get reference =>
      (_$data['reference'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateManyMutationInput<
          Input$ProductsUpdateManyMutationInput>
      get copyWith => CopyWith$Input$ProductsUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    return Object.hashAll([
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$ProductsUpdateManyMutationInput(
    Input$ProductsUpdateManyMutationInput instance,
    TRes Function(Input$ProductsUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateManyMutationInput;

  factory CopyWith$Input$ProductsUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
  });
}

class _CopyWithImpl$Input$ProductsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductsUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateManyMutationInput _instance;

  final TRes Function(Input$ProductsUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$ProductsUpdateManyMutationInput._({
        ..._instance._$data,
        if (reference != _undefined)
          'reference': (reference as Input$IntFieldUpdateOperationsInput?),
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (buyingPrice != _undefined)
          'buyingPrice':
              (buyingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (sellingPrice != _undefined)
          'sellingPrice':
              (sellingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ProductsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductsUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      _res;
}

class Input$ProductModelCreateInput {
  factory Input$ProductModelCreateInput({
    required int quantity,
    required Input$ProductsCreateNestedOneWithoutProductModelInput product,
    required Input$SizesCreateNestedOneWithoutProductModelInput size,
    required Input$ColorsCreateNestedOneWithoutProductModelInput color,
  }) =>
      Input$ProductModelCreateInput._({
        r'quantity': quantity,
        r'product': product,
        r'size': size,
        r'color': color,
      });

  Input$ProductModelCreateInput._(this._$data);

  factory Input$ProductModelCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$product = data['product'];
    result$data['product'] =
        Input$ProductsCreateNestedOneWithoutProductModelInput.fromJson(
            (l$product as Map<String, dynamic>));
    final l$size = data['size'];
    result$data['size'] =
        Input$SizesCreateNestedOneWithoutProductModelInput.fromJson(
            (l$size as Map<String, dynamic>));
    final l$color = data['color'];
    result$data['color'] =
        Input$ColorsCreateNestedOneWithoutProductModelInput.fromJson(
            (l$color as Map<String, dynamic>));
    return Input$ProductModelCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  Input$ProductsCreateNestedOneWithoutProductModelInput get product =>
      (_$data['product']
          as Input$ProductsCreateNestedOneWithoutProductModelInput);
  Input$SizesCreateNestedOneWithoutProductModelInput get size =>
      (_$data['size'] as Input$SizesCreateNestedOneWithoutProductModelInput);
  Input$ColorsCreateNestedOneWithoutProductModelInput get color =>
      (_$data['color'] as Input$ColorsCreateNestedOneWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$product = product;
    result$data['product'] = l$product.toJson();
    final l$size = size;
    result$data['size'] = l$size.toJson();
    final l$color = color;
    result$data['color'] = l$color.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateInput<Input$ProductModelCreateInput>
      get copyWith => CopyWith$Input$ProductModelCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
    final l$color = color;
    return Object.hashAll([
      l$quantity,
      l$product,
      l$size,
      l$color,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateInput<TRes> {
  factory CopyWith$Input$ProductModelCreateInput(
    Input$ProductModelCreateInput instance,
    TRes Function(Input$ProductModelCreateInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateInput;

  factory CopyWith$Input$ProductModelCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateInput;

  TRes call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  });
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color;
}

class _CopyWithImpl$Input$ProductModelCreateInput<TRes>
    implements CopyWith$Input$ProductModelCreateInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateInput _instance;

  final TRes Function(Input$ProductModelCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelCreateInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (product != _undefined && product != null)
          'product': (product
              as Input$ProductsCreateNestedOneWithoutProductModelInput),
        if (size != _undefined && size != null)
          'size': (size as Input$SizesCreateNestedOneWithoutProductModelInput),
        if (color != _undefined && color != null)
          'color':
              (color as Input$ColorsCreateNestedOneWithoutProductModelInput),
      }));
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color {
    final local$color = _instance.color;
    return CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput(
        local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateInput<TRes>
    implements CopyWith$Input$ProductModelCreateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateInput(this._res);

  TRes _res;

  call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes>
      get color =>
          CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput.stub(
              _res);
}

class Input$ProductModelUpdateInput {
  factory Input$ProductModelUpdateInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      Input$ProductModelUpdateInput._({
        if (quantity != null) r'quantity': quantity,
        if (product != null) r'product': product,
        if (size != null) r'size': size,
        if (color != null) r'color': color,
      });

  Input$ProductModelUpdateInput._(this._$data);

  factory Input$ProductModelUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput
              .fromJson((l$product as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$SizesUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .fromJson((l$color as Map<String, dynamic>));
    }
    return Input$ProductModelUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? get product =>
      (_$data['product']
          as Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput?);
  Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? get size =>
      (_$data['size']
          as Input$SizesUpdateOneRequiredWithoutProductModelNestedInput?);
  Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? get color =>
      (_$data['color']
          as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateInput<Input$ProductModelUpdateInput>
      get copyWith => CopyWith$Input$ProductModelUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('product') ? l$product : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateInput<TRes> {
  factory CopyWith$Input$ProductModelUpdateInput(
    Input$ProductModelUpdateInput instance,
    TRes Function(Input$ProductModelUpdateInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateInput;

  factory CopyWith$Input$ProductModelUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  });
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color;
}

class _CopyWithImpl$Input$ProductModelUpdateInput<TRes>
    implements CopyWith$Input$ProductModelUpdateInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateInput _instance;

  final TRes Function(Input$ProductModelUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelUpdateInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (product != _undefined)
          'product': (product
              as Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput?),
        if (size != _undefined)
          'size': (size
              as Input$SizesUpdateOneRequiredWithoutProductModelNestedInput?),
        if (color != _undefined)
          'color': (color
              as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?),
      }));
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
            local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateInput<TRes>
    implements CopyWith$Input$ProductModelUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color =>
          CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .stub(_res);
}

class Input$ProductsCreateInput {
  factory Input$ProductsCreateInput({
    required int reference,
    required String name,
    required double buyingPrice,
    required double sellingPrice,
    required String description,
    required String picture,
    required Input$ProductFamilyCreateNestedOneWithoutProductsInput family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      Input$ProductsCreateInput._({
        r'reference': reference,
        r'name': name,
        r'buyingPrice': buyingPrice,
        r'sellingPrice': sellingPrice,
        r'description': description,
        r'picture': picture,
        r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsCreateInput._(this._$data);

  factory Input$ProductsCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reference = data['reference'];
    result$data['reference'] = (l$reference as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$buyingPrice = data['buyingPrice'];
    result$data['buyingPrice'] = (l$buyingPrice as num).toDouble();
    final l$sellingPrice = data['sellingPrice'];
    result$data['sellingPrice'] = (l$sellingPrice as num).toDouble();
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    final l$family = data['family'];
    result$data['family'] =
        Input$ProductFamilyCreateNestedOneWithoutProductsInput.fromJson(
            (l$family as Map<String, dynamic>));
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelCreateNestedManyWithoutProductInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductCreateNestedManyWithoutProductInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get reference => (_$data['reference'] as int);
  String get name => (_$data['name'] as String);
  double get buyingPrice => (_$data['buyingPrice'] as double);
  double get sellingPrice => (_$data['sellingPrice'] as double);
  String get description => (_$data['description'] as String);
  String get picture => (_$data['picture'] as String);
  Input$ProductFamilyCreateNestedOneWithoutProductsInput get family =>
      (_$data['family']
          as Input$ProductFamilyCreateNestedOneWithoutProductsInput);
  Input$ProductModelCreateNestedManyWithoutProductInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelCreateNestedManyWithoutProductInput?);
  Input$TransactionProductCreateNestedManyWithoutProductInput?
      get TransactionProduct => (_$data['TransactionProduct']
          as Input$TransactionProductCreateNestedManyWithoutProductInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reference = reference;
    result$data['reference'] = l$reference;
    final l$name = name;
    result$data['name'] = l$name;
    final l$buyingPrice = buyingPrice;
    result$data['buyingPrice'] = l$buyingPrice;
    final l$sellingPrice = sellingPrice;
    result$data['sellingPrice'] = l$sellingPrice;
    final l$description = description;
    result$data['description'] = l$description;
    final l$picture = picture;
    result$data['picture'] = l$picture;
    final l$family = family;
    result$data['family'] = l$family.toJson();
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsCreateInput<Input$ProductsCreateInput> get copyWith =>
      CopyWith$Input$ProductsCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      l$reference,
      l$name,
      l$buyingPrice,
      l$sellingPrice,
      l$description,
      l$picture,
      l$family,
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateInput<TRes> {
  factory CopyWith$Input$ProductsCreateInput(
    Input$ProductsCreateInput instance,
    TRes Function(Input$ProductsCreateInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateInput;

  factory CopyWith$Input$ProductsCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateInput;

  TRes call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsCreateInput<TRes>
    implements CopyWith$Input$ProductsCreateInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateInput _instance;

  final TRes Function(Input$ProductsCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsCreateInput._({
        ..._instance._$data,
        if (reference != _undefined && reference != null)
          'reference': (reference as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (buyingPrice != _undefined && buyingPrice != null)
          'buyingPrice': (buyingPrice as double),
        if (sellingPrice != _undefined && sellingPrice != null)
          'sellingPrice': (sellingPrice as double),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
        if (family != _undefined && family != null)
          'family': (family
              as Input$ProductFamilyCreateNestedOneWithoutProductsInput),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelCreateNestedManyWithoutProductInput?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductCreateNestedManyWithoutProductInput?),
      }));
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateInput<TRes>
    implements CopyWith$Input$ProductsCreateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateInput(this._res);

  TRes _res;

  call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
              _res);
}

class Input$ProductsUpdateInput {
  factory Input$ProductsUpdateInput({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      Input$ProductsUpdateInput._({
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family != null) r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsUpdateInput._(this._$data);

  factory Input$ProductsUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput
              .fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelUpdateManyWithoutProductNestedInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductUpdateManyWithoutProductNestedInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get reference =>
      (_$data['reference'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? get family =>
      (_$data['family']
          as Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput?);
  Input$ProductModelUpdateManyWithoutProductNestedInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelUpdateManyWithoutProductNestedInput?);
  Input$TransactionProductUpdateManyWithoutProductNestedInput?
      get TransactionProduct => (_$data['TransactionProduct']
          as Input$TransactionProductUpdateManyWithoutProductNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateInput<Input$ProductsUpdateInput> get copyWith =>
      CopyWith$Input$ProductsUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    final l$TransactionProduct = TransactionProduct;
    final lOther$TransactionProduct = other.TransactionProduct;
    if (_$data.containsKey('TransactionProduct') !=
        other._$data.containsKey('TransactionProduct')) {
      return false;
    }
    if (l$TransactionProduct != lOther$TransactionProduct) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateInput<TRes> {
  factory CopyWith$Input$ProductsUpdateInput(
    Input$ProductsUpdateInput instance,
    TRes Function(Input$ProductsUpdateInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateInput;

  factory CopyWith$Input$ProductsUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsUpdateInput<TRes>
    implements CopyWith$Input$ProductsUpdateInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateInput _instance;

  final TRes Function(Input$ProductsUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsUpdateInput._({
        ..._instance._$data,
        if (reference != _undefined)
          'reference': (reference as Input$IntFieldUpdateOperationsInput?),
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (buyingPrice != _undefined)
          'buyingPrice':
              (buyingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (sellingPrice != _undefined)
          'sellingPrice':
              (sellingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
        if (family != _undefined)
          'family': (family
              as Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelUpdateManyWithoutProductNestedInput?),
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductUpdateManyWithoutProductNestedInput?),
      }));
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateInput<TRes>
    implements CopyWith$Input$ProductsUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
              _res);
}

class Input$SellersCreateInput {
  factory Input$SellersCreateInput({
    required String seller_name,
    required String seller_phone,
    required String picture,
    Input$TransactionsCreateNestedManyWithoutSellerInput? Transactions,
  }) =>
      Input$SellersCreateInput._({
        r'seller_name': seller_name,
        r'seller_phone': seller_phone,
        r'picture': picture,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$SellersCreateInput._(this._$data);

  factory Input$SellersCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$seller_name = data['seller_name'];
    result$data['seller_name'] = (l$seller_name as String);
    final l$seller_phone = data['seller_phone'];
    result$data['seller_phone'] = (l$seller_phone as String);
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsCreateNestedManyWithoutSellerInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$SellersCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get seller_name => (_$data['seller_name'] as String);
  String get seller_phone => (_$data['seller_phone'] as String);
  String get picture => (_$data['picture'] as String);
  Input$TransactionsCreateNestedManyWithoutSellerInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsCreateNestedManyWithoutSellerInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$seller_name = seller_name;
    result$data['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    result$data['seller_phone'] = l$seller_phone;
    final l$picture = picture;
    result$data['picture'] = l$picture;
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersCreateInput<Input$SellersCreateInput> get copyWith =>
      CopyWith$Input$SellersCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (l$seller_phone != lOther$seller_phone) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    final l$Transactions = Transactions;
    return Object.hashAll([
      l$seller_name,
      l$seller_phone,
      l$picture,
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersCreateInput<TRes> {
  factory CopyWith$Input$SellersCreateInput(
    Input$SellersCreateInput instance,
    TRes Function(Input$SellersCreateInput) then,
  ) = _CopyWithImpl$Input$SellersCreateInput;

  factory CopyWith$Input$SellersCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersCreateInput;

  TRes call({
    String? seller_name,
    String? seller_phone,
    String? picture,
    Input$TransactionsCreateNestedManyWithoutSellerInput? Transactions,
  });
  CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$SellersCreateInput<TRes>
    implements CopyWith$Input$SellersCreateInput<TRes> {
  _CopyWithImpl$Input$SellersCreateInput(
    this._instance,
    this._then,
  );

  final Input$SellersCreateInput _instance;

  final TRes Function(Input$SellersCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$SellersCreateInput._({
        ..._instance._$data,
        if (seller_name != _undefined && seller_name != null)
          'seller_name': (seller_name as String),
        if (seller_phone != _undefined && seller_phone != null)
          'seller_phone': (seller_phone as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsCreateNestedManyWithoutSellerInput?),
      }));
  CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$SellersCreateInput<TRes>
    implements CopyWith$Input$SellersCreateInput<TRes> {
  _CopyWithStubImpl$Input$SellersCreateInput(this._res);

  TRes _res;

  call({
    String? seller_name,
    String? seller_phone,
    String? picture,
    Input$TransactionsCreateNestedManyWithoutSellerInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput.stub(
              _res);
}

class Input$TransactionsCreateNestedManyWithoutSellerInput {
  factory Input$TransactionsCreateNestedManyWithoutSellerInput({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      Input$TransactionsCreateNestedManyWithoutSellerInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionsCreateNestedManyWithoutSellerInput._(this._$data);

  factory Input$TransactionsCreateNestedManyWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutSellerInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutSellerInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsCreateNestedManyWithoutSellerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutSellerInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutSellerInput>?);
  List<Input$TransactionsCreateOrConnectWithoutSellerInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutSellerInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<
          Input$TransactionsCreateNestedManyWithoutSellerInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateNestedManyWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput(
    Input$TransactionsCreateNestedManyWithoutSellerInput instance,
    TRes Function(Input$TransactionsCreateNestedManyWithoutSellerInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutSellerInput;

  factory CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutSellerInput;

  TRes call({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutSellerInput<
                      Input$TransactionsCreateWithoutSellerInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
                      Input$TransactionsCreateOrConnectWithoutSellerInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateNestedManyWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsCreateNestedManyWithoutSellerInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionsCreateNestedManyWithoutSellerInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$TransactionsCreateWithoutSellerInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutSellerInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutSellerInput<
                          Input$TransactionsCreateWithoutSellerInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutSellerInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
                          Input$TransactionsCreateOrConnectWithoutSellerInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutSellerInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutSellerInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$TransactionsCreateWithoutSellerInput {
  factory Input$TransactionsCreateWithoutSellerInput({
    required int transaction_id,
    required int product_id,
    required String customer_name,
    required String customer_phone,
    required String address,
    required int quantity,
    required String date,
    required double remainingPayement,
    required double totalPayement,
    required Input$CityCreateNestedOneWithoutTransactionsInput city,
    required Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      Input$TransactionsCreateWithoutSellerInput._({
        r'transaction_id': transaction_id,
        r'product_id': product_id,
        r'customer_name': customer_name,
        r'customer_phone': customer_phone,
        r'address': address,
        r'quantity': quantity,
        r'date': date,
        r'remainingPayement': remainingPayement,
        r'totalPayement': totalPayement,
        r'city': city,
        r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsCreateWithoutSellerInput._(this._$data);

  factory Input$TransactionsCreateWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$customer_name = data['customer_name'];
    result$data['customer_name'] = (l$customer_name as String);
    final l$customer_phone = data['customer_phone'];
    result$data['customer_phone'] = (l$customer_phone as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$remainingPayement = data['remainingPayement'];
    result$data['remainingPayement'] = (l$remainingPayement as num).toDouble();
    final l$totalPayement = data['totalPayement'];
    result$data['totalPayement'] = (l$totalPayement as num).toDouble();
    final l$city = data['city'];
    result$data['city'] =
        Input$CityCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$city as Map<String, dynamic>));
    final l$transaction_type = data['transaction_type'];
    result$data['transaction_type'] =
        Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$transaction_type as Map<String, dynamic>));
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsCreateWithoutSellerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get product_id => (_$data['product_id'] as int);
  String get customer_name => (_$data['customer_name'] as String);
  String get customer_phone => (_$data['customer_phone'] as String);
  String get address => (_$data['address'] as String);
  int get quantity => (_$data['quantity'] as int);
  String get date => (_$data['date'] as String);
  double get remainingPayement => (_$data['remainingPayement'] as double);
  double get totalPayement => (_$data['totalPayement'] as double);
  Input$CityCreateNestedOneWithoutTransactionsInput get city =>
      (_$data['city'] as Input$CityCreateNestedOneWithoutTransactionsInput);
  Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput);
  Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? get status =>
      (_$data['status']
          as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?);
  Input$PayementsCreateNestedManyWithoutTransactionInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsCreateNestedManyWithoutTransactionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$customer_name = customer_name;
    result$data['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    result$data['customer_phone'] = l$customer_phone;
    final l$address = address;
    result$data['address'] = l$address;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$date = date;
    result$data['date'] = l$date;
    final l$remainingPayement = remainingPayement;
    result$data['remainingPayement'] = l$remainingPayement;
    final l$totalPayement = totalPayement;
    result$data['totalPayement'] = l$totalPayement;
    final l$city = city;
    result$data['city'] = l$city.toJson();
    final l$transaction_type = transaction_type;
    result$data['transaction_type'] = l$transaction_type.toJson();
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateWithoutSellerInput<
          Input$TransactionsCreateWithoutSellerInput>
      get copyWith => CopyWith$Input$TransactionsCreateWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      l$transaction_id,
      l$product_id,
      l$customer_name,
      l$customer_phone,
      l$address,
      l$quantity,
      l$date,
      l$remainingPayement,
      l$totalPayement,
      l$city,
      l$transaction_type,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> {
  factory CopyWith$Input$TransactionsCreateWithoutSellerInput(
    Input$TransactionsCreateWithoutSellerInput instance,
    TRes Function(Input$TransactionsCreateWithoutSellerInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateWithoutSellerInput;

  factory CopyWith$Input$TransactionsCreateWithoutSellerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateWithoutSellerInput;

  TRes call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsCreateWithoutSellerInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsCreateWithoutSellerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsCreateWithoutSellerInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (customer_name != _undefined && customer_name != null)
          'customer_name': (customer_name as String),
        if (customer_phone != _undefined && customer_phone != null)
          'customer_phone': (customer_phone as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (date != _undefined && date != null) 'date': (date as String),
        if (remainingPayement != _undefined && remainingPayement != null)
          'remainingPayement': (remainingPayement as double),
        if (totalPayement != _undefined && totalPayement != null)
          'totalPayement': (totalPayement as double),
        if (city != _undefined && city != null)
          'city': (city as Input$CityCreateNestedOneWithoutTransactionsInput),
        if (transaction_type != _undefined && transaction_type != null)
          'transaction_type': (transaction_type
              as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsCreateNestedManyWithoutTransactionInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsCreateWithoutSellerInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateWithoutSellerInput(this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsCreateOrConnectWithoutSellerInput {
  factory Input$TransactionsCreateOrConnectWithoutSellerInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsCreateWithoutSellerInput create,
  }) =>
      Input$TransactionsCreateOrConnectWithoutSellerInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionsCreateOrConnectWithoutSellerInput._(this._$data);

  factory Input$TransactionsCreateOrConnectWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutSellerInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsCreateOrConnectWithoutSellerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsCreateWithoutSellerInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutSellerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
          Input$TransactionsCreateOrConnectWithoutSellerInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateOrConnectWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput(
    Input$TransactionsCreateOrConnectWithoutSellerInput instance,
    TRes Function(Input$TransactionsCreateOrConnectWithoutSellerInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutSellerInput;

  factory CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutSellerInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutSellerInput? create,
  });
  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutSellerInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateOrConnectWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsCreateOrConnectWithoutSellerInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsCreateOrConnectWithoutSellerInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutSellerInput),
      }));
  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutSellerInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutSellerInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutSellerInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutSellerInput.stub(_res);
}

class Input$SellersUpdateManyMutationInput {
  factory Input$SellersUpdateManyMutationInput({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      Input$SellersUpdateManyMutationInput._({
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersUpdateManyMutationInput._(this._$data);

  factory Input$SellersUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$seller_name as Map<String, dynamic>));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$seller_phone as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    return Input$SellersUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get seller_name =>
      (_$data['seller_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get seller_phone =>
      (_$data['seller_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] = l$seller_name?.toJson();
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] = l$seller_phone?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersUpdateManyMutationInput<
          Input$SellersUpdateManyMutationInput>
      get copyWith => CopyWith$Input$SellersUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    return Object.hashAll([
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$SellersUpdateManyMutationInput(
    Input$SellersUpdateManyMutationInput instance,
    TRes Function(Input$SellersUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$SellersUpdateManyMutationInput;

  factory CopyWith$Input$SellersUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersUpdateManyMutationInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  });
}

class _CopyWithImpl$Input$SellersUpdateManyMutationInput<TRes>
    implements CopyWith$Input$SellersUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$SellersUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$SellersUpdateManyMutationInput _instance;

  final TRes Function(Input$SellersUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersUpdateManyMutationInput._({
        ..._instance._$data,
        if (seller_name != _undefined)
          'seller_name':
              (seller_name as Input$StringFieldUpdateOperationsInput?),
        if (seller_phone != _undefined)
          'seller_phone':
              (seller_phone as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$SellersUpdateManyMutationInput<TRes>
    implements CopyWith$Input$SellersUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$SellersUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      _res;
}

class Input$SellersUpdateInput {
  factory Input$SellersUpdateInput({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$TransactionsUpdateManyWithoutSellerNestedInput? Transactions,
  }) =>
      Input$SellersUpdateInput._({
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$SellersUpdateInput._(this._$data);

  factory Input$SellersUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('seller_name')) {
      final l$seller_name = data['seller_name'];
      result$data['seller_name'] = l$seller_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$seller_name as Map<String, dynamic>));
    }
    if (data.containsKey('seller_phone')) {
      final l$seller_phone = data['seller_phone'];
      result$data['seller_phone'] = l$seller_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$seller_phone as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsUpdateManyWithoutSellerNestedInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$SellersUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get seller_name =>
      (_$data['seller_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get seller_phone =>
      (_$data['seller_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Input$TransactionsUpdateManyWithoutSellerNestedInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsUpdateManyWithoutSellerNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('seller_name')) {
      final l$seller_name = seller_name;
      result$data['seller_name'] = l$seller_name?.toJson();
    }
    if (_$data.containsKey('seller_phone')) {
      final l$seller_phone = seller_phone;
      result$data['seller_phone'] = l$seller_phone?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SellersUpdateInput<Input$SellersUpdateInput> get copyWith =>
      CopyWith$Input$SellersUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (_$data.containsKey('seller_name') !=
        other._$data.containsKey('seller_name')) {
      return false;
    }
    if (l$seller_name != lOther$seller_name) {
      return false;
    }
    final l$seller_phone = seller_phone;
    final lOther$seller_phone = other.seller_phone;
    if (_$data.containsKey('seller_phone') !=
        other._$data.containsKey('seller_phone')) {
      return false;
    }
    if (l$seller_phone != lOther$seller_phone) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$picture = picture;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('seller_name') ? l$seller_name : const {},
      _$data.containsKey('seller_phone') ? l$seller_phone : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$SellersUpdateInput<TRes> {
  factory CopyWith$Input$SellersUpdateInput(
    Input$SellersUpdateInput instance,
    TRes Function(Input$SellersUpdateInput) then,
  ) = _CopyWithImpl$Input$SellersUpdateInput;

  factory CopyWith$Input$SellersUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersUpdateInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$TransactionsUpdateManyWithoutSellerNestedInput? Transactions,
  });
  CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$SellersUpdateInput<TRes>
    implements CopyWith$Input$SellersUpdateInput<TRes> {
  _CopyWithImpl$Input$SellersUpdateInput(
    this._instance,
    this._then,
  );

  final Input$SellersUpdateInput _instance;

  final TRes Function(Input$SellersUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$SellersUpdateInput._({
        ..._instance._$data,
        if (seller_name != _undefined)
          'seller_name':
              (seller_name as Input$StringFieldUpdateOperationsInput?),
        if (seller_phone != _undefined)
          'seller_phone':
              (seller_phone as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsUpdateManyWithoutSellerNestedInput?),
      }));
  CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$SellersUpdateInput<TRes>
    implements CopyWith$Input$SellersUpdateInput<TRes> {
  _CopyWithStubImpl$Input$SellersUpdateInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$TransactionsUpdateManyWithoutSellerNestedInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput.stub(
              _res);
}

class Input$TransactionsUpdateManyWithoutSellerNestedInput {
  factory Input$TransactionsUpdateManyWithoutSellerNestedInput({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      Input$TransactionsUpdateManyWithoutSellerNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$TransactionsUpdateManyWithoutSellerNestedInput._(this._$data);

  factory Input$TransactionsUpdateManyWithoutSellerNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutSellerInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutSellerInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) => Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput
              .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) => Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput
              .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateManyWithWhereWithoutSellerInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsUpdateManyWithoutSellerNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutSellerInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutSellerInput>?);
  List<Input$TransactionsCreateOrConnectWithoutSellerInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutSellerInput>?);
  List<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? get upsert =>
      (_$data['upsert']
          as List<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>?);
  List<Input$TransactionsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? get update =>
      (_$data['update']
          as List<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>?);
  List<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>?
      get updateMany => (_$data['updateMany']
          as List<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>?);
  List<Input$TransactionsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$TransactionsScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<
          Input$TransactionsUpdateManyWithoutSellerNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithoutSellerNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput(
    Input$TransactionsUpdateManyWithoutSellerNestedInput instance,
    TRes Function(Input$TransactionsUpdateManyWithoutSellerNestedInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput;

  factory CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput;

  TRes call({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutSellerInput<
                      Input$TransactionsCreateWithoutSellerInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
                      Input$TransactionsCreateOrConnectWithoutSellerInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
                      Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>>?)
          _fn);
  TRes update(
      Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
                      Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
                      Input$TransactionsUpdateManyWithWhereWithoutSellerInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithoutSellerNestedInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithoutSellerNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithoutSellerNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$TransactionsCreateWithoutSellerInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutSellerInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$TransactionsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$TransactionsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$TransactionsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$TransactionsUpdateManyWithWhereWithoutSellerInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$TransactionsScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutSellerInput<
                          Input$TransactionsCreateWithoutSellerInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutSellerInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput<
                          Input$TransactionsCreateOrConnectWithoutSellerInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutSellerInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
                          Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
                          Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
                          Input$TransactionsUpdateManyWithWhereWithoutSellerInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutSellerNestedInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutSellerNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutSellerInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutSellerInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutSellerInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
}

class Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput {
  factory Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutSellerInput update,
    required Input$TransactionsCreateWithoutSellerInput create,
  }) =>
      Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput._(this._$data);

  factory Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$TransactionsUpdateWithoutSellerInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutSellerInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutSellerInput get update =>
      (_$data['update'] as Input$TransactionsUpdateWithoutSellerInput);
  Input$TransactionsCreateWithoutSellerInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutSellerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
          Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput(
    Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput instance,
    TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput;

  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutSellerInput? update,
    Input$TransactionsCreateWithoutSellerInput? create,
  });
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get update;
  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$TransactionsUpdateWithoutSellerInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutSellerInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionsUpdateWithoutSellerInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutSellerInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutSellerInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutSellerInput? update,
    Input$TransactionsCreateWithoutSellerInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get update =>
      CopyWith$Input$TransactionsUpdateWithoutSellerInput.stub(_res);
  CopyWith$Input$TransactionsCreateWithoutSellerInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutSellerInput.stub(_res);
}

class Input$TransactionsUpdateWithoutSellerInput {
  factory Input$TransactionsUpdateWithoutSellerInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      Input$TransactionsUpdateWithoutSellerInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (city != null) r'city': city,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsUpdateWithoutSellerInput._(this._$data);

  factory Input$TransactionsUpdateWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFieldUpdateOperationsInput.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
              (l$city as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateWithoutSellerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get product_id =>
      (_$data['product_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_name =>
      (_$data['customer_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get address =>
      (_$data['address'] as Input$StringFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$DateTimeFieldUpdateOperationsInput? get date =>
      (_$data['date'] as Input$DateTimeFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? get city =>
      (_$data['city']
          as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
      get status => (_$data['status']
          as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$PayementsUpdateManyWithoutTransactionNestedInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsUpdateManyWithoutTransactionNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithoutSellerInput<
          Input$TransactionsUpdateWithoutSellerInput>
      get copyWith => CopyWith$Input$TransactionsUpdateWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateWithoutSellerInput(
    Input$TransactionsUpdateWithoutSellerInput instance,
    TRes Function(Input$TransactionsUpdateWithoutSellerInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithoutSellerInput;

  factory CopyWith$Input$TransactionsUpdateWithoutSellerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithoutSellerInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateWithoutSellerInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsUpdateWithoutSellerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithoutSellerInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id':
              (transaction_id as Input$IntFieldUpdateOperationsInput?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFieldUpdateOperationsInput?),
        if (customer_name != _undefined)
          'customer_name':
              (customer_name as Input$StringFieldUpdateOperationsInput?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringFieldUpdateOperationsInput?),
        if (address != _undefined)
          'address': (address as Input$StringFieldUpdateOperationsInput?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (date != _undefined)
          'date': (date as Input$DateTimeFieldUpdateOperationsInput?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatFieldUpdateOperationsInput?),
        if (totalPayement != _undefined)
          'totalPayement':
              (totalPayement as Input$FloatFieldUpdateOperationsInput?),
        if (city != _undefined)
          'city': (city
              as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (transaction_type != _undefined)
          'transaction_type': (transaction_type
              as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsUpdateManyWithoutTransactionNestedInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithoutSellerInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithoutSellerInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput {
  factory Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutSellerInput data,
  }) =>
      Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput._(this._$data);

  factory Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateWithoutSellerInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutSellerInput get data =>
      (_$data['data'] as Input$TransactionsUpdateWithoutSellerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
          Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput(
    Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput instance,
    TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput;

  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutSellerInput? data,
  });
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateWithoutSellerInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionsUpdateWithoutSellerInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutSellerInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutSellerInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutSellerInput<TRes> get data =>
      CopyWith$Input$TransactionsUpdateWithoutSellerInput.stub(_res);
}

class Input$TransactionsUpdateManyWithWhereWithoutSellerInput {
  factory Input$TransactionsUpdateManyWithWhereWithoutSellerInput({
    required Input$TransactionsScalarWhereInput where,
    required Input$TransactionsUpdateManyMutationInput data,
  }) =>
      Input$TransactionsUpdateManyWithWhereWithoutSellerInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateManyWithWhereWithoutSellerInput._(this._$data);

  factory Input$TransactionsUpdateManyWithWhereWithoutSellerInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateManyWithWhereWithoutSellerInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsScalarWhereInput get where =>
      (_$data['where'] as Input$TransactionsScalarWhereInput);
  Input$TransactionsUpdateManyMutationInput get data =>
      (_$data['data'] as Input$TransactionsUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
          Input$TransactionsUpdateManyWithWhereWithoutSellerInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithWhereWithoutSellerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput(
    Input$TransactionsUpdateManyWithWhereWithoutSellerInput instance,
    TRes Function(Input$TransactionsUpdateManyWithWhereWithoutSellerInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput;

  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput;

  TRes call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithWhereWithoutSellerInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithWhereWithoutSellerInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithWhereWithoutSellerInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateManyMutationInput),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutSellerInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutSellerInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  }) =>
      _res;
}

class Input$SizesCreateInput {
  factory Input$SizesCreateInput({
    required int id,
    required String size,
    Input$ProductModelCreateNestedManyWithoutSizeInput? ProductModel,
  }) =>
      Input$SizesCreateInput._({
        r'id': id,
        r'size': size,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$SizesCreateInput._(this._$data);

  factory Input$SizesCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$size = data['size'];
    result$data['size'] = (l$size as String);
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelCreateNestedManyWithoutSizeInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$SizesCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String get size => (_$data['size'] as String);
  Input$ProductModelCreateNestedManyWithoutSizeInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelCreateNestedManyWithoutSizeInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$size = size;
    result$data['size'] = l$size;
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesCreateInput<Input$SizesCreateInput> get copyWith =>
      CopyWith$Input$SizesCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      l$id,
      l$size,
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesCreateInput<TRes> {
  factory CopyWith$Input$SizesCreateInput(
    Input$SizesCreateInput instance,
    TRes Function(Input$SizesCreateInput) then,
  ) = _CopyWithImpl$Input$SizesCreateInput;

  factory CopyWith$Input$SizesCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesCreateInput;

  TRes call({
    int? id,
    String? size,
    Input$ProductModelCreateNestedManyWithoutSizeInput? ProductModel,
  });
  CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$SizesCreateInput<TRes>
    implements CopyWith$Input$SizesCreateInput<TRes> {
  _CopyWithImpl$Input$SizesCreateInput(
    this._instance,
    this._then,
  );

  final Input$SizesCreateInput _instance;

  final TRes Function(Input$SizesCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$SizesCreateInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (size != _undefined && size != null) 'size': (size as String),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelCreateNestedManyWithoutSizeInput?),
      }));
  CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$SizesCreateInput<TRes>
    implements CopyWith$Input$SizesCreateInput<TRes> {
  _CopyWithStubImpl$Input$SizesCreateInput(this._res);

  TRes _res;

  call({
    int? id,
    String? size,
    Input$ProductModelCreateNestedManyWithoutSizeInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput.stub(
              _res);
}

class Input$ProductModelCreateNestedManyWithoutSizeInput {
  factory Input$ProductModelCreateNestedManyWithoutSizeInput({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      Input$ProductModelCreateNestedManyWithoutSizeInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductModelCreateNestedManyWithoutSizeInput._(this._$data);

  factory Input$ProductModelCreateNestedManyWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutSizeInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutSizeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductModelCreateNestedManyWithoutSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutSizeInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutSizeInput>?);
  List<Input$ProductModelCreateOrConnectWithoutSizeInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutSizeInput>?);
  List<Input$ProductModelWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductModelWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<
          Input$ProductModelCreateNestedManyWithoutSizeInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateNestedManyWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput(
    Input$ProductModelCreateNestedManyWithoutSizeInput instance,
    TRes Function(Input$ProductModelCreateNestedManyWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutSizeInput;

  factory CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutSizeInput;

  TRes call({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutSizeInput<
                      Input$ProductModelCreateWithoutSizeInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
                      Input$ProductModelCreateOrConnectWithoutSizeInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateNestedManyWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelCreateNestedManyWithoutSizeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductModelCreateNestedManyWithoutSizeInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$ProductModelCreateWithoutSizeInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutSizeInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductModelWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutSizeInput<
                          Input$ProductModelCreateWithoutSizeInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutSizeInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
                          Input$ProductModelCreateOrConnectWithoutSizeInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map(
              (e) => CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutSizeInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$ProductModelCreateWithoutSizeInput {
  factory Input$ProductModelCreateWithoutSizeInput({
    required int quantity,
    required Input$ProductsCreateNestedOneWithoutProductModelInput product,
    required Input$ColorsCreateNestedOneWithoutProductModelInput color,
  }) =>
      Input$ProductModelCreateWithoutSizeInput._({
        r'quantity': quantity,
        r'product': product,
        r'color': color,
      });

  Input$ProductModelCreateWithoutSizeInput._(this._$data);

  factory Input$ProductModelCreateWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$product = data['product'];
    result$data['product'] =
        Input$ProductsCreateNestedOneWithoutProductModelInput.fromJson(
            (l$product as Map<String, dynamic>));
    final l$color = data['color'];
    result$data['color'] =
        Input$ColorsCreateNestedOneWithoutProductModelInput.fromJson(
            (l$color as Map<String, dynamic>));
    return Input$ProductModelCreateWithoutSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  Input$ProductsCreateNestedOneWithoutProductModelInput get product =>
      (_$data['product']
          as Input$ProductsCreateNestedOneWithoutProductModelInput);
  Input$ColorsCreateNestedOneWithoutProductModelInput get color =>
      (_$data['color'] as Input$ColorsCreateNestedOneWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$product = product;
    result$data['product'] = l$product.toJson();
    final l$color = color;
    result$data['color'] = l$color.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateWithoutSizeInput<
          Input$ProductModelCreateWithoutSizeInput>
      get copyWith => CopyWith$Input$ProductModelCreateWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$color = color;
    return Object.hashAll([
      l$quantity,
      l$product,
      l$color,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> {
  factory CopyWith$Input$ProductModelCreateWithoutSizeInput(
    Input$ProductModelCreateWithoutSizeInput instance,
    TRes Function(Input$ProductModelCreateWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateWithoutSizeInput;

  factory CopyWith$Input$ProductModelCreateWithoutSizeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateWithoutSizeInput;

  TRes call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  });
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color;
}

class _CopyWithImpl$Input$ProductModelCreateWithoutSizeInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelCreateWithoutSizeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelCreateWithoutSizeInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (product != _undefined && product != null)
          'product': (product
              as Input$ProductsCreateNestedOneWithoutProductModelInput),
        if (color != _undefined && color != null)
          'color':
              (color as Input$ColorsCreateNestedOneWithoutProductModelInput),
      }));
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes> get color {
    final local$color = _instance.color;
    return CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput(
        local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateWithoutSizeInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateWithoutSizeInput(this._res);

  TRes _res;

  call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$ColorsCreateNestedOneWithoutProductModelInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput<TRes>
      get color =>
          CopyWith$Input$ColorsCreateNestedOneWithoutProductModelInput.stub(
              _res);
}

class Input$ProductModelCreateOrConnectWithoutSizeInput {
  factory Input$ProductModelCreateOrConnectWithoutSizeInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelCreateWithoutSizeInput create,
  }) =>
      Input$ProductModelCreateOrConnectWithoutSizeInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductModelCreateOrConnectWithoutSizeInput._(this._$data);

  factory Input$ProductModelCreateOrConnectWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductModelCreateWithoutSizeInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductModelCreateOrConnectWithoutSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelCreateWithoutSizeInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutSizeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
          Input$ProductModelCreateOrConnectWithoutSizeInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateOrConnectWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput(
    Input$ProductModelCreateOrConnectWithoutSizeInput instance,
    TRes Function(Input$ProductModelCreateOrConnectWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutSizeInput;

  factory CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutSizeInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutSizeInput? create,
  });
  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutSizeInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateOrConnectWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelCreateOrConnectWithoutSizeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelCreateOrConnectWithoutSizeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutSizeInput),
      }));
  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutSizeInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutSizeInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutSizeInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutSizeInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutSizeInput.stub(_res);
}

class Input$SizesUpdateManyMutationInput {
  factory Input$SizesUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  }) =>
      Input$SizesUpdateManyMutationInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesUpdateManyMutationInput._(this._$data);

  factory Input$SizesUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    return Input$SizesUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get id =>
      (_$data['id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get size =>
      (_$data['size'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesUpdateManyMutationInput<
          Input$SizesUpdateManyMutationInput>
      get copyWith => CopyWith$Input$SizesUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$SizesUpdateManyMutationInput(
    Input$SizesUpdateManyMutationInput instance,
    TRes Function(Input$SizesUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$SizesUpdateManyMutationInput;

  factory CopyWith$Input$SizesUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  });
}

class _CopyWithImpl$Input$SizesUpdateManyMutationInput<TRes>
    implements CopyWith$Input$SizesUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$SizesUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$SizesUpdateManyMutationInput _instance;

  final TRes Function(Input$SizesUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesUpdateManyMutationInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (size != _undefined)
          'size': (size as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$SizesUpdateManyMutationInput<TRes>
    implements CopyWith$Input$SizesUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$SizesUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  }) =>
      _res;
}

class Input$SizesUpdateInput {
  factory Input$SizesUpdateInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
    Input$ProductModelUpdateManyWithoutSizeNestedInput? ProductModel,
  }) =>
      Input$SizesUpdateInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$SizesUpdateInput._(this._$data);

  factory Input$SizesUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelUpdateManyWithoutSizeNestedInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$SizesUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get id =>
      (_$data['id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get size =>
      (_$data['size'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductModelUpdateManyWithoutSizeNestedInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelUpdateManyWithoutSizeNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('size')) {
      final l$size = size;
      result$data['size'] = l$size?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SizesUpdateInput<Input$SizesUpdateInput> get copyWith =>
      CopyWith$Input$SizesUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (_$data.containsKey('size') != other._$data.containsKey('size')) {
      return false;
    }
    if (l$size != lOther$size) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('size') ? l$size : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$SizesUpdateInput<TRes> {
  factory CopyWith$Input$SizesUpdateInput(
    Input$SizesUpdateInput instance,
    TRes Function(Input$SizesUpdateInput) then,
  ) = _CopyWithImpl$Input$SizesUpdateInput;

  factory CopyWith$Input$SizesUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
    Input$ProductModelUpdateManyWithoutSizeNestedInput? ProductModel,
  });
  CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$SizesUpdateInput<TRes>
    implements CopyWith$Input$SizesUpdateInput<TRes> {
  _CopyWithImpl$Input$SizesUpdateInput(
    this._instance,
    this._then,
  );

  final Input$SizesUpdateInput _instance;

  final TRes Function(Input$SizesUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$SizesUpdateInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (size != _undefined)
          'size': (size as Input$StringFieldUpdateOperationsInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelUpdateManyWithoutSizeNestedInput?),
      }));
  CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$SizesUpdateInput<TRes>
    implements CopyWith$Input$SizesUpdateInput<TRes> {
  _CopyWithStubImpl$Input$SizesUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
    Input$ProductModelUpdateManyWithoutSizeNestedInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput.stub(
              _res);
}

class Input$ProductModelUpdateManyWithoutSizeNestedInput {
  factory Input$ProductModelUpdateManyWithoutSizeNestedInput({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      Input$ProductModelUpdateManyWithoutSizeNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$ProductModelUpdateManyWithoutSizeNestedInput._(this._$data);

  factory Input$ProductModelUpdateManyWithoutSizeNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutSizeInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutSizeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductModelWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpdateManyWithWhereWithoutSizeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$ProductModelScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductModelUpdateManyWithoutSizeNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutSizeInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutSizeInput>?);
  List<Input$ProductModelCreateOrConnectWithoutSizeInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutSizeInput>?);
  List<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? get upsert =>
      (_$data['upsert']
          as List<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>?);
  List<Input$ProductModelWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? get update =>
      (_$data['update']
          as List<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>?);
  List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? get updateMany =>
      (_$data['updateMany']
          as List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>?);
  List<Input$ProductModelScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$ProductModelScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<
          Input$ProductModelUpdateManyWithoutSizeNestedInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithoutSizeNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput(
    Input$ProductModelUpdateManyWithoutSizeNestedInput instance,
    TRes Function(Input$ProductModelUpdateManyWithoutSizeNestedInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput;

  factory CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput;

  TRes call({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutSizeInput<
                      Input$ProductModelCreateWithoutSizeInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
                      Input$ProductModelCreateOrConnectWithoutSizeInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
                      Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>>?)
          _fn);
  TRes update(
      Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
                      Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<
                      Input$ProductModelUpdateManyWithWhereWithoutSizeInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithoutSizeNestedInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithoutSizeNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$ProductModelUpdateManyWithoutSizeNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$ProductModelCreateWithoutSizeInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutSizeInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$ProductModelWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$ProductModelWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$ProductModelWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductModelWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany
              as List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$ProductModelScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutSizeInput<
                          Input$ProductModelCreateWithoutSizeInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutSizeInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput<
                          Input$ProductModelCreateOrConnectWithoutSizeInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map(
              (e) => CopyWith$Input$ProductModelCreateOrConnectWithoutSizeInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes upsert(
          Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
                          Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
                          Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<
                          Input$ProductModelUpdateManyWithWhereWithoutSizeInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutSizeNestedInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutSizeNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutSizeInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutSizeInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutSizeInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
}

class Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput {
  factory Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutSizeInput update,
    required Input$ProductModelCreateWithoutSizeInput create,
  }) =>
      Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput._(this._$data);

  factory Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$ProductModelUpdateWithoutSizeInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductModelCreateWithoutSizeInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutSizeInput get update =>
      (_$data['update'] as Input$ProductModelUpdateWithoutSizeInput);
  Input$ProductModelCreateWithoutSizeInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutSizeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
          Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput(
    Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput instance,
    TRes Function(Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput;

  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutSizeInput? update,
    Input$ProductModelCreateWithoutSizeInput? create,
  });
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get update;
  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$ProductModelUpdateWithoutSizeInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutSizeInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductModelUpdateWithoutSizeInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutSizeInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutSizeInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutSizeInput? update,
    Input$ProductModelCreateWithoutSizeInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get update =>
      CopyWith$Input$ProductModelUpdateWithoutSizeInput.stub(_res);
  CopyWith$Input$ProductModelCreateWithoutSizeInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutSizeInput.stub(_res);
}

class Input$ProductModelUpdateWithoutSizeInput {
  factory Input$ProductModelUpdateWithoutSizeInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      Input$ProductModelUpdateWithoutSizeInput._({
        if (quantity != null) r'quantity': quantity,
        if (product != null) r'product': product,
        if (color != null) r'color': color,
      });

  Input$ProductModelUpdateWithoutSizeInput._(this._$data);

  factory Input$ProductModelUpdateWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput
              .fromJson((l$product as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .fromJson((l$color as Map<String, dynamic>));
    }
    return Input$ProductModelUpdateWithoutSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? get product =>
      (_$data['product']
          as Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput?);
  Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? get color =>
      (_$data['color']
          as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithoutSizeInput<
          Input$ProductModelUpdateWithoutSizeInput>
      get copyWith => CopyWith$Input$ProductModelUpdateWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('product') ? l$product : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> {
  factory CopyWith$Input$ProductModelUpdateWithoutSizeInput(
    Input$ProductModelUpdateWithoutSizeInput instance,
    TRes Function(Input$ProductModelUpdateWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithoutSizeInput;

  factory CopyWith$Input$ProductModelUpdateWithoutSizeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithoutSizeInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  });
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color;
}

class _CopyWithImpl$Input$ProductModelUpdateWithoutSizeInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelUpdateWithoutSizeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithoutSizeInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (product != _undefined)
          'product': (product
              as Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput?),
        if (color != _undefined)
          'color': (color
              as Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput?),
      }));
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput(
            local$color, (e) => call(color: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithoutSizeInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithoutSizeInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput? color,
  }) =>
      _res;
  CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get color =>
          CopyWith$Input$ColorsUpdateOneRequiredWithoutProductModelNestedInput
              .stub(_res);
}

class Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput {
  factory Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutSizeInput data,
  }) =>
      Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput._(this._$data);

  factory Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateWithoutSizeInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutSizeInput get data =>
      (_$data['data'] as Input$ProductModelUpdateWithoutSizeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
          Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput(
    Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput instance,
    TRes Function(Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput;

  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutSizeInput? data,
  });
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateWithoutSizeInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductModelUpdateWithoutSizeInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutSizeInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutSizeInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutSizeInput<TRes> get data =>
      CopyWith$Input$ProductModelUpdateWithoutSizeInput.stub(_res);
}

class Input$ProductModelUpdateManyWithWhereWithoutSizeInput {
  factory Input$ProductModelUpdateManyWithWhereWithoutSizeInput({
    required Input$ProductModelScalarWhereInput where,
    required Input$ProductModelUpdateManyMutationInput data,
  }) =>
      Input$ProductModelUpdateManyWithWhereWithoutSizeInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateManyWithWhereWithoutSizeInput._(this._$data);

  factory Input$ProductModelUpdateManyWithWhereWithoutSizeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateManyWithWhereWithoutSizeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelScalarWhereInput get where =>
      (_$data['where'] as Input$ProductModelScalarWhereInput);
  Input$ProductModelUpdateManyMutationInput get data =>
      (_$data['data'] as Input$ProductModelUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<
          Input$ProductModelUpdateManyWithWhereWithoutSizeInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithWhereWithoutSizeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput(
    Input$ProductModelUpdateManyWithWhereWithoutSizeInput instance,
    TRes Function(Input$ProductModelUpdateManyWithWhereWithoutSizeInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput;

  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput;

  TRes call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  });
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithWhereWithoutSizeInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithWhereWithoutSizeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateManyWithWhereWithoutSizeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateManyMutationInput),
      }));
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutSizeInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutSizeInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  }) =>
      _res;
}

class Input$TransactionProductCreateInput {
  factory Input$TransactionProductCreateInput({
    required int quantity,
    required double price,
    required String product_name,
    required Input$ProductsCreateNestedOneWithoutTransactionProductInput
        product,
  }) =>
      Input$TransactionProductCreateInput._({
        r'quantity': quantity,
        r'price': price,
        r'product_name': product_name,
        r'product': product,
      });

  Input$TransactionProductCreateInput._(this._$data);

  factory Input$TransactionProductCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$product_name = data['product_name'];
    result$data['product_name'] = (l$product_name as String);
    final l$product = data['product'];
    result$data['product'] =
        Input$ProductsCreateNestedOneWithoutTransactionProductInput.fromJson(
            (l$product as Map<String, dynamic>));
    return Input$TransactionProductCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  double get price => (_$data['price'] as double);
  String get product_name => (_$data['product_name'] as String);
  Input$ProductsCreateNestedOneWithoutTransactionProductInput get product =>
      (_$data['product']
          as Input$ProductsCreateNestedOneWithoutTransactionProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$price = price;
    result$data['price'] = l$price;
    final l$product_name = product_name;
    result$data['product_name'] = l$product_name;
    final l$product = product;
    result$data['product'] = l$product.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionProductCreateInput<
          Input$TransactionProductCreateInput>
      get copyWith => CopyWith$Input$TransactionProductCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_name = product_name;
    final lOther$product_name = other.product_name;
    if (l$product_name != lOther$product_name) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    final l$product = product;
    return Object.hashAll([
      l$quantity,
      l$price,
      l$product_name,
      l$product,
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductCreateInput<TRes> {
  factory CopyWith$Input$TransactionProductCreateInput(
    Input$TransactionProductCreateInput instance,
    TRes Function(Input$TransactionProductCreateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductCreateInput;

  factory CopyWith$Input$TransactionProductCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductCreateInput;

  TRes call({
    int? quantity,
    double? price,
    String? product_name,
    Input$ProductsCreateNestedOneWithoutTransactionProductInput? product,
  });
  CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<TRes>
      get product;
}

class _CopyWithImpl$Input$TransactionProductCreateInput<TRes>
    implements CopyWith$Input$TransactionProductCreateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductCreateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductCreateInput _instance;

  final TRes Function(Input$TransactionProductCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
    Object? product = _undefined,
  }) =>
      _then(Input$TransactionProductCreateInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (price != _undefined && price != null) 'price': (price as double),
        if (product_name != _undefined && product_name != null)
          'product_name': (product_name as String),
        if (product != _undefined && product != null)
          'product': (product
              as Input$ProductsCreateNestedOneWithoutTransactionProductInput),
      }));
  CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<TRes>
      get product {
    final local$product = _instance.product;
    return CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput(
        local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductCreateInput<TRes>
    implements CopyWith$Input$TransactionProductCreateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductCreateInput(this._res);

  TRes _res;

  call({
    int? quantity,
    double? price,
    String? product_name,
    Input$ProductsCreateNestedOneWithoutTransactionProductInput? product,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<TRes>
      get product =>
          CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput
              .stub(_res);
}

class Input$ProductsCreateNestedOneWithoutTransactionProductInput {
  factory Input$ProductsCreateNestedOneWithoutTransactionProductInput({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  }) =>
      Input$ProductsCreateNestedOneWithoutTransactionProductInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductsCreateNestedOneWithoutTransactionProductInput._(this._$data);

  factory Input$ProductsCreateNestedOneWithoutTransactionProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductsCreateWithoutTransactionProductInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductsCreateOrConnectWithoutTransactionProductInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ProductsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$ProductsCreateNestedOneWithoutTransactionProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsCreateWithoutTransactionProductInput? get create =>
      (_$data['create'] as Input$ProductsCreateWithoutTransactionProductInput?);
  Input$ProductsCreateOrConnectWithoutTransactionProductInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$ProductsCreateOrConnectWithoutTransactionProductInput?);
  Input$ProductsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ProductsWhereUniqueInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
          Input$ProductsCreateNestedOneWithoutTransactionProductInput>
      get copyWith =>
          CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductsCreateNestedOneWithoutTransactionProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('connect') ? l$connect : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
    TRes> {
  factory CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput(
    Input$ProductsCreateNestedOneWithoutTransactionProductInput instance,
    TRes Function(Input$ProductsCreateNestedOneWithoutTransactionProductInput)
        then,
  ) = _CopyWithImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput;

  factory CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput;

  TRes call({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  });
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create;
  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
            TRes> {
  _CopyWithImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateNestedOneWithoutTransactionProductInput _instance;

  final TRes Function(
      Input$ProductsCreateNestedOneWithoutTransactionProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductsCreateNestedOneWithoutTransactionProductInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as Input$ProductsCreateWithoutTransactionProductInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductsCreateOrConnectWithoutTransactionProductInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductsWhereUniqueInput?),
      }));
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateNestedOneWithoutTransactionProductInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutTransactionProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes>
      get create =>
          CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
              _res);
  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput
              .stub(_res);
}

class Input$ProductsCreateWithoutTransactionProductInput {
  factory Input$ProductsCreateWithoutTransactionProductInput({
    required int reference,
    required String name,
    required double buyingPrice,
    required double sellingPrice,
    required String description,
    required String picture,
    required Input$ProductFamilyCreateNestedOneWithoutProductsInput family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
  }) =>
      Input$ProductsCreateWithoutTransactionProductInput._({
        r'reference': reference,
        r'name': name,
        r'buyingPrice': buyingPrice,
        r'sellingPrice': sellingPrice,
        r'description': description,
        r'picture': picture,
        r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ProductsCreateWithoutTransactionProductInput._(this._$data);

  factory Input$ProductsCreateWithoutTransactionProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reference = data['reference'];
    result$data['reference'] = (l$reference as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$buyingPrice = data['buyingPrice'];
    result$data['buyingPrice'] = (l$buyingPrice as num).toDouble();
    final l$sellingPrice = data['sellingPrice'];
    result$data['sellingPrice'] = (l$sellingPrice as num).toDouble();
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    final l$family = data['family'];
    result$data['family'] =
        Input$ProductFamilyCreateNestedOneWithoutProductsInput.fromJson(
            (l$family as Map<String, dynamic>));
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelCreateNestedManyWithoutProductInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ProductsCreateWithoutTransactionProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get reference => (_$data['reference'] as int);
  String get name => (_$data['name'] as String);
  double get buyingPrice => (_$data['buyingPrice'] as double);
  double get sellingPrice => (_$data['sellingPrice'] as double);
  String get description => (_$data['description'] as String);
  String get picture => (_$data['picture'] as String);
  Input$ProductFamilyCreateNestedOneWithoutProductsInput get family =>
      (_$data['family']
          as Input$ProductFamilyCreateNestedOneWithoutProductsInput);
  Input$ProductModelCreateNestedManyWithoutProductInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelCreateNestedManyWithoutProductInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reference = reference;
    result$data['reference'] = l$reference;
    final l$name = name;
    result$data['name'] = l$name;
    final l$buyingPrice = buyingPrice;
    result$data['buyingPrice'] = l$buyingPrice;
    final l$sellingPrice = sellingPrice;
    result$data['sellingPrice'] = l$sellingPrice;
    final l$description = description;
    result$data['description'] = l$description;
    final l$picture = picture;
    result$data['picture'] = l$picture;
    final l$family = family;
    result$data['family'] = l$family.toJson();
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<
          Input$ProductsCreateWithoutTransactionProductInput>
      get copyWith =>
          CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateWithoutTransactionProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family = family;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      l$reference,
      l$name,
      l$buyingPrice,
      l$sellingPrice,
      l$description,
      l$picture,
      l$family,
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateWithoutTransactionProductInput<
    TRes> {
  factory CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
    Input$ProductsCreateWithoutTransactionProductInput instance,
    TRes Function(Input$ProductsCreateWithoutTransactionProductInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateWithoutTransactionProductInput;

  factory CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateWithoutTransactionProductInput;

  TRes call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
  });
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsCreateWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateWithoutTransactionProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateWithoutTransactionProductInput _instance;

  final TRes Function(Input$ProductsCreateWithoutTransactionProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ProductsCreateWithoutTransactionProductInput._({
        ..._instance._$data,
        if (reference != _undefined && reference != null)
          'reference': (reference as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (buyingPrice != _undefined && buyingPrice != null)
          'buyingPrice': (buyingPrice as double),
        if (sellingPrice != _undefined && sellingPrice != null)
          'sellingPrice': (sellingPrice as double),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
        if (family != _undefined && family != null)
          'family': (family
              as Input$ProductFamilyCreateNestedOneWithoutProductsInput),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelCreateNestedManyWithoutProductInput?),
      }));
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateWithoutTransactionProductInput(
      this._res);

  TRes _res;

  call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$ProductModelCreateNestedManyWithoutProductInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutProductInput.stub(
              _res);
}

class Input$ProductsCreateOrConnectWithoutTransactionProductInput {
  factory Input$ProductsCreateOrConnectWithoutTransactionProductInput({
    required Input$ProductsWhereUniqueInput where,
    required Input$ProductsCreateWithoutTransactionProductInput create,
  }) =>
      Input$ProductsCreateOrConnectWithoutTransactionProductInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductsCreateOrConnectWithoutTransactionProductInput._(this._$data);

  factory Input$ProductsCreateOrConnectWithoutTransactionProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductsCreateWithoutTransactionProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductsCreateOrConnectWithoutTransactionProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Input$ProductsCreateWithoutTransactionProductInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutTransactionProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
          Input$ProductsCreateOrConnectWithoutTransactionProductInput>
      get copyWith =>
          CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductsCreateOrConnectWithoutTransactionProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
    TRes> {
  factory CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
    Input$ProductsCreateOrConnectWithoutTransactionProductInput instance,
    TRes Function(Input$ProductsCreateOrConnectWithoutTransactionProductInput)
        then,
  ) = _CopyWithImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput;

  factory CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput;

  TRes call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutTransactionProductInput? create,
  });
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
            TRes> {
  _CopyWithImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateOrConnectWithoutTransactionProductInput _instance;

  final TRes Function(
      Input$ProductsCreateOrConnectWithoutTransactionProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsCreateOrConnectWithoutTransactionProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$ProductsCreateWithoutTransactionProductInput),
      }));
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutTransactionProductInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes>
      get create =>
          CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
              _res);
}

class Input$TransactionProductUpdateInput {
  factory Input$TransactionProductUpdateInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
    Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?
        product,
  }) =>
      Input$TransactionProductUpdateInput._({
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
        if (product != null) r'product': product,
      });

  Input$TransactionProductUpdateInput._(this._$data);

  factory Input$TransactionProductUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('product_name')) {
      final l$product_name = data['product_name'];
      result$data['product_name'] = l$product_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$product_name as Map<String, dynamic>));
    }
    if (data.containsKey('product')) {
      final l$product = data['product'];
      result$data['product'] = l$product == null
          ? null
          : Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
              .fromJson((l$product as Map<String, dynamic>));
    }
    return Input$TransactionProductUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get price =>
      (_$data['price'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get product_name =>
      (_$data['product_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?
      get product => (_$data['product']
          as Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    if (_$data.containsKey('product_name')) {
      final l$product_name = product_name;
      result$data['product_name'] = l$product_name?.toJson();
    }
    if (_$data.containsKey('product')) {
      final l$product = product;
      result$data['product'] = l$product?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionProductUpdateInput<
          Input$TransactionProductUpdateInput>
      get copyWith => CopyWith$Input$TransactionProductUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_name = product_name;
    final lOther$product_name = other.product_name;
    if (_$data.containsKey('product_name') !=
        other._$data.containsKey('product_name')) {
      return false;
    }
    if (l$product_name != lOther$product_name) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (_$data.containsKey('product') != other._$data.containsKey('product')) {
      return false;
    }
    if (l$product != lOther$product) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    final l$product = product;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
      _$data.containsKey('product') ? l$product : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductUpdateInput<TRes> {
  factory CopyWith$Input$TransactionProductUpdateInput(
    Input$TransactionProductUpdateInput instance,
    TRes Function(Input$TransactionProductUpdateInput) then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateInput;

  factory CopyWith$Input$TransactionProductUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
    Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?
        product,
  });
  CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
      TRes> get product;
}

class _CopyWithImpl$Input$TransactionProductUpdateInput<TRes>
    implements CopyWith$Input$TransactionProductUpdateInput<TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateInput _instance;

  final TRes Function(Input$TransactionProductUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
    Object? product = _undefined,
  }) =>
      _then(Input$TransactionProductUpdateInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (price != _undefined)
          'price': (price as Input$FloatFieldUpdateOperationsInput?),
        if (product_name != _undefined)
          'product_name':
              (product_name as Input$StringFieldUpdateOperationsInput?),
        if (product != _undefined)
          'product': (product
              as Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?),
      }));
  CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
      TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductUpdateInput<TRes>
    implements CopyWith$Input$TransactionProductUpdateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
    Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput?
        product,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
          TRes>
      get product =>
          CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
              .stub(_res);
}

class Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput {
  factory Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsUpsertWithoutTransactionProductInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutTransactionProductInput? update,
  }) =>
      Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput._(
      this._$data);

  factory Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductsCreateWithoutTransactionProductInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductsCreateOrConnectWithoutTransactionProductInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$ProductsUpsertWithoutTransactionProductInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ProductsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$ProductsUpdateWithoutTransactionProductInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsCreateWithoutTransactionProductInput? get create =>
      (_$data['create'] as Input$ProductsCreateWithoutTransactionProductInput?);
  Input$ProductsCreateOrConnectWithoutTransactionProductInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$ProductsCreateOrConnectWithoutTransactionProductInput?);
  Input$ProductsUpsertWithoutTransactionProductInput? get upsert =>
      (_$data['upsert'] as Input$ProductsUpsertWithoutTransactionProductInput?);
  Input$ProductsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ProductsWhereUniqueInput?);
  Input$ProductsUpdateWithoutTransactionProductInput? get update =>
      (_$data['update'] as Input$ProductsUpdateWithoutTransactionProductInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.toJson();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] = l$connectOrCreate?.toJson();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.toJson();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.toJson();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
          Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput>
      get copyWith =>
          CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$connect = connect;
    final l$update = update;
    return Object.hashAll([
      _$data.containsKey('create') ? l$create : const {},
      _$data.containsKey('connectOrCreate') ? l$connectOrCreate : const {},
      _$data.containsKey('upsert') ? l$upsert : const {},
      _$data.containsKey('connect') ? l$connect : const {},
      _$data.containsKey('update') ? l$update : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
    TRes> {
  factory CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput(
    Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
        instance,
    TRes Function(
            Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput)
        then,
  ) = _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput;

  factory CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput;

  TRes call({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsUpsertWithoutTransactionProductInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutTransactionProductInput? update,
  });
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create;
  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate;
  CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<TRes> get upsert;
  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> get update;
}

class _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
            TRes> {
  _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
      _instance;

  final TRes Function(
          Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput
          ._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as Input$ProductsCreateWithoutTransactionProductInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductsCreateOrConnectWithoutTransactionProductInput?),
        if (upsert != _undefined)
          'upsert':
              (upsert as Input$ProductsUpsertWithoutTransactionProductInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductsWhereUniqueInput?),
        if (update != _undefined)
          'update':
              (update as Input$ProductsUpdateWithoutTransactionProductInput?),
      }));
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$ProductsUpsertWithoutTransactionProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsUpsertWithoutTransactionProductInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$ProductsUpdateWithoutTransactionProductInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsUpdateWithoutTransactionProductInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutTransactionProductNestedInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsCreateWithoutTransactionProductInput? create,
    Input$ProductsCreateOrConnectWithoutTransactionProductInput?
        connectOrCreate,
    Input$ProductsUpsertWithoutTransactionProductInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutTransactionProductInput? update,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes>
      get create =>
          CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
              _res);
  CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductsCreateOrConnectWithoutTransactionProductInput
              .stub(_res);
  CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<TRes>
      get upsert =>
          CopyWith$Input$ProductsUpsertWithoutTransactionProductInput.stub(
              _res);
  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes>
      get update =>
          CopyWith$Input$ProductsUpdateWithoutTransactionProductInput.stub(
              _res);
}

class Input$ProductsUpsertWithoutTransactionProductInput {
  factory Input$ProductsUpsertWithoutTransactionProductInput({
    required Input$ProductsUpdateWithoutTransactionProductInput update,
    required Input$ProductsCreateWithoutTransactionProductInput create,
  }) =>
      Input$ProductsUpsertWithoutTransactionProductInput._({
        r'update': update,
        r'create': create,
      });

  Input$ProductsUpsertWithoutTransactionProductInput._(this._$data);

  factory Input$ProductsUpsertWithoutTransactionProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$ProductsUpdateWithoutTransactionProductInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductsCreateWithoutTransactionProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductsUpsertWithoutTransactionProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsUpdateWithoutTransactionProductInput get update =>
      (_$data['update'] as Input$ProductsUpdateWithoutTransactionProductInput);
  Input$ProductsCreateWithoutTransactionProductInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutTransactionProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<
          Input$ProductsUpsertWithoutTransactionProductInput>
      get copyWith =>
          CopyWith$Input$ProductsUpsertWithoutTransactionProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpsertWithoutTransactionProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<
    TRes> {
  factory CopyWith$Input$ProductsUpsertWithoutTransactionProductInput(
    Input$ProductsUpsertWithoutTransactionProductInput instance,
    TRes Function(Input$ProductsUpsertWithoutTransactionProductInput) then,
  ) = _CopyWithImpl$Input$ProductsUpsertWithoutTransactionProductInput;

  factory CopyWith$Input$ProductsUpsertWithoutTransactionProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpsertWithoutTransactionProductInput;

  TRes call({
    Input$ProductsUpdateWithoutTransactionProductInput? update,
    Input$ProductsCreateWithoutTransactionProductInput? create,
  });
  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> get update;
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsUpsertWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<TRes> {
  _CopyWithImpl$Input$ProductsUpsertWithoutTransactionProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpsertWithoutTransactionProductInput _instance;

  final TRes Function(Input$ProductsUpsertWithoutTransactionProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsUpsertWithoutTransactionProductInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update':
              (update as Input$ProductsUpdateWithoutTransactionProductInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$ProductsCreateWithoutTransactionProductInput),
      }));
  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductsUpdateWithoutTransactionProductInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutTransactionProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpsertWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsUpsertWithoutTransactionProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpsertWithoutTransactionProductInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsUpdateWithoutTransactionProductInput? update,
    Input$ProductsCreateWithoutTransactionProductInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes>
      get update =>
          CopyWith$Input$ProductsUpdateWithoutTransactionProductInput.stub(
              _res);
  CopyWith$Input$ProductsCreateWithoutTransactionProductInput<TRes>
      get create =>
          CopyWith$Input$ProductsCreateWithoutTransactionProductInput.stub(
              _res);
}

class Input$ProductsUpdateWithoutTransactionProductInput {
  factory Input$ProductsUpdateWithoutTransactionProductInput({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
  }) =>
      Input$ProductsUpdateWithoutTransactionProductInput._({
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family != null) r'family': family,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ProductsUpdateWithoutTransactionProductInput._(this._$data);

  factory Input$ProductsUpdateWithoutTransactionProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reference')) {
      final l$reference = data['reference'];
      result$data['reference'] = l$reference == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$reference as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('buyingPrice')) {
      final l$buyingPrice = data['buyingPrice'];
      result$data['buyingPrice'] = l$buyingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$buyingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('sellingPrice')) {
      final l$sellingPrice = data['sellingPrice'];
      result$data['sellingPrice'] = l$sellingPrice == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$sellingPrice as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = l$picture == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$picture as Map<String, dynamic>));
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput
              .fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelUpdateManyWithoutProductNestedInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ProductsUpdateWithoutTransactionProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get reference =>
      (_$data['reference'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get buyingPrice =>
      (_$data['buyingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get sellingPrice =>
      (_$data['sellingPrice'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get picture =>
      (_$data['picture'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? get family =>
      (_$data['family']
          as Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput?);
  Input$ProductModelUpdateManyWithoutProductNestedInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelUpdateManyWithoutProductNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reference')) {
      final l$reference = reference;
      result$data['reference'] = l$reference?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('buyingPrice')) {
      final l$buyingPrice = buyingPrice;
      result$data['buyingPrice'] = l$buyingPrice?.toJson();
    }
    if (_$data.containsKey('sellingPrice')) {
      final l$sellingPrice = sellingPrice;
      result$data['sellingPrice'] = l$sellingPrice?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<
          Input$ProductsUpdateWithoutTransactionProductInput>
      get copyWith =>
          CopyWith$Input$ProductsUpdateWithoutTransactionProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateWithoutTransactionProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (_$data.containsKey('reference') !=
        other._$data.containsKey('reference')) {
      return false;
    }
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (_$data.containsKey('buyingPrice') !=
        other._$data.containsKey('buyingPrice')) {
      return false;
    }
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (_$data.containsKey('sellingPrice') !=
        other._$data.containsKey('sellingPrice')) {
      return false;
    }
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (_$data.containsKey('ProductModel') !=
        other._$data.containsKey('ProductModel')) {
      return false;
    }
    if (l$ProductModel != lOther$ProductModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference = reference;
    final l$name = name;
    final l$buyingPrice = buyingPrice;
    final l$sellingPrice = sellingPrice;
    final l$description = description;
    final l$picture = picture;
    final l$family = family;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<
    TRes> {
  factory CopyWith$Input$ProductsUpdateWithoutTransactionProductInput(
    Input$ProductsUpdateWithoutTransactionProductInput instance,
    TRes Function(Input$ProductsUpdateWithoutTransactionProductInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateWithoutTransactionProductInput;

  factory CopyWith$Input$ProductsUpdateWithoutTransactionProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateWithoutTransactionProductInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
  });
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ProductsUpdateWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateWithoutTransactionProductInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateWithoutTransactionProductInput _instance;

  final TRes Function(Input$ProductsUpdateWithoutTransactionProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ProductsUpdateWithoutTransactionProductInput._({
        ..._instance._$data,
        if (reference != _undefined)
          'reference': (reference as Input$IntFieldUpdateOperationsInput?),
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (buyingPrice != _undefined)
          'buyingPrice':
              (buyingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (sellingPrice != _undefined)
          'sellingPrice':
              (sellingPrice as Input$FloatFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (picture != _undefined)
          'picture': (picture as Input$StringFieldUpdateOperationsInput?),
        if (family != _undefined)
          'family': (family
              as Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelUpdateManyWithoutProductNestedInput?),
      }));
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateWithoutTransactionProductInput<TRes>
    implements
        CopyWith$Input$ProductsUpdateWithoutTransactionProductInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateWithoutTransactionProductInput(
      this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$ProductModelUpdateManyWithoutProductNestedInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelUpdateManyWithoutProductNestedInput.stub(
              _res);
}

class Input$TransactionStatusCreateInput {
  factory Input$TransactionStatusCreateInput({
    required String name,
    required String description,
    Input$TransactionsCreateNestedManyWithoutStatusInput? Transactions,
  }) =>
      Input$TransactionStatusCreateInput._({
        r'name': name,
        r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionStatusCreateInput._(this._$data);

  factory Input$TransactionStatusCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsCreateNestedManyWithoutStatusInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionStatusCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String get description => (_$data['description'] as String);
  Input$TransactionsCreateNestedManyWithoutStatusInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsCreateNestedManyWithoutStatusInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$description = description;
    result$data['description'] = l$description;
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusCreateInput<
          Input$TransactionStatusCreateInput>
      get copyWith => CopyWith$Input$TransactionStatusCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      l$name,
      l$description,
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusCreateInput<TRes> {
  factory CopyWith$Input$TransactionStatusCreateInput(
    Input$TransactionStatusCreateInput instance,
    TRes Function(Input$TransactionStatusCreateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusCreateInput;

  factory CopyWith$Input$TransactionStatusCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusCreateInput;

  TRes call({
    String? name,
    String? description,
    Input$TransactionsCreateNestedManyWithoutStatusInput? Transactions,
  });
  CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionStatusCreateInput<TRes>
    implements CopyWith$Input$TransactionStatusCreateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusCreateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusCreateInput _instance;

  final TRes Function(Input$TransactionStatusCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionStatusCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsCreateNestedManyWithoutStatusInput?),
      }));
  CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusCreateInput<TRes>
    implements CopyWith$Input$TransactionStatusCreateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusCreateInput(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    Input$TransactionsCreateNestedManyWithoutStatusInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput.stub(
              _res);
}

class Input$TransactionsCreateNestedManyWithoutStatusInput {
  factory Input$TransactionsCreateNestedManyWithoutStatusInput({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      Input$TransactionsCreateNestedManyWithoutStatusInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionsCreateNestedManyWithoutStatusInput._(this._$data);

  factory Input$TransactionsCreateNestedManyWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutStatusInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutStatusInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsCreateNestedManyWithoutStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutStatusInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutStatusInput>?);
  List<Input$TransactionsCreateOrConnectWithoutStatusInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutStatusInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<
          Input$TransactionsCreateNestedManyWithoutStatusInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateNestedManyWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput(
    Input$TransactionsCreateNestedManyWithoutStatusInput instance,
    TRes Function(Input$TransactionsCreateNestedManyWithoutStatusInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutStatusInput;

  factory CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutStatusInput;

  TRes call({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutStatusInput<
                      Input$TransactionsCreateWithoutStatusInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
                      Input$TransactionsCreateOrConnectWithoutStatusInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateNestedManyWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsCreateNestedManyWithoutStatusInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionsCreateNestedManyWithoutStatusInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$TransactionsCreateWithoutStatusInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutStatusInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutStatusInput<
                          Input$TransactionsCreateWithoutStatusInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutStatusInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
                          Input$TransactionsCreateOrConnectWithoutStatusInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutStatusInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutStatusInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$TransactionsCreateWithoutStatusInput {
  factory Input$TransactionsCreateWithoutStatusInput({
    required int transaction_id,
    required int product_id,
    required String customer_name,
    required String customer_phone,
    required String address,
    required int quantity,
    required String date,
    required double remainingPayement,
    required double totalPayement,
    required Input$SellersCreateNestedOneWithoutTransactionsInput seller,
    required Input$CityCreateNestedOneWithoutTransactionsInput city,
    required Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
        transaction_type,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      Input$TransactionsCreateWithoutStatusInput._({
        r'transaction_id': transaction_id,
        r'product_id': product_id,
        r'customer_name': customer_name,
        r'customer_phone': customer_phone,
        r'address': address,
        r'quantity': quantity,
        r'date': date,
        r'remainingPayement': remainingPayement,
        r'totalPayement': totalPayement,
        r'seller': seller,
        r'city': city,
        r'transaction_type': transaction_type,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsCreateWithoutStatusInput._(this._$data);

  factory Input$TransactionsCreateWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$customer_name = data['customer_name'];
    result$data['customer_name'] = (l$customer_name as String);
    final l$customer_phone = data['customer_phone'];
    result$data['customer_phone'] = (l$customer_phone as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$remainingPayement = data['remainingPayement'];
    result$data['remainingPayement'] = (l$remainingPayement as num).toDouble();
    final l$totalPayement = data['totalPayement'];
    result$data['totalPayement'] = (l$totalPayement as num).toDouble();
    final l$seller = data['seller'];
    result$data['seller'] =
        Input$SellersCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$seller as Map<String, dynamic>));
    final l$city = data['city'];
    result$data['city'] =
        Input$CityCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$city as Map<String, dynamic>));
    final l$transaction_type = data['transaction_type'];
    result$data['transaction_type'] =
        Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$transaction_type as Map<String, dynamic>));
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsCreateWithoutStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get product_id => (_$data['product_id'] as int);
  String get customer_name => (_$data['customer_name'] as String);
  String get customer_phone => (_$data['customer_phone'] as String);
  String get address => (_$data['address'] as String);
  int get quantity => (_$data['quantity'] as int);
  String get date => (_$data['date'] as String);
  double get remainingPayement => (_$data['remainingPayement'] as double);
  double get totalPayement => (_$data['totalPayement'] as double);
  Input$SellersCreateNestedOneWithoutTransactionsInput get seller =>
      (_$data['seller']
          as Input$SellersCreateNestedOneWithoutTransactionsInput);
  Input$CityCreateNestedOneWithoutTransactionsInput get city =>
      (_$data['city'] as Input$CityCreateNestedOneWithoutTransactionsInput);
  Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput);
  Input$PayementsCreateNestedManyWithoutTransactionInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsCreateNestedManyWithoutTransactionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$customer_name = customer_name;
    result$data['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    result$data['customer_phone'] = l$customer_phone;
    final l$address = address;
    result$data['address'] = l$address;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$date = date;
    result$data['date'] = l$date;
    final l$remainingPayement = remainingPayement;
    result$data['remainingPayement'] = l$remainingPayement;
    final l$totalPayement = totalPayement;
    result$data['totalPayement'] = l$totalPayement;
    final l$seller = seller;
    result$data['seller'] = l$seller.toJson();
    final l$city = city;
    result$data['city'] = l$city.toJson();
    final l$transaction_type = transaction_type;
    result$data['transaction_type'] = l$transaction_type.toJson();
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateWithoutStatusInput<
          Input$TransactionsCreateWithoutStatusInput>
      get copyWith => CopyWith$Input$TransactionsCreateWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$Payements = Payements;
    return Object.hashAll([
      l$transaction_id,
      l$product_id,
      l$customer_name,
      l$customer_phone,
      l$address,
      l$quantity,
      l$date,
      l$remainingPayement,
      l$totalPayement,
      l$seller,
      l$city,
      l$transaction_type,
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> {
  factory CopyWith$Input$TransactionsCreateWithoutStatusInput(
    Input$TransactionsCreateWithoutStatusInput instance,
    TRes Function(Input$TransactionsCreateWithoutStatusInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateWithoutStatusInput;

  factory CopyWith$Input$TransactionsCreateWithoutStatusInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateWithoutStatusInput;

  TRes call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsCreateWithoutStatusInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsCreateWithoutStatusInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsCreateWithoutStatusInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (customer_name != _undefined && customer_name != null)
          'customer_name': (customer_name as String),
        if (customer_phone != _undefined && customer_phone != null)
          'customer_phone': (customer_phone as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (date != _undefined && date != null) 'date': (date as String),
        if (remainingPayement != _undefined && remainingPayement != null)
          'remainingPayement': (remainingPayement as double),
        if (totalPayement != _undefined && totalPayement != null)
          'totalPayement': (totalPayement as double),
        if (seller != _undefined && seller != null)
          'seller':
              (seller as Input$SellersCreateNestedOneWithoutTransactionsInput),
        if (city != _undefined && city != null)
          'city': (city as Input$CityCreateNestedOneWithoutTransactionsInput),
        if (transaction_type != _undefined && transaction_type != null)
          'transaction_type': (transaction_type
              as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsCreateNestedManyWithoutTransactionInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsCreateWithoutStatusInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateWithoutStatusInput(this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsCreateOrConnectWithoutStatusInput {
  factory Input$TransactionsCreateOrConnectWithoutStatusInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsCreateWithoutStatusInput create,
  }) =>
      Input$TransactionsCreateOrConnectWithoutStatusInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionsCreateOrConnectWithoutStatusInput._(this._$data);

  factory Input$TransactionsCreateOrConnectWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutStatusInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsCreateOrConnectWithoutStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsCreateWithoutStatusInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutStatusInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
          Input$TransactionsCreateOrConnectWithoutStatusInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateOrConnectWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput(
    Input$TransactionsCreateOrConnectWithoutStatusInput instance,
    TRes Function(Input$TransactionsCreateOrConnectWithoutStatusInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutStatusInput;

  factory CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutStatusInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutStatusInput? create,
  });
  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutStatusInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateOrConnectWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsCreateOrConnectWithoutStatusInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsCreateOrConnectWithoutStatusInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutStatusInput),
      }));
  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutStatusInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutStatusInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutStatusInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutStatusInput.stub(_res);
}

class Input$TransactionStatusUpdateManyMutationInput {
  factory Input$TransactionStatusUpdateManyMutationInput({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      Input$TransactionStatusUpdateManyMutationInput._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusUpdateManyMutationInput._(this._$data);

  factory Input$TransactionStatusUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    return Input$TransactionStatusUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusUpdateManyMutationInput<
          Input$TransactionStatusUpdateManyMutationInput>
      get copyWith => CopyWith$Input$TransactionStatusUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$TransactionStatusUpdateManyMutationInput(
    Input$TransactionStatusUpdateManyMutationInput instance,
    TRes Function(Input$TransactionStatusUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusUpdateManyMutationInput;

  factory CopyWith$Input$TransactionStatusUpdateManyMutationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusUpdateManyMutationInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionStatusUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusUpdateManyMutationInput _instance;

  final TRes Function(Input$TransactionStatusUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusUpdateManyMutationInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionStatusUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      _res;
}

class Input$TransactionStatusUpdateInput {
  factory Input$TransactionStatusUpdateInput({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutStatusNestedInput? Transactions,
  }) =>
      Input$TransactionStatusUpdateInput._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionStatusUpdateInput._(this._$data);

  factory Input$TransactionStatusUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsUpdateManyWithoutStatusNestedInput.fromJson(
              (l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionStatusUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get name =>
      (_$data['name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$TransactionsUpdateManyWithoutStatusNestedInput? get Transactions =>
      (_$data['Transactions']
          as Input$TransactionsUpdateManyWithoutStatusNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionStatusUpdateInput<
          Input$TransactionStatusUpdateInput>
      get copyWith => CopyWith$Input$TransactionStatusUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionStatusUpdateInput<TRes> {
  factory CopyWith$Input$TransactionStatusUpdateInput(
    Input$TransactionStatusUpdateInput instance,
    TRes Function(Input$TransactionStatusUpdateInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusUpdateInput;

  factory CopyWith$Input$TransactionStatusUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusUpdateInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutStatusNestedInput? Transactions,
  });
  CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionStatusUpdateInput<TRes>
    implements CopyWith$Input$TransactionStatusUpdateInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusUpdateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusUpdateInput _instance;

  final TRes Function(Input$TransactionStatusUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionStatusUpdateInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsUpdateManyWithoutStatusNestedInput?),
      }));
  CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusUpdateInput<TRes>
    implements CopyWith$Input$TransactionStatusUpdateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusUpdateInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutStatusNestedInput? Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput.stub(
              _res);
}

class Input$TransactionsUpdateManyWithoutStatusNestedInput {
  factory Input$TransactionsUpdateManyWithoutStatusNestedInput({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      Input$TransactionsUpdateManyWithoutStatusNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$TransactionsUpdateManyWithoutStatusNestedInput._(this._$data);

  factory Input$TransactionsUpdateManyWithoutStatusNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$TransactionsCreateWithoutStatusInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutStatusInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) => Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput
              .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) => Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput
              .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateManyWithWhereWithoutStatusInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsUpdateManyWithoutStatusNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutStatusInput>? get create =>
      (_$data['create'] as List<Input$TransactionsCreateWithoutStatusInput>?);
  List<Input$TransactionsCreateOrConnectWithoutStatusInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionsCreateOrConnectWithoutStatusInput>?);
  List<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? get upsert =>
      (_$data['upsert']
          as List<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>?);
  List<Input$TransactionsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? get update =>
      (_$data['update']
          as List<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>?);
  List<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>?
      get updateMany => (_$data['updateMany']
          as List<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>?);
  List<Input$TransactionsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$TransactionsScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<
          Input$TransactionsUpdateManyWithoutStatusNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithoutStatusNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput(
    Input$TransactionsUpdateManyWithoutStatusNestedInput instance,
    TRes Function(Input$TransactionsUpdateManyWithoutStatusNestedInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput;

  factory CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput;

  TRes call({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutStatusInput<
                      Input$TransactionsCreateWithoutStatusInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
                      Input$TransactionsCreateOrConnectWithoutStatusInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
                      Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>>?)
          _fn);
  TRes update(
      Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
                      Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
                      Input$TransactionsUpdateManyWithWhereWithoutStatusInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithoutStatusNestedInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithoutStatusNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithoutStatusNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$TransactionsCreateWithoutStatusInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$TransactionsCreateOrConnectWithoutStatusInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$TransactionsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$TransactionsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$TransactionsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$TransactionsUpdateManyWithWhereWithoutStatusInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$TransactionsScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutStatusInput<
                          Input$TransactionsCreateWithoutStatusInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$TransactionsCreateWithoutStatusInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput<
                          Input$TransactionsCreateOrConnectWithoutStatusInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutStatusInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
                          Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
                          Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
                          Input$TransactionsUpdateManyWithWhereWithoutStatusInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutStatusNestedInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutStatusNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutStatusInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutStatusInput>? connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>? upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>? update,
    List<Input$TransactionsUpdateManyWithWhereWithoutStatusInput>? updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
}

class Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput {
  factory Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutStatusInput update,
    required Input$TransactionsCreateWithoutStatusInput create,
  }) =>
      Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput._(this._$data);

  factory Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$TransactionsUpdateWithoutStatusInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$TransactionsCreateWithoutStatusInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutStatusInput get update =>
      (_$data['update'] as Input$TransactionsUpdateWithoutStatusInput);
  Input$TransactionsCreateWithoutStatusInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutStatusInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
          Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput(
    Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput instance,
    TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput;

  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutStatusInput? update,
    Input$TransactionsCreateWithoutStatusInput? create,
  });
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get update;
  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$TransactionsUpdateWithoutStatusInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutStatusInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionsUpdateWithoutStatusInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutStatusInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutStatusInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutStatusInput? update,
    Input$TransactionsCreateWithoutStatusInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get update =>
      CopyWith$Input$TransactionsUpdateWithoutStatusInput.stub(_res);
  CopyWith$Input$TransactionsCreateWithoutStatusInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutStatusInput.stub(_res);
}

class Input$TransactionsUpdateWithoutStatusInput {
  factory Input$TransactionsUpdateWithoutStatusInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      Input$TransactionsUpdateWithoutStatusInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (seller != null) r'seller': seller,
        if (city != null) r'city': city,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsUpdateWithoutStatusInput._(this._$data);

  factory Input$TransactionsUpdateWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFieldUpdateOperationsInput.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
              (l$city as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateWithoutStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get product_id =>
      (_$data['product_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_name =>
      (_$data['customer_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get address =>
      (_$data['address'] as Input$StringFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$DateTimeFieldUpdateOperationsInput? get date =>
      (_$data['date'] as Input$DateTimeFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? get seller =>
      (_$data['seller']
          as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? get city =>
      (_$data['city']
          as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$PayementsUpdateManyWithoutTransactionNestedInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsUpdateManyWithoutTransactionNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithoutStatusInput<
          Input$TransactionsUpdateWithoutStatusInput>
      get copyWith => CopyWith$Input$TransactionsUpdateWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$Payements = Payements;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateWithoutStatusInput(
    Input$TransactionsUpdateWithoutStatusInput instance,
    TRes Function(Input$TransactionsUpdateWithoutStatusInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithoutStatusInput;

  factory CopyWith$Input$TransactionsUpdateWithoutStatusInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithoutStatusInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateWithoutStatusInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsUpdateWithoutStatusInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithoutStatusInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id':
              (transaction_id as Input$IntFieldUpdateOperationsInput?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFieldUpdateOperationsInput?),
        if (customer_name != _undefined)
          'customer_name':
              (customer_name as Input$StringFieldUpdateOperationsInput?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringFieldUpdateOperationsInput?),
        if (address != _undefined)
          'address': (address as Input$StringFieldUpdateOperationsInput?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (date != _undefined)
          'date': (date as Input$DateTimeFieldUpdateOperationsInput?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatFieldUpdateOperationsInput?),
        if (totalPayement != _undefined)
          'totalPayement':
              (totalPayement as Input$FloatFieldUpdateOperationsInput?),
        if (seller != _undefined)
          'seller': (seller
              as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (city != _undefined)
          'city': (city
              as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (transaction_type != _undefined)
          'transaction_type': (transaction_type
              as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsUpdateManyWithoutTransactionNestedInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithoutStatusInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithoutStatusInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput {
  factory Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutStatusInput data,
  }) =>
      Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput._(this._$data);

  factory Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateWithoutStatusInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutStatusInput get data =>
      (_$data['data'] as Input$TransactionsUpdateWithoutStatusInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
          Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput(
    Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput instance,
    TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput;

  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutStatusInput? data,
  });
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateWithoutStatusInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionsUpdateWithoutStatusInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutStatusInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutStatusInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutStatusInput<TRes> get data =>
      CopyWith$Input$TransactionsUpdateWithoutStatusInput.stub(_res);
}

class Input$TransactionsUpdateManyWithWhereWithoutStatusInput {
  factory Input$TransactionsUpdateManyWithWhereWithoutStatusInput({
    required Input$TransactionsScalarWhereInput where,
    required Input$TransactionsUpdateManyMutationInput data,
  }) =>
      Input$TransactionsUpdateManyWithWhereWithoutStatusInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateManyWithWhereWithoutStatusInput._(this._$data);

  factory Input$TransactionsUpdateManyWithWhereWithoutStatusInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateManyWithWhereWithoutStatusInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsScalarWhereInput get where =>
      (_$data['where'] as Input$TransactionsScalarWhereInput);
  Input$TransactionsUpdateManyMutationInput get data =>
      (_$data['data'] as Input$TransactionsUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
          Input$TransactionsUpdateManyWithWhereWithoutStatusInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithWhereWithoutStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput(
    Input$TransactionsUpdateManyWithWhereWithoutStatusInput instance,
    TRes Function(Input$TransactionsUpdateManyWithWhereWithoutStatusInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput;

  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput;

  TRes call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithWhereWithoutStatusInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithWhereWithoutStatusInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithWhereWithoutStatusInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateManyMutationInput),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutStatusInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutStatusInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  }) =>
      _res;
}

class Input$TransactionTypesCreateInput {
  factory Input$TransactionTypesCreateInput({
    required String type_name,
    required String description,
    Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?
        Transactions,
  }) =>
      Input$TransactionTypesCreateInput._({
        r'type_name': type_name,
        r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionTypesCreateInput._(this._$data);

  factory Input$TransactionTypesCreateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type_name = data['type_name'];
    result$data['type_name'] = (l$type_name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsCreateNestedManyWithoutTransaction_typeInput
              .fromJson((l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionTypesCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get type_name => (_$data['type_name'] as String);
  String get description => (_$data['description'] as String);
  Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?
      get Transactions => (_$data['Transactions']
          as Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type_name = type_name;
    result$data['type_name'] = l$type_name;
    final l$description = description;
    result$data['description'] = l$description;
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesCreateInput<Input$TransactionTypesCreateInput>
      get copyWith => CopyWith$Input$TransactionTypesCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (l$type_name != lOther$type_name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type_name = type_name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      l$type_name,
      l$description,
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesCreateInput<TRes> {
  factory CopyWith$Input$TransactionTypesCreateInput(
    Input$TransactionTypesCreateInput instance,
    TRes Function(Input$TransactionTypesCreateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesCreateInput;

  factory CopyWith$Input$TransactionTypesCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesCreateInput;

  TRes call({
    String? type_name,
    String? description,
    Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?
        Transactions,
  });
  CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionTypesCreateInput<TRes>
    implements CopyWith$Input$TransactionTypesCreateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesCreateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesCreateInput _instance;

  final TRes Function(Input$TransactionTypesCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionTypesCreateInput._({
        ..._instance._$data,
        if (type_name != _undefined && type_name != null)
          'type_name': (type_name as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?),
      }));
  CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesCreateInput<TRes>
    implements CopyWith$Input$TransactionTypesCreateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesCreateInput(this._res);

  TRes _res;

  call({
    String? type_name,
    String? description,
    Input$TransactionsCreateNestedManyWithoutTransaction_typeInput?
        Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput
              .stub(_res);
}

class Input$TransactionsCreateNestedManyWithoutTransaction_typeInput {
  factory Input$TransactionsCreateNestedManyWithoutTransaction_typeInput({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      Input$TransactionsCreateNestedManyWithoutTransaction_typeInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionsCreateNestedManyWithoutTransaction_typeInput._(this._$data);

  factory Input$TransactionsCreateNestedManyWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateWithoutTransaction_typeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutTransaction_typeInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsCreateNestedManyWithoutTransaction_typeInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutTransaction_typeInput>? get create =>
      (_$data['create']
          as List<Input$TransactionsCreateWithoutTransaction_typeInput>?);
  List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
      get connectOrCreate => (_$data['connectOrCreate'] as List<
          Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
          Input$TransactionsCreateNestedManyWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsCreateNestedManyWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$connect = connect;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput(
    Input$TransactionsCreateNestedManyWithoutTransaction_typeInput instance,
    TRes Function(
            Input$TransactionsCreateNestedManyWithoutTransaction_typeInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput;

  TRes call({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
                      Input$TransactionsCreateWithoutTransaction_typeInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
                      Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateNestedManyWithoutTransaction_typeInput
      _instance;

  final TRes Function(
      Input$TransactionsCreateNestedManyWithoutTransaction_typeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionsCreateNestedManyWithoutTransaction_typeInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as List<Input$TransactionsCreateWithoutTransaction_typeInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate as List<
              Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
                          Input$TransactionsCreateWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create?.map((e) =>
              CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
                          Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateNestedManyWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$TransactionsCreateWithoutTransaction_typeInput {
  factory Input$TransactionsCreateWithoutTransaction_typeInput({
    required int transaction_id,
    required int product_id,
    required String customer_name,
    required String customer_phone,
    required String address,
    required int quantity,
    required String date,
    required double remainingPayement,
    required double totalPayement,
    required Input$SellersCreateNestedOneWithoutTransactionsInput seller,
    required Input$CityCreateNestedOneWithoutTransactionsInput city,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      Input$TransactionsCreateWithoutTransaction_typeInput._({
        r'transaction_id': transaction_id,
        r'product_id': product_id,
        r'customer_name': customer_name,
        r'customer_phone': customer_phone,
        r'address': address,
        r'quantity': quantity,
        r'date': date,
        r'remainingPayement': remainingPayement,
        r'totalPayement': totalPayement,
        r'seller': seller,
        r'city': city,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsCreateWithoutTransaction_typeInput._(this._$data);

  factory Input$TransactionsCreateWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$customer_name = data['customer_name'];
    result$data['customer_name'] = (l$customer_name as String);
    final l$customer_phone = data['customer_phone'];
    result$data['customer_phone'] = (l$customer_phone as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$remainingPayement = data['remainingPayement'];
    result$data['remainingPayement'] = (l$remainingPayement as num).toDouble();
    final l$totalPayement = data['totalPayement'];
    result$data['totalPayement'] = (l$totalPayement as num).toDouble();
    final l$seller = data['seller'];
    result$data['seller'] =
        Input$SellersCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$seller as Map<String, dynamic>));
    final l$city = data['city'];
    result$data['city'] =
        Input$CityCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$city as Map<String, dynamic>));
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsCreateWithoutTransaction_typeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get product_id => (_$data['product_id'] as int);
  String get customer_name => (_$data['customer_name'] as String);
  String get customer_phone => (_$data['customer_phone'] as String);
  String get address => (_$data['address'] as String);
  int get quantity => (_$data['quantity'] as int);
  String get date => (_$data['date'] as String);
  double get remainingPayement => (_$data['remainingPayement'] as double);
  double get totalPayement => (_$data['totalPayement'] as double);
  Input$SellersCreateNestedOneWithoutTransactionsInput get seller =>
      (_$data['seller']
          as Input$SellersCreateNestedOneWithoutTransactionsInput);
  Input$CityCreateNestedOneWithoutTransactionsInput get city =>
      (_$data['city'] as Input$CityCreateNestedOneWithoutTransactionsInput);
  Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? get status =>
      (_$data['status']
          as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?);
  Input$PayementsCreateNestedManyWithoutTransactionInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsCreateNestedManyWithoutTransactionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$customer_name = customer_name;
    result$data['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    result$data['customer_phone'] = l$customer_phone;
    final l$address = address;
    result$data['address'] = l$address;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$date = date;
    result$data['date'] = l$date;
    final l$remainingPayement = remainingPayement;
    result$data['remainingPayement'] = l$remainingPayement;
    final l$totalPayement = totalPayement;
    result$data['totalPayement'] = l$totalPayement;
    final l$seller = seller;
    result$data['seller'] = l$seller.toJson();
    final l$city = city;
    result$data['city'] = l$city.toJson();
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
          Input$TransactionsCreateWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      l$transaction_id,
      l$product_id,
      l$customer_name,
      l$customer_phone,
      l$address,
      l$quantity,
      l$date,
      l$remainingPayement,
      l$totalPayement,
      l$seller,
      l$city,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
    Input$TransactionsCreateWithoutTransaction_typeInput instance,
    TRes Function(Input$TransactionsCreateWithoutTransaction_typeInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateWithoutTransaction_typeInput;

  TRes call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateWithoutTransaction_typeInput _instance;

  final TRes Function(Input$TransactionsCreateWithoutTransaction_typeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsCreateWithoutTransaction_typeInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (customer_name != _undefined && customer_name != null)
          'customer_name': (customer_name as String),
        if (customer_phone != _undefined && customer_phone != null)
          'customer_phone': (customer_phone as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (date != _undefined && date != null) 'date': (date as String),
        if (remainingPayement != _undefined && remainingPayement != null)
          'remainingPayement': (remainingPayement as double),
        if (totalPayement != _undefined && totalPayement != null)
          'totalPayement': (totalPayement as double),
        if (seller != _undefined && seller != null)
          'seller':
              (seller as Input$SellersCreateNestedOneWithoutTransactionsInput),
        if (city != _undefined && city != null)
          'city': (city as Input$CityCreateNestedOneWithoutTransactionsInput),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsCreateNestedManyWithoutTransactionInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsCreateWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsCreateOrConnectWithoutTransaction_typeInput {
  factory Input$TransactionsCreateOrConnectWithoutTransaction_typeInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsCreateWithoutTransaction_typeInput create,
  }) =>
      Input$TransactionsCreateOrConnectWithoutTransaction_typeInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionsCreateOrConnectWithoutTransaction_typeInput._(this._$data);

  factory Input$TransactionsCreateOrConnectWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionsCreateWithoutTransaction_typeInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionsCreateOrConnectWithoutTransaction_typeInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsCreateWithoutTransaction_typeInput get create =>
      (_$data['create']
          as Input$TransactionsCreateWithoutTransaction_typeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
          Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsCreateOrConnectWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
    Input$TransactionsCreateOrConnectWithoutTransaction_typeInput instance,
    TRes Function(Input$TransactionsCreateOrConnectWithoutTransaction_typeInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutTransaction_typeInput? create,
  });
  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create;
}

class _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateOrConnectWithoutTransaction_typeInput _instance;

  final TRes Function(
      Input$TransactionsCreateOrConnectWithoutTransaction_typeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsCreateOrConnectWithoutTransaction_typeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionsCreateWithoutTransaction_typeInput),
      }));
  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutTransaction_typeInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create =>
          CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput.stub(
              _res);
}

class Input$TransactionTypesUpdateManyMutationInput {
  factory Input$TransactionTypesUpdateManyMutationInput({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      Input$TransactionTypesUpdateManyMutationInput._({
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesUpdateManyMutationInput._(this._$data);

  factory Input$TransactionTypesUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$type_name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    return Input$TransactionTypesUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get type_name =>
      (_$data['type_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type_name')) {
      final l$type_name = type_name;
      result$data['type_name'] = l$type_name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesUpdateManyMutationInput<
          Input$TransactionTypesUpdateManyMutationInput>
      get copyWith => CopyWith$Input$TransactionTypesUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (_$data.containsKey('type_name') !=
        other._$data.containsKey('type_name')) {
      return false;
    }
    if (l$type_name != lOther$type_name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type_name = type_name;
    final l$description = description;
    return Object.hashAll([
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$TransactionTypesUpdateManyMutationInput(
    Input$TransactionTypesUpdateManyMutationInput instance,
    TRes Function(Input$TransactionTypesUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesUpdateManyMutationInput;

  factory CopyWith$Input$TransactionTypesUpdateManyMutationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesUpdateManyMutationInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionTypesUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesUpdateManyMutationInput _instance;

  final TRes Function(Input$TransactionTypesUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesUpdateManyMutationInput._({
        ..._instance._$data,
        if (type_name != _undefined)
          'type_name': (type_name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionTypesUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      _res;
}

class Input$TransactionTypesUpdateInput {
  factory Input$TransactionTypesUpdateInput({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?
        Transactions,
  }) =>
      Input$TransactionTypesUpdateInput._({
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
        if (Transactions != null) r'Transactions': Transactions,
      });

  Input$TransactionTypesUpdateInput._(this._$data);

  factory Input$TransactionTypesUpdateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type_name')) {
      final l$type_name = data['type_name'];
      result$data['type_name'] = l$type_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$type_name as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('Transactions')) {
      final l$Transactions = data['Transactions'];
      result$data['Transactions'] = l$Transactions == null
          ? null
          : Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput
              .fromJson((l$Transactions as Map<String, dynamic>));
    }
    return Input$TransactionTypesUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFieldUpdateOperationsInput? get type_name =>
      (_$data['type_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get description =>
      (_$data['description'] as Input$StringFieldUpdateOperationsInput?);
  Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?
      get Transactions => (_$data['Transactions']
          as Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type_name')) {
      final l$type_name = type_name;
      result$data['type_name'] = l$type_name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('Transactions')) {
      final l$Transactions = Transactions;
      result$data['Transactions'] = l$Transactions?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionTypesUpdateInput<Input$TransactionTypesUpdateInput>
      get copyWith => CopyWith$Input$TransactionTypesUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (_$data.containsKey('type_name') !=
        other._$data.containsKey('type_name')) {
      return false;
    }
    if (l$type_name != lOther$type_name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$Transactions = Transactions;
    final lOther$Transactions = other.Transactions;
    if (_$data.containsKey('Transactions') !=
        other._$data.containsKey('Transactions')) {
      return false;
    }
    if (l$Transactions != lOther$Transactions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type_name = type_name;
    final l$description = description;
    final l$Transactions = Transactions;
    return Object.hashAll([
      _$data.containsKey('type_name') ? l$type_name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('Transactions') ? l$Transactions : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionTypesUpdateInput<TRes> {
  factory CopyWith$Input$TransactionTypesUpdateInput(
    Input$TransactionTypesUpdateInput instance,
    TRes Function(Input$TransactionTypesUpdateInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesUpdateInput;

  factory CopyWith$Input$TransactionTypesUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesUpdateInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?
        Transactions,
  });
  CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<TRes>
      get Transactions;
}

class _CopyWithImpl$Input$TransactionTypesUpdateInput<TRes>
    implements CopyWith$Input$TransactionTypesUpdateInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesUpdateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesUpdateInput _instance;

  final TRes Function(Input$TransactionTypesUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? description = _undefined,
    Object? Transactions = _undefined,
  }) =>
      _then(Input$TransactionTypesUpdateInput._({
        ..._instance._$data,
        if (type_name != _undefined)
          'type_name': (type_name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
        if (Transactions != _undefined)
          'Transactions': (Transactions
              as Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?),
      }));
  CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<TRes>
      get Transactions {
    final local$Transactions = _instance.Transactions;
    return local$Transactions == null
        ? CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput(
            local$Transactions, (e) => call(Transactions: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesUpdateInput<TRes>
    implements CopyWith$Input$TransactionTypesUpdateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesUpdateInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
    Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput?
        Transactions,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<TRes>
      get Transactions =>
          CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput
              .stub(_res);
}

class Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput {
  factory Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?
        upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?
        update,
    List<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?
        updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if ($set != null) r'set': $set,
        if (disconnect != null) r'disconnect': disconnect,
        if (delete != null) r'delete': delete,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
        if (updateMany != null) r'updateMany': updateMany,
        if (deleteMany != null) r'deleteMany': deleteMany,
      });

  Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput._(this._$data);

  factory Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateWithoutTransaction_typeInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsCreateOrConnectWithoutTransaction_typeInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsCreateWithoutTransaction_typeInput>? get create =>
      (_$data['create']
          as List<Input$TransactionsCreateWithoutTransaction_typeInput>?);
  List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
      get connectOrCreate => (_$data['connectOrCreate'] as List<
          Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?);
  List<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?
      get upsert => (_$data['upsert'] as List<
          Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?);
  List<Input$TransactionsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionsWhereUniqueInput>?);
  List<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?
      get update => (_$data['update'] as List<
          Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?);
  List<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?
      get updateMany => (_$data['updateMany'] as List<
          Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?);
  List<Input$TransactionsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$TransactionsScalarWhereInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('create')) {
      final l$create = create;
      result$data['create'] = l$create?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = connectOrCreate;
      result$data['connectOrCreate'] =
          l$connectOrCreate?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('disconnect')) {
      final l$disconnect = disconnect;
      result$data['disconnect'] = l$disconnect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('connect')) {
      final l$connect = connect;
      result$data['connect'] = l$connect?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('updateMany')) {
      final l$updateMany = updateMany;
      result$data['updateMany'] = l$updateMany?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('deleteMany')) {
      final l$deleteMany = deleteMany;
      result$data['deleteMany'] = l$deleteMany?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
          Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (_$data.containsKey('create') != other._$data.containsKey('create')) {
      return false;
    }
    if (l$create != null && lOther$create != null) {
      if (l$create.length != lOther$create.length) {
        return false;
      }
      for (int i = 0; i < l$create.length; i++) {
        final l$create$entry = l$create[i];
        final lOther$create$entry = lOther$create[i];
        if (l$create$entry != lOther$create$entry) {
          return false;
        }
      }
    } else if (l$create != lOther$create) {
      return false;
    }
    final l$connectOrCreate = connectOrCreate;
    final lOther$connectOrCreate = other.connectOrCreate;
    if (_$data.containsKey('connectOrCreate') !=
        other._$data.containsKey('connectOrCreate')) {
      return false;
    }
    if (l$connectOrCreate != null && lOther$connectOrCreate != null) {
      if (l$connectOrCreate.length != lOther$connectOrCreate.length) {
        return false;
      }
      for (int i = 0; i < l$connectOrCreate.length; i++) {
        final l$connectOrCreate$entry = l$connectOrCreate[i];
        final lOther$connectOrCreate$entry = lOther$connectOrCreate[i];
        if (l$connectOrCreate$entry != lOther$connectOrCreate$entry) {
          return false;
        }
      }
    } else if (l$connectOrCreate != lOther$connectOrCreate) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != null && lOther$upsert != null) {
      if (l$upsert.length != lOther$upsert.length) {
        return false;
      }
      for (int i = 0; i < l$upsert.length; i++) {
        final l$upsert$entry = l$upsert[i];
        final lOther$upsert$entry = lOther$upsert[i];
        if (l$upsert$entry != lOther$upsert$entry) {
          return false;
        }
      }
    } else if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != null && lOther$$set != null) {
      if (l$$set.length != lOther$$set.length) {
        return false;
      }
      for (int i = 0; i < l$$set.length; i++) {
        final l$$set$entry = l$$set[i];
        final lOther$$set$entry = lOther$$set[i];
        if (l$$set$entry != lOther$$set$entry) {
          return false;
        }
      }
    } else if (l$$set != lOther$$set) {
      return false;
    }
    final l$disconnect = disconnect;
    final lOther$disconnect = other.disconnect;
    if (_$data.containsKey('disconnect') !=
        other._$data.containsKey('disconnect')) {
      return false;
    }
    if (l$disconnect != null && lOther$disconnect != null) {
      if (l$disconnect.length != lOther$disconnect.length) {
        return false;
      }
      for (int i = 0; i < l$disconnect.length; i++) {
        final l$disconnect$entry = l$disconnect[i];
        final lOther$disconnect$entry = lOther$disconnect[i];
        if (l$disconnect$entry != lOther$disconnect$entry) {
          return false;
        }
      }
    } else if (l$disconnect != lOther$disconnect) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != null && lOther$delete != null) {
      if (l$delete.length != lOther$delete.length) {
        return false;
      }
      for (int i = 0; i < l$delete.length; i++) {
        final l$delete$entry = l$delete[i];
        final lOther$delete$entry = lOther$delete[i];
        if (l$delete$entry != lOther$delete$entry) {
          return false;
        }
      }
    } else if (l$delete != lOther$delete) {
      return false;
    }
    final l$connect = connect;
    final lOther$connect = other.connect;
    if (_$data.containsKey('connect') != other._$data.containsKey('connect')) {
      return false;
    }
    if (l$connect != null && lOther$connect != null) {
      if (l$connect.length != lOther$connect.length) {
        return false;
      }
      for (int i = 0; i < l$connect.length; i++) {
        final l$connect$entry = l$connect[i];
        final lOther$connect$entry = lOther$connect[i];
        if (l$connect$entry != lOther$connect$entry) {
          return false;
        }
      }
    } else if (l$connect != lOther$connect) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != null && lOther$update != null) {
      if (l$update.length != lOther$update.length) {
        return false;
      }
      for (int i = 0; i < l$update.length; i++) {
        final l$update$entry = l$update[i];
        final lOther$update$entry = lOther$update[i];
        if (l$update$entry != lOther$update$entry) {
          return false;
        }
      }
    } else if (l$update != lOther$update) {
      return false;
    }
    final l$updateMany = updateMany;
    final lOther$updateMany = other.updateMany;
    if (_$data.containsKey('updateMany') !=
        other._$data.containsKey('updateMany')) {
      return false;
    }
    if (l$updateMany != null && lOther$updateMany != null) {
      if (l$updateMany.length != lOther$updateMany.length) {
        return false;
      }
      for (int i = 0; i < l$updateMany.length; i++) {
        final l$updateMany$entry = l$updateMany[i];
        final lOther$updateMany$entry = lOther$updateMany[i];
        if (l$updateMany$entry != lOther$updateMany$entry) {
          return false;
        }
      }
    } else if (l$updateMany != lOther$updateMany) {
      return false;
    }
    final l$deleteMany = deleteMany;
    final lOther$deleteMany = other.deleteMany;
    if (_$data.containsKey('deleteMany') !=
        other._$data.containsKey('deleteMany')) {
      return false;
    }
    if (l$deleteMany != null && lOther$deleteMany != null) {
      if (l$deleteMany.length != lOther$deleteMany.length) {
        return false;
      }
      for (int i = 0; i < l$deleteMany.length; i++) {
        final l$deleteMany$entry = l$deleteMany[i];
        final lOther$deleteMany$entry = lOther$deleteMany[i];
        if (l$deleteMany$entry != lOther$deleteMany$entry) {
          return false;
        }
      }
    } else if (l$deleteMany != lOther$deleteMany) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$create = create;
    final l$connectOrCreate = connectOrCreate;
    final l$upsert = upsert;
    final l$$set = $set;
    final l$disconnect = disconnect;
    final l$delete = delete;
    final l$connect = connect;
    final l$update = update;
    final l$updateMany = updateMany;
    final l$deleteMany = deleteMany;
    return Object.hashAll([
      _$data.containsKey('create')
          ? l$create == null
              ? null
              : Object.hashAll(l$create.map((v) => v))
          : const {},
      _$data.containsKey('connectOrCreate')
          ? l$connectOrCreate == null
              ? null
              : Object.hashAll(l$connectOrCreate.map((v) => v))
          : const {},
      _$data.containsKey('upsert')
          ? l$upsert == null
              ? null
              : Object.hashAll(l$upsert.map((v) => v))
          : const {},
      _$data.containsKey('set')
          ? l$$set == null
              ? null
              : Object.hashAll(l$$set.map((v) => v))
          : const {},
      _$data.containsKey('disconnect')
          ? l$disconnect == null
              ? null
              : Object.hashAll(l$disconnect.map((v) => v))
          : const {},
      _$data.containsKey('delete')
          ? l$delete == null
              ? null
              : Object.hashAll(l$delete.map((v) => v))
          : const {},
      _$data.containsKey('connect')
          ? l$connect == null
              ? null
              : Object.hashAll(l$connect.map((v) => v))
          : const {},
      _$data.containsKey('update')
          ? l$update == null
              ? null
              : Object.hashAll(l$update.map((v) => v))
          : const {},
      _$data.containsKey('updateMany')
          ? l$updateMany == null
              ? null
              : Object.hashAll(l$updateMany.map((v) => v))
          : const {},
      _$data.containsKey('deleteMany')
          ? l$deleteMany == null
              ? null
              : Object.hashAll(l$deleteMany.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput(
    Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput instance,
    TRes Function(
            Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput;

  factory CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput;

  TRes call({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?
        upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?
        update,
    List<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?
        updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$TransactionsCreateWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
                      Input$TransactionsCreateWithoutTransaction_typeInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
                      Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
                      Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>>?)
          _fn);
  TRes update(
      Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
                      Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
                      Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput
      _instance;

  final TRes Function(
      Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? $set = _undefined,
    Object? disconnect = _undefined,
    Object? delete = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
    Object? updateMany = _undefined,
    Object? deleteMany = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as List<Input$TransactionsCreateWithoutTransaction_typeInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate as List<
              Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$TransactionsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$TransactionsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$TransactionsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$TransactionsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$TransactionsScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionsCreateWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<
                          Input$TransactionsCreateWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create?.map((e) =>
              CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput<
                          Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionsCreateOrConnectWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
                          Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
                          Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
                          Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithoutTransaction_typeNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionsCreateWithoutTransaction_typeInput>? create,
    List<Input$TransactionsCreateOrConnectWithoutTransaction_typeInput>?
        connectOrCreate,
    List<Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>?
        upsert,
    List<Input$TransactionsWhereUniqueInput>? $set,
    List<Input$TransactionsWhereUniqueInput>? disconnect,
    List<Input$TransactionsWhereUniqueInput>? delete,
    List<Input$TransactionsWhereUniqueInput>? connect,
    List<Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>?
        update,
    List<Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>?
        updateMany,
    List<Input$TransactionsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
}

class Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput {
  factory Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutTransaction_typeInput update,
    required Input$TransactionsCreateWithoutTransaction_typeInput create,
  }) =>
      Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput._(
      this._$data);

  factory Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] =
        Input$TransactionsUpdateWithoutTransaction_typeInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionsCreateWithoutTransaction_typeInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutTransaction_typeInput get update =>
      (_$data['update']
          as Input$TransactionsUpdateWithoutTransaction_typeInput);
  Input$TransactionsCreateWithoutTransaction_typeInput get create =>
      (_$data['create']
          as Input$TransactionsCreateWithoutTransaction_typeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
          Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    final l$create = create;
    final lOther$create = other.create;
    if (l$create != lOther$create) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$update = update;
    final l$create = create;
    return Object.hashAll([
      l$where,
      l$update,
      l$create,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput(
    Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput
        instance,
    TRes Function(
            Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutTransaction_typeInput? update,
    Input$TransactionsCreateWithoutTransaction_typeInput? create,
  });
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes>
      get update;
  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create;
}

class _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput
      _instance;

  final TRes Function(
          Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput
          ._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update':
              (update as Input$TransactionsUpdateWithoutTransaction_typeInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionsCreateWithoutTransaction_typeInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes>
      get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpsertWithWhereUniqueWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutTransaction_typeInput? update,
    Input$TransactionsCreateWithoutTransaction_typeInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes>
      get update =>
          CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput.stub(
              _res);
  CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput<TRes>
      get create =>
          CopyWith$Input$TransactionsCreateWithoutTransaction_typeInput.stub(
              _res);
}

class Input$TransactionsUpdateWithoutTransaction_typeInput {
  factory Input$TransactionsUpdateWithoutTransaction_typeInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      Input$TransactionsUpdateWithoutTransaction_typeInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (seller != null) r'seller': seller,
        if (city != null) r'city': city,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsUpdateWithoutTransaction_typeInput._(this._$data);

  factory Input$TransactionsUpdateWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFieldUpdateOperationsInput.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
              (l$city as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateWithoutTransaction_typeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get product_id =>
      (_$data['product_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_name =>
      (_$data['customer_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get address =>
      (_$data['address'] as Input$StringFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$DateTimeFieldUpdateOperationsInput? get date =>
      (_$data['date'] as Input$DateTimeFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? get seller =>
      (_$data['seller']
          as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? get city =>
      (_$data['city']
          as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
      get status => (_$data['status']
          as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$PayementsUpdateManyWithoutTransactionNestedInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsUpdateManyWithoutTransactionNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<
          Input$TransactionsUpdateWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput(
    Input$TransactionsUpdateWithoutTransaction_typeInput instance,
    TRes Function(Input$TransactionsUpdateWithoutTransaction_typeInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithoutTransaction_typeInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithoutTransaction_typeInput _instance;

  final TRes Function(Input$TransactionsUpdateWithoutTransaction_typeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithoutTransaction_typeInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id':
              (transaction_id as Input$IntFieldUpdateOperationsInput?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFieldUpdateOperationsInput?),
        if (customer_name != _undefined)
          'customer_name':
              (customer_name as Input$StringFieldUpdateOperationsInput?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringFieldUpdateOperationsInput?),
        if (address != _undefined)
          'address': (address as Input$StringFieldUpdateOperationsInput?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (date != _undefined)
          'date': (date as Input$DateTimeFieldUpdateOperationsInput?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatFieldUpdateOperationsInput?),
        if (totalPayement != _undefined)
          'totalPayement':
              (totalPayement as Input$FloatFieldUpdateOperationsInput?),
        if (seller != _undefined)
          'seller': (seller
              as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (city != _undefined)
          'city': (city
              as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsUpdateManyWithoutTransactionNestedInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput {
  factory Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutTransaction_typeInput data,
  }) =>
      Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput._(
      this._$data);

  factory Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$TransactionsUpdateWithoutTransaction_typeInput.fromJson(
            (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutTransaction_typeInput get data =>
      (_$data['data'] as Input$TransactionsUpdateWithoutTransaction_typeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
          Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput(
    Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput
        instance,
    TRes Function(
            Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutTransaction_typeInput? data,
  });
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput
      _instance;

  final TRes Function(
          Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput
          ._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data':
              (data as Input$TransactionsUpdateWithoutTransaction_typeInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutTransaction_typeInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput<TRes>
      get data =>
          CopyWith$Input$TransactionsUpdateWithoutTransaction_typeInput.stub(
              _res);
}

class Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput {
  factory Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput({
    required Input$TransactionsScalarWhereInput where,
    required Input$TransactionsUpdateManyMutationInput data,
  }) =>
      Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput._(
      this._$data);

  factory Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsScalarWhereInput get where =>
      (_$data['where'] as Input$TransactionsScalarWhereInput);
  Input$TransactionsUpdateManyMutationInput get data =>
      (_$data['data'] as Input$TransactionsUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
          Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$data = data;
    return Object.hashAll([
      l$where,
      l$data,
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput(
    Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput instance,
    TRes Function(
            Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput;

  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput;

  TRes call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput
      _instance;

  final TRes Function(
      Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(
          Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateManyMutationInput),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutTransaction_typeInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  }) =>
      _res;
}

class Input$TransactionsCreateInput {
  factory Input$TransactionsCreateInput({
    required int transaction_id,
    required int product_id,
    required String customer_name,
    required String customer_phone,
    required String address,
    required int quantity,
    required String date,
    required double remainingPayement,
    required double totalPayement,
    required Input$SellersCreateNestedOneWithoutTransactionsInput seller,
    required Input$CityCreateNestedOneWithoutTransactionsInput city,
    required Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      Input$TransactionsCreateInput._({
        r'transaction_id': transaction_id,
        r'product_id': product_id,
        r'customer_name': customer_name,
        r'customer_phone': customer_phone,
        r'address': address,
        r'quantity': quantity,
        r'date': date,
        r'remainingPayement': remainingPayement,
        r'totalPayement': totalPayement,
        r'seller': seller,
        r'city': city,
        r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsCreateInput._(this._$data);

  factory Input$TransactionsCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transaction_id = data['transaction_id'];
    result$data['transaction_id'] = (l$transaction_id as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$customer_name = data['customer_name'];
    result$data['customer_name'] = (l$customer_name as String);
    final l$customer_phone = data['customer_phone'];
    result$data['customer_phone'] = (l$customer_phone as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$remainingPayement = data['remainingPayement'];
    result$data['remainingPayement'] = (l$remainingPayement as num).toDouble();
    final l$totalPayement = data['totalPayement'];
    result$data['totalPayement'] = (l$totalPayement as num).toDouble();
    final l$seller = data['seller'];
    result$data['seller'] =
        Input$SellersCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$seller as Map<String, dynamic>));
    final l$city = data['city'];
    result$data['city'] =
        Input$CityCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$city as Map<String, dynamic>));
    final l$transaction_type = data['transaction_type'];
    result$data['transaction_type'] =
        Input$TransactionTypesCreateNestedOneWithoutTransactionsInput.fromJson(
            (l$transaction_type as Map<String, dynamic>));
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsCreateNestedManyWithoutTransactionInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get transaction_id => (_$data['transaction_id'] as int);
  int get product_id => (_$data['product_id'] as int);
  String get customer_name => (_$data['customer_name'] as String);
  String get customer_phone => (_$data['customer_phone'] as String);
  String get address => (_$data['address'] as String);
  int get quantity => (_$data['quantity'] as int);
  String get date => (_$data['date'] as String);
  double get remainingPayement => (_$data['remainingPayement'] as double);
  double get totalPayement => (_$data['totalPayement'] as double);
  Input$SellersCreateNestedOneWithoutTransactionsInput get seller =>
      (_$data['seller']
          as Input$SellersCreateNestedOneWithoutTransactionsInput);
  Input$CityCreateNestedOneWithoutTransactionsInput get city =>
      (_$data['city'] as Input$CityCreateNestedOneWithoutTransactionsInput);
  Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput);
  Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? get status =>
      (_$data['status']
          as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?);
  Input$PayementsCreateNestedManyWithoutTransactionInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsCreateNestedManyWithoutTransactionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transaction_id = transaction_id;
    result$data['transaction_id'] = l$transaction_id;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$customer_name = customer_name;
    result$data['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    result$data['customer_phone'] = l$customer_phone;
    final l$address = address;
    result$data['address'] = l$address;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$date = date;
    result$data['date'] = l$date;
    final l$remainingPayement = remainingPayement;
    result$data['remainingPayement'] = l$remainingPayement;
    final l$totalPayement = totalPayement;
    result$data['totalPayement'] = l$totalPayement;
    final l$seller = seller;
    result$data['seller'] = l$seller.toJson();
    final l$city = city;
    result$data['city'] = l$city.toJson();
    final l$transaction_type = transaction_type;
    result$data['transaction_type'] = l$transaction_type.toJson();
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsCreateInput<Input$TransactionsCreateInput>
      get copyWith => CopyWith$Input$TransactionsCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      l$transaction_id,
      l$product_id,
      l$customer_name,
      l$customer_phone,
      l$address,
      l$quantity,
      l$date,
      l$remainingPayement,
      l$totalPayement,
      l$seller,
      l$city,
      l$transaction_type,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateInput<TRes> {
  factory CopyWith$Input$TransactionsCreateInput(
    Input$TransactionsCreateInput instance,
    TRes Function(Input$TransactionsCreateInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateInput;

  factory CopyWith$Input$TransactionsCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateInput;

  TRes call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsCreateInput<TRes>
    implements CopyWith$Input$TransactionsCreateInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateInput _instance;

  final TRes Function(Input$TransactionsCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsCreateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined && transaction_id != null)
          'transaction_id': (transaction_id as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (customer_name != _undefined && customer_name != null)
          'customer_name': (customer_name as String),
        if (customer_phone != _undefined && customer_phone != null)
          'customer_phone': (customer_phone as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (date != _undefined && date != null) 'date': (date as String),
        if (remainingPayement != _undefined && remainingPayement != null)
          'remainingPayement': (remainingPayement as double),
        if (totalPayement != _undefined && totalPayement != null)
          'totalPayement': (totalPayement as double),
        if (seller != _undefined && seller != null)
          'seller':
              (seller as Input$SellersCreateNestedOneWithoutTransactionsInput),
        if (city != _undefined && city != null)
          'city': (city as Input$CityCreateNestedOneWithoutTransactionsInput),
        if (transaction_type != _undefined && transaction_type != null)
          'transaction_type': (transaction_type
              as Input$TransactionTypesCreateNestedOneWithoutTransactionsInput),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusCreateNestedOneWithoutTransactionsInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsCreateNestedManyWithoutTransactionInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsCreateInput<TRes>
    implements CopyWith$Input$TransactionsCreateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateInput(this._res);

  TRes _res;

  call({
    int? transaction_id,
    int? product_id,
    String? customer_name,
    String? customer_phone,
    String? address,
    int? quantity,
    String? date,
    double? remainingPayement,
    double? totalPayement,
    Input$SellersCreateNestedOneWithoutTransactionsInput? seller,
    Input$CityCreateNestedOneWithoutTransactionsInput? city,
    Input$TransactionTypesCreateNestedOneWithoutTransactionsInput?
        transaction_type,
    Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,
  }) =>
      _res;
}

class Input$TransactionsUpdateInput {
  factory Input$TransactionsUpdateInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      Input$TransactionsUpdateInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (seller != null) r'seller': seller,
        if (city != null) r'city': city,
        if (transaction_type != null) r'transaction_type': transaction_type,
        if (status != null) r'status': status,
        if (Payements != null) r'Payements': Payements,
      });

  Input$TransactionsUpdateInput._(this._$data);

  factory Input$TransactionsUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFieldUpdateOperationsInput.fromJson(
              (l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('seller')) {
      final l$seller = data['seller'];
      result$data['seller'] = l$seller == null
          ? null
          : Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$seller as Map<String, dynamic>));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = l$city == null
          ? null
          : Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
              (l$city as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type')) {
      final l$transaction_type = data['transaction_type'];
      result$data['transaction_type'] = l$transaction_type == null
          ? null
          : Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$transaction_type as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    if (data.containsKey('Payements')) {
      final l$Payements = data['Payements'];
      result$data['Payements'] = l$Payements == null
          ? null
          : Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
              (l$Payements as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get product_id =>
      (_$data['product_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_name =>
      (_$data['customer_name'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get address =>
      (_$data['address'] as Input$StringFieldUpdateOperationsInput?);
  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$DateTimeFieldUpdateOperationsInput? get date =>
      (_$data['date'] as Input$DateTimeFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? get seller =>
      (_$data['seller']
          as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? get city =>
      (_$data['city']
          as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
      get transaction_type => (_$data['transaction_type']
          as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
      get status => (_$data['status']
          as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?);
  Input$PayementsUpdateManyWithoutTransactionNestedInput? get Payements =>
      (_$data['Payements']
          as Input$PayementsUpdateManyWithoutTransactionNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
    if (_$data.containsKey('customer_name')) {
      final l$customer_name = customer_name;
      result$data['customer_name'] = l$customer_name?.toJson();
    }
    if (_$data.containsKey('customer_phone')) {
      final l$customer_phone = customer_phone;
      result$data['customer_phone'] = l$customer_phone?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toJson();
    }
    if (_$data.containsKey('remainingPayement')) {
      final l$remainingPayement = remainingPayement;
      result$data['remainingPayement'] = l$remainingPayement?.toJson();
    }
    if (_$data.containsKey('totalPayement')) {
      final l$totalPayement = totalPayement;
      result$data['totalPayement'] = l$totalPayement?.toJson();
    }
    if (_$data.containsKey('seller')) {
      final l$seller = seller;
      result$data['seller'] = l$seller?.toJson();
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city?.toJson();
    }
    if (_$data.containsKey('transaction_type')) {
      final l$transaction_type = transaction_type;
      result$data['transaction_type'] = l$transaction_type?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('Payements')) {
      final l$Payements = Payements;
      result$data['Payements'] = l$Payements?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateInput<Input$TransactionsUpdateInput>
      get copyWith => CopyWith$Input$TransactionsUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$customer_name = customer_name;
    final lOther$customer_name = other.customer_name;
    if (_$data.containsKey('customer_name') !=
        other._$data.containsKey('customer_name')) {
      return false;
    }
    if (l$customer_name != lOther$customer_name) {
      return false;
    }
    final l$customer_phone = customer_phone;
    final lOther$customer_phone = other.customer_phone;
    if (_$data.containsKey('customer_phone') !=
        other._$data.containsKey('customer_phone')) {
      return false;
    }
    if (l$customer_phone != lOther$customer_phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (_$data.containsKey('remainingPayement') !=
        other._$data.containsKey('remainingPayement')) {
      return false;
    }
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (_$data.containsKey('totalPayement') !=
        other._$data.containsKey('totalPayement')) {
      return false;
    }
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (_$data.containsKey('seller') != other._$data.containsKey('seller')) {
      return false;
    }
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (_$data.containsKey('transaction_type') !=
        other._$data.containsKey('transaction_type')) {
      return false;
    }
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$Payements = Payements;
    final lOther$Payements = other.Payements;
    if (_$data.containsKey('Payements') !=
        other._$data.containsKey('Payements')) {
      return false;
    }
    if (l$Payements != lOther$Payements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$seller = seller;
    final l$city = city;
    final l$transaction_type = transaction_type;
    final l$status = status;
    final l$Payements = Payements;
    return Object.hashAll([
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('seller') ? l$seller : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('transaction_type') ? l$transaction_type : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('Payements') ? l$Payements : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateInput(
    Input$TransactionsUpdateInput instance,
    TRes Function(Input$TransactionsUpdateInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateInput;

  factory CopyWith$Input$TransactionsUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateInput<TRes>
    implements CopyWith$Input$TransactionsUpdateInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateInput _instance;

  final TRes Function(Input$TransactionsUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? seller = _undefined,
    Object? city = _undefined,
    Object? transaction_type = _undefined,
    Object? status = _undefined,
    Object? Payements = _undefined,
  }) =>
      _then(Input$TransactionsUpdateInput._({
        ..._instance._$data,
        if (transaction_id != _undefined)
          'transaction_id':
              (transaction_id as Input$IntFieldUpdateOperationsInput?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFieldUpdateOperationsInput?),
        if (customer_name != _undefined)
          'customer_name':
              (customer_name as Input$StringFieldUpdateOperationsInput?),
        if (customer_phone != _undefined)
          'customer_phone':
              (customer_phone as Input$StringFieldUpdateOperationsInput?),
        if (address != _undefined)
          'address': (address as Input$StringFieldUpdateOperationsInput?),
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (date != _undefined)
          'date': (date as Input$DateTimeFieldUpdateOperationsInput?),
        if (remainingPayement != _undefined)
          'remainingPayement':
              (remainingPayement as Input$FloatFieldUpdateOperationsInput?),
        if (totalPayement != _undefined)
          'totalPayement':
              (totalPayement as Input$FloatFieldUpdateOperationsInput?),
        if (seller != _undefined)
          'seller': (seller
              as Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (city != _undefined)
          'city': (city
              as Input$CityUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (transaction_type != _undefined)
          'transaction_type': (transaction_type
              as Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (status != _undefined)
          'status': (status
              as Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?),
        if (Payements != _undefined)
          'Payements': (Payements
              as Input$PayementsUpdateManyWithoutTransactionNestedInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateInput<TRes>
    implements CopyWith$Input$TransactionsUpdateInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput? seller,
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput? city,
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput?
        transaction_type,
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput?
        status,
    Input$PayementsUpdateManyWithoutTransactionNestedInput? Payements,
  }) =>
      _res;
}
