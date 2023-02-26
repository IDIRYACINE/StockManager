import 'schema1.graphql.dart';
import 'schema2.graphql.dart';
import 'schema3.graphql.dart';
import 'schema4.graphql.dart';
import 'schema5.graphql.dart';
import 'schema6.graphql.dart';

class Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput {
  factory Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersUpsertWithoutTransactionsInput? upsert,
    Input$SellersWhereUniqueInput? connect,
    Input$SellersUpdateWithoutTransactionsInput? update,
  }) =>
      Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput._(this._$data);

  factory Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$SellersCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$SellersCreateOrConnectWithoutTransactionsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$SellersUpsertWithoutTransactionsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$SellersWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$SellersUpdateWithoutTransactionsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersCreateWithoutTransactionsInput? get create =>
      (_$data['create'] as Input$SellersCreateWithoutTransactionsInput?);
  Input$SellersCreateOrConnectWithoutTransactionsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$SellersCreateOrConnectWithoutTransactionsInput?);
  Input$SellersUpsertWithoutTransactionsInput? get upsert =>
      (_$data['upsert'] as Input$SellersUpsertWithoutTransactionsInput?);
  Input$SellersWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$SellersWhereUniqueInput?);
  Input$SellersUpdateWithoutTransactionsInput? get update =>
      (_$data['update'] as Input$SellersUpdateWithoutTransactionsInput?);
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

  CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
          Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput>
      get copyWith =>
          CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput) ||
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

abstract class CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
    TRes> {
  factory CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput(
    Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput instance,
    TRes Function(Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput)
        then,
  ) = _CopyWithImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput;

  factory CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput;

  TRes call({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersUpsertWithoutTransactionsInput? upsert,
    Input$SellersWhereUniqueInput? connect,
    Input$SellersUpdateWithoutTransactionsInput? update,
  });
  CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> get upsert;
  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update;
}

class _CopyWithImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput(
    this._instance,
    this._then,
  );

  final Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput _instance;

  final TRes Function(
      Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$SellersCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$SellersCreateOrConnectWithoutTransactionsInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$SellersUpsertWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$SellersWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$SellersUpdateWithoutTransactionsInput?),
      }));
  CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$SellersUpsertWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$SellersUpsertWithoutTransactionsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$SellersUpdateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$SellersUpdateWithoutTransactionsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$SellersCreateWithoutTransactionsInput? create,
    Input$SellersCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$SellersUpsertWithoutTransactionsInput? upsert,
    Input$SellersWhereUniqueInput? connect,
    Input$SellersUpdateWithoutTransactionsInput? update,
  }) =>
      _res;
  CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> get upsert =>
      CopyWith$Input$SellersUpsertWithoutTransactionsInput.stub(_res);
  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update =>
      CopyWith$Input$SellersUpdateWithoutTransactionsInput.stub(_res);
}

class Input$SellersUpsertWithoutTransactionsInput {
  factory Input$SellersUpsertWithoutTransactionsInput({
    required Input$SellersUpdateWithoutTransactionsInput update,
    required Input$SellersCreateWithoutTransactionsInput create,
  }) =>
      Input$SellersUpsertWithoutTransactionsInput._({
        r'update': update,
        r'create': create,
      });

  Input$SellersUpsertWithoutTransactionsInput._(this._$data);

  factory Input$SellersUpsertWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$SellersUpdateWithoutTransactionsInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$SellersCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$SellersUpsertWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersUpdateWithoutTransactionsInput get update =>
      (_$data['update'] as Input$SellersUpdateWithoutTransactionsInput);
  Input$SellersCreateWithoutTransactionsInput get create =>
      (_$data['create'] as Input$SellersCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$SellersUpsertWithoutTransactionsInput<
          Input$SellersUpsertWithoutTransactionsInput>
      get copyWith => CopyWith$Input$SellersUpsertWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersUpsertWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$SellersUpsertWithoutTransactionsInput(
    Input$SellersUpsertWithoutTransactionsInput instance,
    TRes Function(Input$SellersUpsertWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$SellersUpsertWithoutTransactionsInput;

  factory CopyWith$Input$SellersUpsertWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersUpsertWithoutTransactionsInput;

  TRes call({
    Input$SellersUpdateWithoutTransactionsInput? update,
    Input$SellersCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update;
}

class _CopyWithImpl$Input$SellersUpsertWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$SellersUpsertWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$SellersUpsertWithoutTransactionsInput _instance;

  final TRes Function(Input$SellersUpsertWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$SellersUpsertWithoutTransactionsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$SellersUpdateWithoutTransactionsInput),
        if (create != _undefined && create != null)
          'create': (create as Input$SellersCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$SellersUpdateWithoutTransactionsInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$SellersUpsertWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersUpsertWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$SellersUpsertWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    Input$SellersUpdateWithoutTransactionsInput? update,
    Input$SellersCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> get update =>
      CopyWith$Input$SellersUpdateWithoutTransactionsInput.stub(_res);
}

class Input$SellersUpdateWithoutTransactionsInput {
  factory Input$SellersUpdateWithoutTransactionsInput({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      Input$SellersUpdateWithoutTransactionsInput._({
        if (seller_name != null) r'seller_name': seller_name,
        if (seller_phone != null) r'seller_phone': seller_phone,
        if (picture != null) r'picture': picture,
      });

  Input$SellersUpdateWithoutTransactionsInput._(this._$data);

  factory Input$SellersUpdateWithoutTransactionsInput.fromJson(
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
    return Input$SellersUpdateWithoutTransactionsInput._(result$data);
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

  CopyWith$Input$SellersUpdateWithoutTransactionsInput<
          Input$SellersUpdateWithoutTransactionsInput>
      get copyWith => CopyWith$Input$SellersUpdateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SellersUpdateWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$SellersUpdateWithoutTransactionsInput(
    Input$SellersUpdateWithoutTransactionsInput instance,
    TRes Function(Input$SellersUpdateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$SellersUpdateWithoutTransactionsInput;

  factory CopyWith$Input$SellersUpdateWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SellersUpdateWithoutTransactionsInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  });
}

class _CopyWithImpl$Input$SellersUpdateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$SellersUpdateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$SellersUpdateWithoutTransactionsInput _instance;

  final TRes Function(Input$SellersUpdateWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$SellersUpdateWithoutTransactionsInput._({
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

class _CopyWithStubImpl$Input$SellersUpdateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$SellersUpdateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$SellersUpdateWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? seller_name,
    Input$StringFieldUpdateOperationsInput? seller_phone,
    Input$StringFieldUpdateOperationsInput? picture,
  }) =>
      _res;
}

class Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput {
  factory Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesUpsertWithoutTransactionsInput? upsert,
    Input$TransactionTypesWhereUniqueInput? connect,
    Input$TransactionTypesUpdateWithoutTransactionsInput? update,
  }) =>
      Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput._(
      this._$data);

  factory Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionTypesCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionTypesCreateOrConnectWithoutTransactionsInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$TransactionTypesUpsertWithoutTransactionsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionTypesWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$TransactionTypesUpdateWithoutTransactionsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionTypesCreateWithoutTransactionsInput? get create =>
      (_$data['create']
          as Input$TransactionTypesCreateWithoutTransactionsInput?);
  Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?);
  Input$TransactionTypesUpsertWithoutTransactionsInput? get upsert =>
      (_$data['upsert']
          as Input$TransactionTypesUpsertWithoutTransactionsInput?);
  Input$TransactionTypesWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionTypesWhereUniqueInput?);
  Input$TransactionTypesUpdateWithoutTransactionsInput? get update =>
      (_$data['update']
          as Input$TransactionTypesUpdateWithoutTransactionsInput?);
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

  CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
          Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput) ||
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

abstract class CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput(
    Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
        instance,
    TRes Function(
            Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput)
        then,
  ) = _CopyWithImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput;

  factory CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput;

  TRes call({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesUpsertWithoutTransactionsInput? upsert,
    Input$TransactionTypesWhereUniqueInput? connect,
    Input$TransactionTypesUpdateWithoutTransactionsInput? update,
  });
  CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes>
      get upsert;
  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update;
}

class _CopyWithImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
      _instance;

  final TRes Function(
          Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(
          Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              ._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as Input$TransactionTypesCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?),
        if (upsert != _undefined)
          'upsert':
              (upsert as Input$TransactionTypesUpsertWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionTypesWhereUniqueInput?),
        if (update != _undefined)
          'update':
              (update as Input$TransactionTypesUpdateWithoutTransactionsInput?),
      }));
  CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes>
      get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
    Input$TransactionTypesCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionTypesUpsertWithoutTransactionsInput? upsert,
    Input$TransactionTypesWhereUniqueInput? connect,
    Input$TransactionTypesUpdateWithoutTransactionsInput? update,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes>
      get upsert =>
          CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput.stub(
              _res);
  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update =>
          CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput.stub(
              _res);
}

class Input$TransactionTypesUpsertWithoutTransactionsInput {
  factory Input$TransactionTypesUpsertWithoutTransactionsInput({
    required Input$TransactionTypesUpdateWithoutTransactionsInput update,
    required Input$TransactionTypesCreateWithoutTransactionsInput create,
  }) =>
      Input$TransactionTypesUpsertWithoutTransactionsInput._({
        r'update': update,
        r'create': create,
      });

  Input$TransactionTypesUpsertWithoutTransactionsInput._(this._$data);

  factory Input$TransactionTypesUpsertWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$TransactionTypesUpdateWithoutTransactionsInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionTypesCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionTypesUpsertWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionTypesUpdateWithoutTransactionsInput get update =>
      (_$data['update']
          as Input$TransactionTypesUpdateWithoutTransactionsInput);
  Input$TransactionTypesCreateWithoutTransactionsInput get create =>
      (_$data['create']
          as Input$TransactionTypesCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<
          Input$TransactionTypesUpsertWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesUpsertWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput(
    Input$TransactionTypesUpsertWithoutTransactionsInput instance,
    TRes Function(Input$TransactionTypesUpsertWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesUpsertWithoutTransactionsInput;

  factory CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesUpsertWithoutTransactionsInput;

  TRes call({
    Input$TransactionTypesUpdateWithoutTransactionsInput? update,
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update;
}

class _CopyWithImpl$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesUpsertWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesUpsertWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionTypesUpsertWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionTypesUpsertWithoutTransactionsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update':
              (update as Input$TransactionTypesUpdateWithoutTransactionsInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionTypesCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$TransactionTypesUpsertWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesUpsertWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesUpsertWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionTypesUpdateWithoutTransactionsInput? update,
    Input$TransactionTypesCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
      get update =>
          CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput.stub(
              _res);
}

class Input$TransactionTypesUpdateWithoutTransactionsInput {
  factory Input$TransactionTypesUpdateWithoutTransactionsInput({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      Input$TransactionTypesUpdateWithoutTransactionsInput._({
        if (type_name != null) r'type_name': type_name,
        if (description != null) r'description': description,
      });

  Input$TransactionTypesUpdateWithoutTransactionsInput._(this._$data);

  factory Input$TransactionTypesUpdateWithoutTransactionsInput.fromJson(
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
    return Input$TransactionTypesUpdateWithoutTransactionsInput._(result$data);
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

  CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<
          Input$TransactionTypesUpdateWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionTypesUpdateWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput(
    Input$TransactionTypesUpdateWithoutTransactionsInput instance,
    TRes Function(Input$TransactionTypesUpdateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionTypesUpdateWithoutTransactionsInput;

  factory CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionTypesUpdateWithoutTransactionsInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  });
}

class _CopyWithImpl$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionTypesUpdateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionTypesUpdateWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionTypesUpdateWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type_name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionTypesUpdateWithoutTransactionsInput._({
        ..._instance._$data,
        if (type_name != _undefined)
          'type_name': (type_name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionTypesUpdateWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionTypesUpdateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionTypesUpdateWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? type_name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      _res;
}

class Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput {
  factory Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusUpsertWithoutTransactionsInput? upsert,
    Input$TransactionStatusWhereUniqueInput? connect,
    Input$TransactionStatusUpdateWithoutTransactionsInput? update,
  }) =>
      Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput._(
      this._$data);

  factory Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionStatusCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionStatusCreateOrConnectWithoutTransactionsInput
              .fromJson((l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$TransactionStatusUpsertWithoutTransactionsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionStatusWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$TransactionStatusUpdateWithoutTransactionsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionStatusCreateWithoutTransactionsInput? get create =>
      (_$data['create']
          as Input$TransactionStatusCreateWithoutTransactionsInput?);
  Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
      get connectOrCreate => (_$data['connectOrCreate']
          as Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?);
  Input$TransactionStatusUpsertWithoutTransactionsInput? get upsert =>
      (_$data['upsert']
          as Input$TransactionStatusUpsertWithoutTransactionsInput?);
  Input$TransactionStatusWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionStatusWhereUniqueInput?);
  Input$TransactionStatusUpdateWithoutTransactionsInput? get update =>
      (_$data['update']
          as Input$TransactionStatusUpdateWithoutTransactionsInput?);
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

  CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
          Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput) ||
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

abstract class CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput(
    Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
        instance,
    TRes Function(
            Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput)
        then,
  ) = _CopyWithImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput;

  factory CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput;

  TRes call({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusUpsertWithoutTransactionsInput? upsert,
    Input$TransactionStatusWhereUniqueInput? connect,
    Input$TransactionStatusUpdateWithoutTransactionsInput? update,
  });
  CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes>
      get upsert;
  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update;
}

class _CopyWithImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
      _instance;

  final TRes Function(
          Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(
          Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              ._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as Input$TransactionStatusCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?),
        if (upsert != _undefined)
          'upsert': (upsert
              as Input$TransactionStatusUpsertWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionStatusWhereUniqueInput?),
        if (update != _undefined)
          'update': (update
              as Input$TransactionStatusUpdateWithoutTransactionsInput?),
      }));
  CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes>
      get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
    Input$TransactionStatusCreateOrConnectWithoutTransactionsInput?
        connectOrCreate,
    Input$TransactionStatusUpsertWithoutTransactionsInput? upsert,
    Input$TransactionStatusWhereUniqueInput? connect,
    Input$TransactionStatusUpdateWithoutTransactionsInput? update,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes>
      get upsert =>
          CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput.stub(
              _res);
  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update =>
          CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput.stub(
              _res);
}

class Input$TransactionStatusUpsertWithoutTransactionsInput {
  factory Input$TransactionStatusUpsertWithoutTransactionsInput({
    required Input$TransactionStatusUpdateWithoutTransactionsInput update,
    required Input$TransactionStatusCreateWithoutTransactionsInput create,
  }) =>
      Input$TransactionStatusUpsertWithoutTransactionsInput._({
        r'update': update,
        r'create': create,
      });

  Input$TransactionStatusUpsertWithoutTransactionsInput._(this._$data);

  factory Input$TransactionStatusUpsertWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$TransactionStatusUpdateWithoutTransactionsInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionStatusCreateWithoutTransactionsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionStatusUpsertWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionStatusUpdateWithoutTransactionsInput get update =>
      (_$data['update']
          as Input$TransactionStatusUpdateWithoutTransactionsInput);
  Input$TransactionStatusCreateWithoutTransactionsInput get create =>
      (_$data['create']
          as Input$TransactionStatusCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<
          Input$TransactionStatusUpsertWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusUpsertWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput(
    Input$TransactionStatusUpsertWithoutTransactionsInput instance,
    TRes Function(Input$TransactionStatusUpsertWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusUpsertWithoutTransactionsInput;

  factory CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusUpsertWithoutTransactionsInput;

  TRes call({
    Input$TransactionStatusUpdateWithoutTransactionsInput? update,
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update;
}

class _CopyWithImpl$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusUpsertWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusUpsertWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionStatusUpsertWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionStatusUpsertWithoutTransactionsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update':
              (update as Input$TransactionStatusUpdateWithoutTransactionsInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionStatusCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$TransactionStatusUpsertWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusUpsertWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusUpsertWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionStatusUpdateWithoutTransactionsInput? update,
    Input$TransactionStatusCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
      get update =>
          CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput.stub(
              _res);
}

class Input$TransactionStatusUpdateWithoutTransactionsInput {
  factory Input$TransactionStatusUpdateWithoutTransactionsInput({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      Input$TransactionStatusUpdateWithoutTransactionsInput._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
      });

  Input$TransactionStatusUpdateWithoutTransactionsInput._(this._$data);

  factory Input$TransactionStatusUpdateWithoutTransactionsInput.fromJson(
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
    return Input$TransactionStatusUpdateWithoutTransactionsInput._(result$data);
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

  CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<
          Input$TransactionStatusUpdateWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionStatusUpdateWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput(
    Input$TransactionStatusUpdateWithoutTransactionsInput instance,
    TRes Function(Input$TransactionStatusUpdateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$TransactionStatusUpdateWithoutTransactionsInput;

  factory CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionStatusUpdateWithoutTransactionsInput;

  TRes call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  });
}

class _CopyWithImpl$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$TransactionStatusUpdateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionStatusUpdateWithoutTransactionsInput _instance;

  final TRes Function(Input$TransactionStatusUpdateWithoutTransactionsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
  }) =>
      _then(Input$TransactionStatusUpdateWithoutTransactionsInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
        if (description != _undefined)
          'description':
              (description as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionStatusUpdateWithoutTransactionsInput<
        TRes>
    implements
        CopyWith$Input$TransactionStatusUpdateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionStatusUpdateWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$StringFieldUpdateOperationsInput? name,
    Input$StringFieldUpdateOperationsInput? description,
  }) =>
      _res;
}

class Input$PayementsUpdateManyWithoutTransactionNestedInput {
  factory Input$PayementsUpdateManyWithoutTransactionNestedInput({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>? upsert,
    List<Input$PayementsWhereUniqueInput>? $set,
    List<Input$PayementsWhereUniqueInput>? disconnect,
    List<Input$PayementsWhereUniqueInput>? delete,
    List<Input$PayementsWhereUniqueInput>? connect,
    List<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>? update,
    List<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>? updateMany,
    List<Input$PayementsScalarWhereInput>? deleteMany,
  }) =>
      Input$PayementsUpdateManyWithoutTransactionNestedInput._({
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

  Input$PayementsUpdateManyWithoutTransactionNestedInput._(this._$data);

  factory Input$PayementsUpdateManyWithoutTransactionNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$PayementsCreateWithoutTransactionInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsCreateOrConnectWithoutTransactionInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$PayementsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$PayementsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$PayementsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$PayementsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) => Input$PayementsUpdateManyWithWhereWithoutTransactionInput
              .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$PayementsUpdateManyWithoutTransactionNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayementsCreateWithoutTransactionInput>? get create =>
      (_$data['create'] as List<Input$PayementsCreateWithoutTransactionInput>?);
  List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$PayementsCreateOrConnectWithoutTransactionInput>?);
  List<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>?
      get upsert => (_$data['upsert'] as List<
          Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>?);
  List<Input$PayementsWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$PayementsWhereUniqueInput>?);
  List<Input$PayementsWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$PayementsWhereUniqueInput>?);
  List<Input$PayementsWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$PayementsWhereUniqueInput>?);
  List<Input$PayementsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$PayementsWhereUniqueInput>?);
  List<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>?
      get update => (_$data['update'] as List<
          Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>?);
  List<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>?
      get updateMany => (_$data['updateMany']
          as List<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>?);
  List<Input$PayementsScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$PayementsScalarWhereInput>?);
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

  CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput<
          Input$PayementsUpdateManyWithoutTransactionNestedInput>
      get copyWith =>
          CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsUpdateManyWithoutTransactionNestedInput) ||
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

abstract class CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput<
    TRes> {
  factory CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput(
    Input$PayementsUpdateManyWithoutTransactionNestedInput instance,
    TRes Function(Input$PayementsUpdateManyWithoutTransactionNestedInput) then,
  ) = _CopyWithImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput;

  factory CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput;

  TRes call({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>? upsert,
    List<Input$PayementsWhereUniqueInput>? $set,
    List<Input$PayementsWhereUniqueInput>? disconnect,
    List<Input$PayementsWhereUniqueInput>? delete,
    List<Input$PayementsWhereUniqueInput>? connect,
    List<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>? update,
    List<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>? updateMany,
    List<Input$PayementsScalarWhereInput>? deleteMany,
  });
  TRes upsert(
      Iterable<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
                      Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>>?)
          _fn);
  TRes update(
      Iterable<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
                      Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
                      Input$PayementsUpdateManyWithWhereWithoutTransactionInput>>?)
          _fn);
  TRes deleteMany(
      Iterable<Input$PayementsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereInput<
                      Input$PayementsScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput<TRes>
    implements
        CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput<TRes> {
  _CopyWithImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateManyWithoutTransactionNestedInput _instance;

  final TRes Function(Input$PayementsUpdateManyWithoutTransactionNestedInput)
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
      _then(Input$PayementsUpdateManyWithoutTransactionNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$PayementsCreateWithoutTransactionInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$PayementsCreateOrConnectWithoutTransactionInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$PayementsWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect': (disconnect as List<Input$PayementsWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$PayementsWhereUniqueInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$PayementsWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$PayementsUpdateManyWithWhereWithoutTransactionInput>?),
        if (deleteMany != _undefined)
          'deleteMany': (deleteMany as List<Input$PayementsScalarWhereInput>?),
      }));
  TRes upsert(
          Iterable<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
                          Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
                          Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
                          Input$PayementsUpdateManyWithWhereWithoutTransactionInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput(
                e,
                (i) => i,
              )))?.toList());
  TRes deleteMany(
          Iterable<Input$PayementsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereInput<
                          Input$PayementsScalarWhereInput>>?)
              _fn) =>
      call(
          deleteMany: _fn(_instance.deleteMany
              ?.map((e) => CopyWith$Input$PayementsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpdateManyWithoutTransactionNestedInput<TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateManyWithoutTransactionNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$PayementsCreateWithoutTransactionInput>? create,
    List<Input$PayementsCreateOrConnectWithoutTransactionInput>?
        connectOrCreate,
    List<Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>? upsert,
    List<Input$PayementsWhereUniqueInput>? $set,
    List<Input$PayementsWhereUniqueInput>? disconnect,
    List<Input$PayementsWhereUniqueInput>? delete,
    List<Input$PayementsWhereUniqueInput>? connect,
    List<Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>? update,
    List<Input$PayementsUpdateManyWithWhereWithoutTransactionInput>? updateMany,
    List<Input$PayementsScalarWhereInput>? deleteMany,
  }) =>
      _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
  deleteMany(_fn) => _res;
}

class Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput {
  factory Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput({
    required Input$PayementsWhereUniqueInput where,
    required Input$PayementsUpdateWithoutTransactionInput update,
    required Input$PayementsCreateWithoutTransactionInput create,
  }) =>
      Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput._(this._$data);

  factory Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$PayementsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] =
        Input$PayementsUpdateWithoutTransactionInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$PayementsCreateWithoutTransactionInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsWhereUniqueInput get where =>
      (_$data['where'] as Input$PayementsWhereUniqueInput);
  Input$PayementsUpdateWithoutTransactionInput get update =>
      (_$data['update'] as Input$PayementsUpdateWithoutTransactionInput);
  Input$PayementsCreateWithoutTransactionInput get create =>
      (_$data['create'] as Input$PayementsCreateWithoutTransactionInput);
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

  CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
          Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput>
      get copyWith =>
          CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput) ||
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

abstract class CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
    TRes> {
  factory CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput(
    Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput instance,
    TRes Function(Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput)
        then,
  ) = _CopyWithImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput;

  factory CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput;

  TRes call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsUpdateWithoutTransactionInput? update,
    Input$PayementsCreateWithoutTransactionInput? create,
  });
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get update;
}

class _CopyWithImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
            TRes> {
  _CopyWithImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput _instance;

  final TRes Function(
      Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$PayementsWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$PayementsUpdateWithoutTransactionInput),
        if (create != _undefined && create != null)
          'create': (create as Input$PayementsCreateWithoutTransactionInput),
      }));
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$PayementsUpdateWithoutTransactionInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput<
            TRes> {
  _CopyWithStubImpl$Input$PayementsUpsertWithWhereUniqueWithoutTransactionInput(
      this._res);

  TRes _res;

  call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsUpdateWithoutTransactionInput? update,
    Input$PayementsCreateWithoutTransactionInput? create,
  }) =>
      _res;
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get update =>
      CopyWith$Input$PayementsUpdateWithoutTransactionInput.stub(_res);
}

class Input$PayementsUpdateWithoutTransactionInput {
  factory Input$PayementsUpdateWithoutTransactionInput({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  }) =>
      Input$PayementsUpdateWithoutTransactionInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsUpdateWithoutTransactionInput._(this._$data);

  factory Input$PayementsUpdateWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$payement as Map<String, dynamic>));
    }
    return Input$PayementsUpdateWithoutTransactionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get payement_id =>
      (_$data['payement_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get payement =>
      (_$data['payement'] as Input$FloatFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] = l$payement_id?.toJson();
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] = l$payement?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsUpdateWithoutTransactionInput<
          Input$PayementsUpdateWithoutTransactionInput>
      get copyWith => CopyWith$Input$PayementsUpdateWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsUpdateWithoutTransactionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> {
  factory CopyWith$Input$PayementsUpdateWithoutTransactionInput(
    Input$PayementsUpdateWithoutTransactionInput instance,
    TRes Function(Input$PayementsUpdateWithoutTransactionInput) then,
  ) = _CopyWithImpl$Input$PayementsUpdateWithoutTransactionInput;

  factory CopyWith$Input$PayementsUpdateWithoutTransactionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateWithoutTransactionInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  });
}

class _CopyWithImpl$Input$PayementsUpdateWithoutTransactionInput<TRes>
    implements CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> {
  _CopyWithImpl$Input$PayementsUpdateWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateWithoutTransactionInput _instance;

  final TRes Function(Input$PayementsUpdateWithoutTransactionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsUpdateWithoutTransactionInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntFieldUpdateOperationsInput?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$PayementsUpdateWithoutTransactionInput<TRes>
    implements CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateWithoutTransactionInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  }) =>
      _res;
}

class Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput {
  factory Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput({
    required Input$PayementsWhereUniqueInput where,
    required Input$PayementsUpdateWithoutTransactionInput data,
  }) =>
      Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput._({
        r'where': where,
        r'data': data,
      });

  Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput._(this._$data);

  factory Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$PayementsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$PayementsUpdateWithoutTransactionInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsWhereUniqueInput get where =>
      (_$data['where'] as Input$PayementsWhereUniqueInput);
  Input$PayementsUpdateWithoutTransactionInput get data =>
      (_$data['data'] as Input$PayementsUpdateWithoutTransactionInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
          Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput>
      get copyWith =>
          CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput) ||
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

abstract class CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
    TRes> {
  factory CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput(
    Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput instance,
    TRes Function(Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput)
        then,
  ) = _CopyWithImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput;

  factory CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput;

  TRes call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsUpdateWithoutTransactionInput? data,
  });
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get data;
}

class _CopyWithImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
            TRes> {
  _CopyWithImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput _instance;

  final TRes Function(
      Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$PayementsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$PayementsUpdateWithoutTransactionInput),
      }));
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$PayementsUpdateWithoutTransactionInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput<
            TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateWithWhereUniqueWithoutTransactionInput(
      this._res);

  TRes _res;

  call({
    Input$PayementsWhereUniqueInput? where,
    Input$PayementsUpdateWithoutTransactionInput? data,
  }) =>
      _res;
  CopyWith$Input$PayementsUpdateWithoutTransactionInput<TRes> get data =>
      CopyWith$Input$PayementsUpdateWithoutTransactionInput.stub(_res);
}

class Input$PayementsUpdateManyWithWhereWithoutTransactionInput {
  factory Input$PayementsUpdateManyWithWhereWithoutTransactionInput({
    required Input$PayementsScalarWhereInput where,
    required Input$PayementsUpdateManyMutationInput data,
  }) =>
      Input$PayementsUpdateManyWithWhereWithoutTransactionInput._({
        r'where': where,
        r'data': data,
      });

  Input$PayementsUpdateManyWithWhereWithoutTransactionInput._(this._$data);

  factory Input$PayementsUpdateManyWithWhereWithoutTransactionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$PayementsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$PayementsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$PayementsUpdateManyWithWhereWithoutTransactionInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayementsScalarWhereInput get where =>
      (_$data['where'] as Input$PayementsScalarWhereInput);
  Input$PayementsUpdateManyMutationInput get data =>
      (_$data['data'] as Input$PayementsUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
          Input$PayementsUpdateManyWithWhereWithoutTransactionInput>
      get copyWith =>
          CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsUpdateManyWithWhereWithoutTransactionInput) ||
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

abstract class CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
    TRes> {
  factory CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput(
    Input$PayementsUpdateManyWithWhereWithoutTransactionInput instance,
    TRes Function(Input$PayementsUpdateManyWithWhereWithoutTransactionInput)
        then,
  ) = _CopyWithImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput;

  factory CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput;

  TRes call({
    Input$PayementsScalarWhereInput? where,
    Input$PayementsUpdateManyMutationInput? data,
  });
  CopyWith$Input$PayementsScalarWhereInput<TRes> get where;
  CopyWith$Input$PayementsUpdateManyMutationInput<TRes> get data;
}

class _CopyWithImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
            TRes> {
  _CopyWithImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateManyWithWhereWithoutTransactionInput _instance;

  final TRes Function(Input$PayementsUpdateManyWithWhereWithoutTransactionInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$PayementsUpdateManyWithWhereWithoutTransactionInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$PayementsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$PayementsUpdateManyMutationInput),
      }));
  CopyWith$Input$PayementsScalarWhereInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$PayementsScalarWhereInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$PayementsUpdateManyMutationInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$PayementsUpdateManyMutationInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
        TRes>
    implements
        CopyWith$Input$PayementsUpdateManyWithWhereWithoutTransactionInput<
            TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateManyWithWhereWithoutTransactionInput(
      this._res);

  TRes _res;

  call({
    Input$PayementsScalarWhereInput? where,
    Input$PayementsUpdateManyMutationInput? data,
  }) =>
      _res;
  CopyWith$Input$PayementsScalarWhereInput<TRes> get where =>
      CopyWith$Input$PayementsScalarWhereInput.stub(_res);
  CopyWith$Input$PayementsUpdateManyMutationInput<TRes> get data =>
      CopyWith$Input$PayementsUpdateManyMutationInput.stub(_res);
}

class Input$PayementsScalarWhereInput {
  factory Input$PayementsScalarWhereInput({
    List<Input$PayementsScalarWhereInput>? AND,
    List<Input$PayementsScalarWhereInput>? OR,
    List<Input$PayementsScalarWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
  }) =>
      Input$PayementsScalarWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (payement_id != null) r'payement_id': payement_id,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsScalarWhereInput._(this._$data);

  factory Input$PayementsScalarWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$PayementsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntFilter.fromJson((l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatFilter.fromJson((l$payement as Map<String, dynamic>));
    }
    return Input$PayementsScalarWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayementsScalarWhereInput>? get AND =>
      (_$data['AND'] as List<Input$PayementsScalarWhereInput>?);
  List<Input$PayementsScalarWhereInput>? get OR =>
      (_$data['OR'] as List<Input$PayementsScalarWhereInput>?);
  List<Input$PayementsScalarWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$PayementsScalarWhereInput>?);
  Input$IntFilter? get payement_id =>
      (_$data['payement_id'] as Input$IntFilter?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$FloatFilter? get payement => (_$data['payement'] as Input$FloatFilter?);
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
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] = l$payement_id?.toJson();
    }
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] = l$payement?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsScalarWhereInput<Input$PayementsScalarWhereInput>
      get copyWith => CopyWith$Input$PayementsScalarWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsScalarWhereInput) ||
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
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
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
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$payement_id = payement_id;
    final l$transaction_id = transaction_id;
    final l$payement = payement;
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
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsScalarWhereInput<TRes> {
  factory CopyWith$Input$PayementsScalarWhereInput(
    Input$PayementsScalarWhereInput instance,
    TRes Function(Input$PayementsScalarWhereInput) then,
  ) = _CopyWithImpl$Input$PayementsScalarWhereInput;

  factory CopyWith$Input$PayementsScalarWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsScalarWhereInput;

  TRes call({
    List<Input$PayementsScalarWhereInput>? AND,
    List<Input$PayementsScalarWhereInput>? OR,
    List<Input$PayementsScalarWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
  });
  TRes AND(
      Iterable<Input$PayementsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereInput<
                      Input$PayementsScalarWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$PayementsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereInput<
                      Input$PayementsScalarWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$PayementsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$PayementsScalarWhereInput<
                      Input$PayementsScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$PayementsScalarWhereInput<TRes>
    implements CopyWith$Input$PayementsScalarWhereInput<TRes> {
  _CopyWithImpl$Input$PayementsScalarWhereInput(
    this._instance,
    this._then,
  );

  final Input$PayementsScalarWhereInput _instance;

  final TRes Function(Input$PayementsScalarWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? payement_id = _undefined,
    Object? transaction_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsScalarWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$PayementsScalarWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$PayementsScalarWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$PayementsScalarWhereInput>?),
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntFilter?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatFilter?),
      }));
  TRes AND(
          Iterable<Input$PayementsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereInput<
                          Input$PayementsScalarWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$PayementsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$PayementsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereInput<
                          Input$PayementsScalarWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(
              _instance.OR?.map((e) => CopyWith$Input$PayementsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$PayementsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$PayementsScalarWhereInput<
                          Input$PayementsScalarWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$PayementsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$PayementsScalarWhereInput<TRes>
    implements CopyWith$Input$PayementsScalarWhereInput<TRes> {
  _CopyWithStubImpl$Input$PayementsScalarWhereInput(this._res);

  TRes _res;

  call({
    List<Input$PayementsScalarWhereInput>? AND,
    List<Input$PayementsScalarWhereInput>? OR,
    List<Input$PayementsScalarWhereInput>? NOT,
    Input$IntFilter? payement_id,
    Input$IntFilter? transaction_id,
    Input$FloatFilter? payement,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$PayementsUpdateManyMutationInput {
  factory Input$PayementsUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  }) =>
      Input$PayementsUpdateManyMutationInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (payement != null) r'payement': payement,
      });

  Input$PayementsUpdateManyMutationInput._(this._$data);

  factory Input$PayementsUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$payement as Map<String, dynamic>));
    }
    return Input$PayementsUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get payement_id =>
      (_$data['payement_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get payement =>
      (_$data['payement'] as Input$FloatFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] = l$payement_id?.toJson();
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] = l$payement?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsUpdateManyMutationInput<
          Input$PayementsUpdateManyMutationInput>
      get copyWith => CopyWith$Input$PayementsUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsUpdateManyMutationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$payement = payement;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$PayementsUpdateManyMutationInput(
    Input$PayementsUpdateManyMutationInput instance,
    TRes Function(Input$PayementsUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$PayementsUpdateManyMutationInput;

  factory CopyWith$Input$PayementsUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  });
}

class _CopyWithImpl$Input$PayementsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$PayementsUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$PayementsUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateManyMutationInput _instance;

  final TRes Function(Input$PayementsUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? payement = _undefined,
  }) =>
      _then(Input$PayementsUpdateManyMutationInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntFieldUpdateOperationsInput?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$PayementsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$PayementsUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
  }) =>
      _res;
}

class Input$TransactionsUpdateWithWhereUniqueWithoutCityInput {
  factory Input$TransactionsUpdateWithWhereUniqueWithoutCityInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsUpdateWithoutCityInput data,
  }) =>
      Input$TransactionsUpdateWithWhereUniqueWithoutCityInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateWithWhereUniqueWithoutCityInput._(this._$data);

  factory Input$TransactionsUpdateWithWhereUniqueWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateWithoutCityInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateWithWhereUniqueWithoutCityInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsUpdateWithoutCityInput get data =>
      (_$data['data'] as Input$TransactionsUpdateWithoutCityInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<
          Input$TransactionsUpdateWithWhereUniqueWithoutCityInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithWhereUniqueWithoutCityInput) ||
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

abstract class CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput(
    Input$TransactionsUpdateWithWhereUniqueWithoutCityInput instance,
    TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput;

  factory CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutCityInput? data,
  });
}

class _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithWhereUniqueWithoutCityInput _instance;

  final TRes Function(Input$TransactionsUpdateWithWhereUniqueWithoutCityInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateWithWhereUniqueWithoutCityInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateWithoutCityInput),
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithWhereUniqueWithoutCityInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsUpdateWithoutCityInput? data,
  }) =>
      _res;
}

class Input$TransactionsUpdateManyWithWhereWithoutCityInput {
  factory Input$TransactionsUpdateManyWithWhereWithoutCityInput({
    required Input$TransactionsScalarWhereInput where,
    required Input$TransactionsUpdateManyMutationInput data,
  }) =>
      Input$TransactionsUpdateManyWithWhereWithoutCityInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionsUpdateManyWithWhereWithoutCityInput._(this._$data);

  factory Input$TransactionsUpdateManyWithWhereWithoutCityInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$TransactionsUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$TransactionsUpdateManyWithWhereWithoutCityInput._(result$data);
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

  CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput<
          Input$TransactionsUpdateManyWithWhereWithoutCityInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyWithWhereWithoutCityInput) ||
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

abstract class CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput(
    Input$TransactionsUpdateManyWithWhereWithoutCityInput instance,
    TRes Function(Input$TransactionsUpdateManyWithWhereWithoutCityInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput;

  factory CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput;

  TRes call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  });
  CopyWith$Input$TransactionsScalarWhereInput<TRes> get where;
  CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput<TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyWithWhereWithoutCityInput _instance;

  final TRes Function(Input$TransactionsUpdateManyWithWhereWithoutCityInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionsUpdateManyWithWhereWithoutCityInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionsUpdateManyMutationInput),
      }));
  CopyWith$Input$TransactionsScalarWhereInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$TransactionsScalarWhereInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionsUpdateManyMutationInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateManyWithWhereWithoutCityInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyWithWhereWithoutCityInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsScalarWhereInput? where,
    Input$TransactionsUpdateManyMutationInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionsScalarWhereInput<TRes> get where =>
      CopyWith$Input$TransactionsScalarWhereInput.stub(_res);
  CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> get data =>
      CopyWith$Input$TransactionsUpdateManyMutationInput.stub(_res);
}

class Input$TransactionsScalarWhereInput {
  factory Input$TransactionsScalarWhereInput({
    List<Input$TransactionsScalarWhereInput>? AND,
    List<Input$TransactionsScalarWhereInput>? OR,
    List<Input$TransactionsScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$IntFilter? transaction_type_id,
    Input$IntFilter? status_id,
  }) =>
      Input$TransactionsScalarWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (seller_id != null) r'seller_id': seller_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (city_id != null) r'city_id': city_id,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
        if (transaction_type_id != null)
          r'transaction_type_id': transaction_type_id,
        if (status_id != null) r'status_id': status_id,
      });

  Input$TransactionsScalarWhereInput._(this._$data);

  factory Input$TransactionsScalarWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionsScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('seller_id')) {
      final l$seller_id = data['seller_id'];
      result$data['seller_id'] = l$seller_id == null
          ? null
          : Input$IntFilter.fromJson((l$seller_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('customer_name')) {
      final l$customer_name = data['customer_name'];
      result$data['customer_name'] = l$customer_name == null
          ? null
          : Input$StringFilter.fromJson(
              (l$customer_name as Map<String, dynamic>));
    }
    if (data.containsKey('customer_phone')) {
      final l$customer_phone = data['customer_phone'];
      result$data['customer_phone'] = l$customer_phone == null
          ? null
          : Input$StringFilter.fromJson(
              (l$customer_phone as Map<String, dynamic>));
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFilter.fromJson((l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$StringFilter.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = l$date == null
          ? null
          : Input$DateTimeFilter.fromJson((l$date as Map<String, dynamic>));
    }
    if (data.containsKey('remainingPayement')) {
      final l$remainingPayement = data['remainingPayement'];
      result$data['remainingPayement'] = l$remainingPayement == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$remainingPayement as Map<String, dynamic>));
    }
    if (data.containsKey('totalPayement')) {
      final l$totalPayement = data['totalPayement'];
      result$data['totalPayement'] = l$totalPayement == null
          ? null
          : Input$FloatFilter.fromJson(
              (l$totalPayement as Map<String, dynamic>));
    }
    if (data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = data['transaction_type_id'];
      result$data['transaction_type_id'] = l$transaction_type_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_type_id as Map<String, dynamic>));
    }
    if (data.containsKey('status_id')) {
      final l$status_id = data['status_id'];
      result$data['status_id'] = l$status_id == null
          ? null
          : Input$IntFilter.fromJson((l$status_id as Map<String, dynamic>));
    }
    return Input$TransactionsScalarWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionsScalarWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionsScalarWhereInput>?);
  List<Input$TransactionsScalarWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionsScalarWhereInput>?);
  List<Input$TransactionsScalarWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionsScalarWhereInput>?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$IntFilter? get seller_id => (_$data['seller_id'] as Input$IntFilter?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$StringFilter? get customer_name =>
      (_$data['customer_name'] as Input$StringFilter?);
  Input$StringFilter? get customer_phone =>
      (_$data['customer_phone'] as Input$StringFilter?);
  Input$IntFilter? get city_id => (_$data['city_id'] as Input$IntFilter?);
  Input$StringFilter? get address => (_$data['address'] as Input$StringFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
  Input$DateTimeFilter? get date => (_$data['date'] as Input$DateTimeFilter?);
  Input$FloatFilter? get remainingPayement =>
      (_$data['remainingPayement'] as Input$FloatFilter?);
  Input$FloatFilter? get totalPayement =>
      (_$data['totalPayement'] as Input$FloatFilter?);
  Input$IntFilter? get transaction_type_id =>
      (_$data['transaction_type_id'] as Input$IntFilter?);
  Input$IntFilter? get status_id => (_$data['status_id'] as Input$IntFilter?);
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
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('seller_id')) {
      final l$seller_id = seller_id;
      result$data['seller_id'] = l$seller_id?.toJson();
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
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id?.toJson();
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
    if (_$data.containsKey('transaction_type_id')) {
      final l$transaction_type_id = transaction_type_id;
      result$data['transaction_type_id'] = l$transaction_type_id?.toJson();
    }
    if (_$data.containsKey('status_id')) {
      final l$status_id = status_id;
      result$data['status_id'] = l$status_id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransactionsScalarWhereInput<
          Input$TransactionsScalarWhereInput>
      get copyWith => CopyWith$Input$TransactionsScalarWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsScalarWhereInput) ||
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
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (_$data.containsKey('transaction_id') !=
        other._$data.containsKey('transaction_id')) {
      return false;
    }
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (_$data.containsKey('seller_id') !=
        other._$data.containsKey('seller_id')) {
      return false;
    }
    if (l$seller_id != lOther$seller_id) {
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
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
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
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (_$data.containsKey('transaction_type_id') !=
        other._$data.containsKey('transaction_type_id')) {
      return false;
    }
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$status_id = status_id;
    final lOther$status_id = other.status_id;
    if (_$data.containsKey('status_id') !=
        other._$data.containsKey('status_id')) {
      return false;
    }
    if (l$status_id != lOther$status_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_id = transaction_id;
    final l$seller_id = seller_id;
    final l$product_id = product_id;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$city_id = city_id;
    final l$address = address;
    final l$quantity = quantity;
    final l$date = date;
    final l$remainingPayement = remainingPayement;
    final l$totalPayement = totalPayement;
    final l$transaction_type_id = transaction_type_id;
    final l$status_id = status_id;
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
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('seller_id') ? l$seller_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('customer_name') ? l$customer_name : const {},
      _$data.containsKey('customer_phone') ? l$customer_phone : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('remainingPayement') ? l$remainingPayement : const {},
      _$data.containsKey('totalPayement') ? l$totalPayement : const {},
      _$data.containsKey('transaction_type_id')
          ? l$transaction_type_id
          : const {},
      _$data.containsKey('status_id') ? l$status_id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionsScalarWhereInput<TRes> {
  factory CopyWith$Input$TransactionsScalarWhereInput(
    Input$TransactionsScalarWhereInput instance,
    TRes Function(Input$TransactionsScalarWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionsScalarWhereInput;

  factory CopyWith$Input$TransactionsScalarWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsScalarWhereInput;

  TRes call({
    List<Input$TransactionsScalarWhereInput>? AND,
    List<Input$TransactionsScalarWhereInput>? OR,
    List<Input$TransactionsScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$IntFilter? transaction_type_id,
    Input$IntFilter? status_id,
  });
  TRes AND(
      Iterable<Input$TransactionsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereInput<
                      Input$TransactionsScalarWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereInput<
                      Input$TransactionsScalarWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionsScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionsScalarWhereInput<
                      Input$TransactionsScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionsScalarWhereInput<TRes>
    implements CopyWith$Input$TransactionsScalarWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionsScalarWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsScalarWhereInput _instance;

  final TRes Function(Input$TransactionsScalarWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_id = _undefined,
    Object? seller_id = _undefined,
    Object? product_id = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? city_id = _undefined,
    Object? address = _undefined,
    Object? quantity = _undefined,
    Object? date = _undefined,
    Object? remainingPayement = _undefined,
    Object? totalPayement = _undefined,
    Object? transaction_type_id = _undefined,
    Object? status_id = _undefined,
  }) =>
      _then(Input$TransactionsScalarWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionsScalarWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionsScalarWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionsScalarWhereInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (seller_id != _undefined)
          'seller_id': (seller_id as Input$IntFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (customer_name != _undefined)
          'customer_name': (customer_name as Input$StringFilter?),
        if (customer_phone != _undefined)
          'customer_phone': (customer_phone as Input$StringFilter?),
        if (city_id != _undefined) 'city_id': (city_id as Input$IntFilter?),
        if (address != _undefined) 'address': (address as Input$StringFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
        if (date != _undefined) 'date': (date as Input$DateTimeFilter?),
        if (remainingPayement != _undefined)
          'remainingPayement': (remainingPayement as Input$FloatFilter?),
        if (totalPayement != _undefined)
          'totalPayement': (totalPayement as Input$FloatFilter?),
        if (transaction_type_id != _undefined)
          'transaction_type_id': (transaction_type_id as Input$IntFilter?),
        if (status_id != _undefined)
          'status_id': (status_id as Input$IntFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereInput<
                          Input$TransactionsScalarWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$TransactionsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereInput<
                          Input$TransactionsScalarWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$TransactionsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionsScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionsScalarWhereInput<
                          Input$TransactionsScalarWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$TransactionsScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionsScalarWhereInput<TRes>
    implements CopyWith$Input$TransactionsScalarWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsScalarWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionsScalarWhereInput>? AND,
    List<Input$TransactionsScalarWhereInput>? OR,
    List<Input$TransactionsScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? seller_id,
    Input$IntFilter? product_id,
    Input$StringFilter? customer_name,
    Input$StringFilter? customer_phone,
    Input$IntFilter? city_id,
    Input$StringFilter? address,
    Input$IntFilter? quantity,
    Input$DateTimeFilter? date,
    Input$FloatFilter? remainingPayement,
    Input$FloatFilter? totalPayement,
    Input$IntFilter? transaction_type_id,
    Input$IntFilter? status_id,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionsUpdateManyMutationInput {
  factory Input$TransactionsUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? transaction_id,
    Input$IntFieldUpdateOperationsInput? product_id,
    Input$StringFieldUpdateOperationsInput? customer_name,
    Input$StringFieldUpdateOperationsInput? customer_phone,
    Input$StringFieldUpdateOperationsInput? address,
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$DateTimeFieldUpdateOperationsInput? date,
    Input$FloatFieldUpdateOperationsInput? remainingPayement,
    Input$FloatFieldUpdateOperationsInput? totalPayement,
  }) =>
      Input$TransactionsUpdateManyMutationInput._({
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (customer_name != null) r'customer_name': customer_name,
        if (customer_phone != null) r'customer_phone': customer_phone,
        if (address != null) r'address': address,
        if (quantity != null) r'quantity': quantity,
        if (date != null) r'date': date,
        if (remainingPayement != null) r'remainingPayement': remainingPayement,
        if (totalPayement != null) r'totalPayement': totalPayement,
      });

  Input$TransactionsUpdateManyMutationInput._(this._$data);

  factory Input$TransactionsUpdateManyMutationInput.fromJson(
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
    return Input$TransactionsUpdateManyMutationInput._(result$data);
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
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateManyMutationInput<
          Input$TransactionsUpdateManyMutationInput>
      get copyWith => CopyWith$Input$TransactionsUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateManyMutationInput) ||
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
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateManyMutationInput(
    Input$TransactionsUpdateManyMutationInput instance,
    TRes Function(Input$TransactionsUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateManyMutationInput;

  factory CopyWith$Input$TransactionsUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateManyMutationInput;

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
  });
}

class _CopyWithImpl$Input$TransactionsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateManyMutationInput _instance;

  final TRes Function(Input$TransactionsUpdateManyMutationInput) _then;

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
  }) =>
      _then(Input$TransactionsUpdateManyMutationInput._({
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
      }));
}

class _CopyWithStubImpl$Input$TransactionsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionsUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateManyMutationInput(this._res);

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
  }) =>
      _res;
}

class Input$ColorsCreateInput {
  factory Input$ColorsCreateInput({
    required int id,
    required String color,
    Input$ProductModelCreateNestedManyWithoutColorInput? ProductModel,
  }) =>
      Input$ColorsCreateInput._({
        r'id': id,
        r'color': color,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ColorsCreateInput._(this._$data);

  factory Input$ColorsCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$color = data['color'];
    result$data['color'] = (l$color as String);
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelCreateNestedManyWithoutColorInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ColorsCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String get color => (_$data['color'] as String);
  Input$ProductModelCreateNestedManyWithoutColorInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelCreateNestedManyWithoutColorInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$color = color;
    result$data['color'] = l$color;
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsCreateInput<Input$ColorsCreateInput> get copyWith =>
      CopyWith$Input$ColorsCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsCreateInput) ||
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
    final l$color = color;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      l$id,
      l$color,
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsCreateInput<TRes> {
  factory CopyWith$Input$ColorsCreateInput(
    Input$ColorsCreateInput instance,
    TRes Function(Input$ColorsCreateInput) then,
  ) = _CopyWithImpl$Input$ColorsCreateInput;

  factory CopyWith$Input$ColorsCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsCreateInput;

  TRes call({
    int? id,
    String? color,
    Input$ProductModelCreateNestedManyWithoutColorInput? ProductModel,
  });
  CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ColorsCreateInput<TRes>
    implements CopyWith$Input$ColorsCreateInput<TRes> {
  _CopyWithImpl$Input$ColorsCreateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsCreateInput _instance;

  final TRes Function(Input$ColorsCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ColorsCreateInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (color != _undefined && color != null) 'color': (color as String),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelCreateNestedManyWithoutColorInput?),
      }));
  CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ColorsCreateInput<TRes>
    implements CopyWith$Input$ColorsCreateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsCreateInput(this._res);

  TRes _res;

  call({
    int? id,
    String? color,
    Input$ProductModelCreateNestedManyWithoutColorInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput.stub(
              _res);
}

class Input$ProductModelCreateNestedManyWithoutColorInput {
  factory Input$ProductModelCreateNestedManyWithoutColorInput({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      Input$ProductModelCreateNestedManyWithoutColorInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductModelCreateNestedManyWithoutColorInput._(this._$data);

  factory Input$ProductModelCreateNestedManyWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutColorInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutColorInput.fromJson(
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
    return Input$ProductModelCreateNestedManyWithoutColorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutColorInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutColorInput>?);
  List<Input$ProductModelCreateOrConnectWithoutColorInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutColorInput>?);
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

  CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<
          Input$ProductModelCreateNestedManyWithoutColorInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateNestedManyWithoutColorInput) ||
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

abstract class CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput(
    Input$ProductModelCreateNestedManyWithoutColorInput instance,
    TRes Function(Input$ProductModelCreateNestedManyWithoutColorInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutColorInput;

  factory CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutColorInput;

  TRes call({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutColorInput<
                      Input$ProductModelCreateWithoutColorInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
                      Input$ProductModelCreateOrConnectWithoutColorInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutColorInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateNestedManyWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateNestedManyWithoutColorInput _instance;

  final TRes Function(Input$ProductModelCreateNestedManyWithoutColorInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductModelCreateNestedManyWithoutColorInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$ProductModelCreateWithoutColorInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutColorInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductModelWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutColorInput<
                          Input$ProductModelCreateWithoutColorInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutColorInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
                          Input$ProductModelCreateOrConnectWithoutColorInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelCreateNestedManyWithoutColorInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateNestedManyWithoutColorInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$ProductModelCreateWithoutColorInput {
  factory Input$ProductModelCreateWithoutColorInput({
    required int quantity,
    required Input$ProductsCreateNestedOneWithoutProductModelInput product,
    required Input$SizesCreateNestedOneWithoutProductModelInput size,
  }) =>
      Input$ProductModelCreateWithoutColorInput._({
        r'quantity': quantity,
        r'product': product,
        r'size': size,
      });

  Input$ProductModelCreateWithoutColorInput._(this._$data);

  factory Input$ProductModelCreateWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
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
    return Input$ProductModelCreateWithoutColorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  Input$ProductsCreateNestedOneWithoutProductModelInput get product =>
      (_$data['product']
          as Input$ProductsCreateNestedOneWithoutProductModelInput);
  Input$SizesCreateNestedOneWithoutProductModelInput get size =>
      (_$data['size'] as Input$SizesCreateNestedOneWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$product = product;
    result$data['product'] = l$product.toJson();
    final l$size = size;
    result$data['size'] = l$size.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateWithoutColorInput<
          Input$ProductModelCreateWithoutColorInput>
      get copyWith => CopyWith$Input$ProductModelCreateWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateWithoutColorInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
    return Object.hashAll([
      l$quantity,
      l$product,
      l$size,
    ]);
  }
}

abstract class CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> {
  factory CopyWith$Input$ProductModelCreateWithoutColorInput(
    Input$ProductModelCreateWithoutColorInput instance,
    TRes Function(Input$ProductModelCreateWithoutColorInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateWithoutColorInput;

  factory CopyWith$Input$ProductModelCreateWithoutColorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateWithoutColorInput;

  TRes call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
  });
  CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes>
      get product;
  CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<TRes> get size;
}

class _CopyWithImpl$Input$ProductModelCreateWithoutColorInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateWithoutColorInput _instance;

  final TRes Function(Input$ProductModelCreateWithoutColorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$ProductModelCreateWithoutColorInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (product != _undefined && product != null)
          'product': (product
              as Input$ProductsCreateNestedOneWithoutProductModelInput),
        if (size != _undefined && size != null)
          'size': (size as Input$SizesCreateNestedOneWithoutProductModelInput),
      }));
  CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes>
      get product {
    final local$product = _instance.product;
    return CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput(
        local$product, (e) => call(product: e));
  }

  CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<TRes> get size {
    final local$size = _instance.size;
    return CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput(
        local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateWithoutColorInput<TRes>
    implements CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateWithoutColorInput(this._res);

  TRes _res;

  call({
    int? quantity,
    Input$ProductsCreateNestedOneWithoutProductModelInput? product,
    Input$SizesCreateNestedOneWithoutProductModelInput? size,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes>
      get product =>
          CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput.stub(
              _res);
  CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<TRes> get size =>
      CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput.stub(_res);
}

class Input$ProductsCreateNestedOneWithoutProductModelInput {
  factory Input$ProductsCreateNestedOneWithoutProductModelInput({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  }) =>
      Input$ProductsCreateNestedOneWithoutProductModelInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductsCreateNestedOneWithoutProductModelInput._(this._$data);

  factory Input$ProductsCreateNestedOneWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductsCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductsCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ProductsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$ProductsCreateNestedOneWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$ProductsCreateWithoutProductModelInput?);
  Input$ProductsCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ProductsCreateOrConnectWithoutProductModelInput?);
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

  CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<
          Input$ProductsCreateNestedOneWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateNestedOneWithoutProductModelInput) ||
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

abstract class CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput(
    Input$ProductsCreateNestedOneWithoutProductModelInput instance,
    TRes Function(Input$ProductsCreateNestedOneWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateNestedOneWithoutProductModelInput;

  factory CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutProductModelInput;

  TRes call({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  });
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateNestedOneWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateNestedOneWithoutProductModelInput _instance;

  final TRes Function(Input$ProductsCreateNestedOneWithoutProductModelInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductsCreateNestedOneWithoutProductModelInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ProductsCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductsCreateOrConnectWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductsWhereUniqueInput?),
      }));
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutProductModelInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateNestedOneWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput.stub(
              _res);
}

class Input$ProductsCreateWithoutProductModelInput {
  factory Input$ProductsCreateWithoutProductModelInput({
    required int reference,
    required String name,
    required double buyingPrice,
    required double sellingPrice,
    required String description,
    required String picture,
    required Input$ProductFamilyCreateNestedOneWithoutProductsInput family,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      Input$ProductsCreateWithoutProductModelInput._({
        r'reference': reference,
        r'name': name,
        r'buyingPrice': buyingPrice,
        r'sellingPrice': sellingPrice,
        r'description': description,
        r'picture': picture,
        r'family': family,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsCreateWithoutProductModelInput._(this._$data);

  factory Input$ProductsCreateWithoutProductModelInput.fromJson(
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
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductCreateNestedManyWithoutProductInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsCreateWithoutProductModelInput._(result$data);
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
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsCreateWithoutProductModelInput<
          Input$ProductsCreateWithoutProductModelInput>
      get copyWith => CopyWith$Input$ProductsCreateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateWithoutProductModelInput) ||
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
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      l$reference,
      l$name,
      l$buyingPrice,
      l$sellingPrice,
      l$description,
      l$picture,
      l$family,
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ProductsCreateWithoutProductModelInput(
    Input$ProductsCreateWithoutProductModelInput instance,
    TRes Function(Input$ProductsCreateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateWithoutProductModelInput;

  factory CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateWithoutProductModelInput;

  TRes call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes>
      get family;
  CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<TRes>
      get TransactionProduct;
}

class _CopyWithImpl$Input$ProductsCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateWithoutProductModelInput _instance;

  final TRes Function(Input$ProductsCreateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsCreateWithoutProductModelInput._({
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
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductCreateNestedManyWithoutProductInput?),
      }));
  CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes>
      get family {
    final local$family = _instance.family;
    return CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput(
        local$family, (e) => call(family: e));
  }

  CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<TRes>
      get TransactionProduct {
    final local$TransactionProduct = _instance.TransactionProduct;
    return local$TransactionProduct == null
        ? CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput(
            local$TransactionProduct, (e) => call(TransactionProduct: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    int? reference,
    String? name,
    double? buyingPrice,
    double? sellingPrice,
    String? description,
    String? picture,
    Input$ProductFamilyCreateNestedOneWithoutProductsInput? family,
    Input$TransactionProductCreateNestedManyWithoutProductInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes>
      get family =>
          CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput.stub(
              _res);
  CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<TRes>
      get TransactionProduct =>
          CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput
              .stub(_res);
}

class Input$ProductFamilyCreateNestedOneWithoutProductsInput {
  factory Input$ProductFamilyCreateNestedOneWithoutProductsInput({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyWhereUniqueInput? connect,
  }) =>
      Input$ProductFamilyCreateNestedOneWithoutProductsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductFamilyCreateNestedOneWithoutProductsInput._(this._$data);

  factory Input$ProductFamilyCreateNestedOneWithoutProductsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductFamilyCreateWithoutProductsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductFamilyCreateOrConnectWithoutProductsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ProductFamilyWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$ProductFamilyCreateNestedOneWithoutProductsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyCreateWithoutProductsInput? get create =>
      (_$data['create'] as Input$ProductFamilyCreateWithoutProductsInput?);
  Input$ProductFamilyCreateOrConnectWithoutProductsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ProductFamilyCreateOrConnectWithoutProductsInput?);
  Input$ProductFamilyWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ProductFamilyWhereUniqueInput?);
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

  CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<
          Input$ProductFamilyCreateNestedOneWithoutProductsInput>
      get copyWith =>
          CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyCreateNestedOneWithoutProductsInput) ||
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

abstract class CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<
    TRes> {
  factory CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput(
    Input$ProductFamilyCreateNestedOneWithoutProductsInput instance,
    TRes Function(Input$ProductFamilyCreateNestedOneWithoutProductsInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput;

  factory CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput;

  TRes call({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyWhereUniqueInput? connect,
  });
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create;
  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes>
    implements
        CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyCreateNestedOneWithoutProductsInput _instance;

  final TRes Function(Input$ProductFamilyCreateNestedOneWithoutProductsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductFamilyCreateNestedOneWithoutProductsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ProductFamilyCreateWithoutProductsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductFamilyCreateOrConnectWithoutProductsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductFamilyWhereUniqueInput?),
      }));
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput<
        TRes>
    implements
        CopyWith$Input$ProductFamilyCreateNestedOneWithoutProductsInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyCreateNestedOneWithoutProductsInput(
      this._res);

  TRes _res;

  call({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create =>
      CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(_res);
  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput.stub(
              _res);
}

class Input$ProductFamilyCreateWithoutProductsInput {
  factory Input$ProductFamilyCreateWithoutProductsInput(
          {required String name}) =>
      Input$ProductFamilyCreateWithoutProductsInput._({
        r'name': name,
      });

  Input$ProductFamilyCreateWithoutProductsInput._(this._$data);

  factory Input$ProductFamilyCreateWithoutProductsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$ProductFamilyCreateWithoutProductsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<
          Input$ProductFamilyCreateWithoutProductsInput>
      get copyWith => CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyCreateWithoutProductsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> {
  factory CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
    Input$ProductFamilyCreateWithoutProductsInput instance,
    TRes Function(Input$ProductFamilyCreateWithoutProductsInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyCreateWithoutProductsInput;

  factory CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyCreateWithoutProductsInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$ProductFamilyCreateWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyCreateWithoutProductsInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyCreateWithoutProductsInput _instance;

  final TRes Function(Input$ProductFamilyCreateWithoutProductsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$ProductFamilyCreateWithoutProductsInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyCreateWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyCreateWithoutProductsInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$ProductFamilyCreateOrConnectWithoutProductsInput {
  factory Input$ProductFamilyCreateOrConnectWithoutProductsInput({
    required Input$ProductFamilyWhereUniqueInput where,
    required Input$ProductFamilyCreateWithoutProductsInput create,
  }) =>
      Input$ProductFamilyCreateOrConnectWithoutProductsInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductFamilyCreateOrConnectWithoutProductsInput._(this._$data);

  factory Input$ProductFamilyCreateOrConnectWithoutProductsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductFamilyWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductFamilyCreateWithoutProductsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductFamilyCreateOrConnectWithoutProductsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductFamilyWhereUniqueInput);
  Input$ProductFamilyCreateWithoutProductsInput get create =>
      (_$data['create'] as Input$ProductFamilyCreateWithoutProductsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<
          Input$ProductFamilyCreateOrConnectWithoutProductsInput>
      get copyWith =>
          CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyCreateOrConnectWithoutProductsInput) ||
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

abstract class CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<
    TRes> {
  factory CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
    Input$ProductFamilyCreateOrConnectWithoutProductsInput instance,
    TRes Function(Input$ProductFamilyCreateOrConnectWithoutProductsInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput;

  factory CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput;

  TRes call({
    Input$ProductFamilyWhereUniqueInput? where,
    Input$ProductFamilyCreateWithoutProductsInput? create,
  });
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
    implements
        CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyCreateOrConnectWithoutProductsInput _instance;

  final TRes Function(Input$ProductFamilyCreateOrConnectWithoutProductsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductFamilyCreateOrConnectWithoutProductsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductFamilyWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductFamilyCreateWithoutProductsInput),
      }));
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput<
        TRes>
    implements
        CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
      this._res);

  TRes _res;

  call({
    Input$ProductFamilyWhereUniqueInput? where,
    Input$ProductFamilyCreateWithoutProductsInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create =>
      CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(_res);
}

class Input$TransactionProductCreateNestedManyWithoutProductInput {
  factory Input$TransactionProductCreateNestedManyWithoutProductInput({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductWhereUniqueInput>? connect,
  }) =>
      Input$TransactionProductCreateNestedManyWithoutProductInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionProductCreateNestedManyWithoutProductInput._(this._$data);

  factory Input$TransactionProductCreateNestedManyWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductCreateWithoutProductInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductCreateOrConnectWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionProductCreateNestedManyWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionProductCreateWithoutProductInput>? get create =>
      (_$data['create']
          as List<Input$TransactionProductCreateWithoutProductInput>?);
  List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionProductCreateOrConnectWithoutProductInput>?);
  List<Input$TransactionProductWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionProductWhereUniqueInput>?);
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

  CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<
          Input$TransactionProductCreateNestedManyWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductCreateNestedManyWithoutProductInput) ||
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

abstract class CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput(
    Input$TransactionProductCreateNestedManyWithoutProductInput instance,
    TRes Function(Input$TransactionProductCreateNestedManyWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductCreateNestedManyWithoutProductInput;

  factory CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductCreateNestedManyWithoutProductInput;

  TRes call({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductWhereUniqueInput>? connect,
  });
  TRes create(
      Iterable<Input$TransactionProductCreateWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductCreateWithoutProductInput<
                      Input$TransactionProductCreateWithoutProductInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionProductCreateOrConnectWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
                      Input$TransactionProductCreateOrConnectWithoutProductInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionProductCreateNestedManyWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductCreateNestedManyWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductCreateNestedManyWithoutProductInput _instance;

  final TRes Function(
      Input$TransactionProductCreateNestedManyWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionProductCreateNestedManyWithoutProductInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as List<Input$TransactionProductCreateWithoutProductInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate as List<
              Input$TransactionProductCreateOrConnectWithoutProductInput>?),
        if (connect != _undefined)
          'connect':
              (connect as List<Input$TransactionProductWhereUniqueInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionProductCreateWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductCreateWithoutProductInput<
                          Input$TransactionProductCreateWithoutProductInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create?.map(
              (e) => CopyWith$Input$TransactionProductCreateWithoutProductInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionProductCreateOrConnectWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
                          Input$TransactionProductCreateOrConnectWithoutProductInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionProductCreateNestedManyWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductCreateNestedManyWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductCreateNestedManyWithoutProductInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductWhereUniqueInput>? connect,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
}

class Input$TransactionProductCreateWithoutProductInput {
  factory Input$TransactionProductCreateWithoutProductInput({
    required int quantity,
    required double price,
    required String product_name,
  }) =>
      Input$TransactionProductCreateWithoutProductInput._({
        r'quantity': quantity,
        r'price': price,
        r'product_name': product_name,
      });

  Input$TransactionProductCreateWithoutProductInput._(this._$data);

  factory Input$TransactionProductCreateWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$product_name = data['product_name'];
    result$data['product_name'] = (l$product_name as String);
    return Input$TransactionProductCreateWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);
  double get price => (_$data['price'] as double);
  String get product_name => (_$data['product_name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$price = price;
    result$data['price'] = l$price;
    final l$product_name = product_name;
    result$data['product_name'] = l$product_name;
    return result$data;
  }

  CopyWith$Input$TransactionProductCreateWithoutProductInput<
          Input$TransactionProductCreateWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductCreateWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductCreateWithoutProductInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      l$quantity,
      l$price,
      l$product_name,
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductCreateWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductCreateWithoutProductInput(
    Input$TransactionProductCreateWithoutProductInput instance,
    TRes Function(Input$TransactionProductCreateWithoutProductInput) then,
  ) = _CopyWithImpl$Input$TransactionProductCreateWithoutProductInput;

  factory CopyWith$Input$TransactionProductCreateWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductCreateWithoutProductInput;

  TRes call({
    int? quantity,
    double? price,
    String? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductCreateWithoutProductInput<TRes>
    implements
        CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> {
  _CopyWithImpl$Input$TransactionProductCreateWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductCreateWithoutProductInput _instance;

  final TRes Function(Input$TransactionProductCreateWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductCreateWithoutProductInput._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (price != _undefined && price != null) 'price': (price as double),
        if (product_name != _undefined && product_name != null)
          'product_name': (product_name as String),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductCreateWithoutProductInput<TRes>
    implements
        CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductCreateWithoutProductInput(
      this._res);

  TRes _res;

  call({
    int? quantity,
    double? price,
    String? product_name,
  }) =>
      _res;
}

class Input$TransactionProductCreateOrConnectWithoutProductInput {
  factory Input$TransactionProductCreateOrConnectWithoutProductInput({
    required Input$TransactionProductWhereUniqueInput where,
    required Input$TransactionProductCreateWithoutProductInput create,
  }) =>
      Input$TransactionProductCreateOrConnectWithoutProductInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionProductCreateOrConnectWithoutProductInput._(this._$data);

  factory Input$TransactionProductCreateOrConnectWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionProductWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionProductCreateWithoutProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionProductCreateOrConnectWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionProductWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionProductWhereUniqueInput);
  Input$TransactionProductCreateWithoutProductInput get create =>
      (_$data['create'] as Input$TransactionProductCreateWithoutProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
          Input$TransactionProductCreateOrConnectWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductCreateOrConnectWithoutProductInput) ||
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

abstract class CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput(
    Input$TransactionProductCreateOrConnectWithoutProductInput instance,
    TRes Function(Input$TransactionProductCreateOrConnectWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductCreateOrConnectWithoutProductInput;

  factory CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductCreateOrConnectWithoutProductInput;

  TRes call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductCreateWithoutProductInput? create,
  });
  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionProductCreateOrConnectWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductCreateOrConnectWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductCreateOrConnectWithoutProductInput _instance;

  final TRes Function(
      Input$TransactionProductCreateOrConnectWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionProductCreateOrConnectWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionProductWhereUniqueInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionProductCreateWithoutProductInput),
      }));
  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionProductCreateWithoutProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductCreateOrConnectWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductCreateOrConnectWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductCreateWithoutProductInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create =>
      CopyWith$Input$TransactionProductCreateWithoutProductInput.stub(_res);
}

class Input$ProductsCreateOrConnectWithoutProductModelInput {
  factory Input$ProductsCreateOrConnectWithoutProductModelInput({
    required Input$ProductsWhereUniqueInput where,
    required Input$ProductsCreateWithoutProductModelInput create,
  }) =>
      Input$ProductsCreateOrConnectWithoutProductModelInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductsCreateOrConnectWithoutProductModelInput._(this._$data);

  factory Input$ProductsCreateOrConnectWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductsCreateWithoutProductModelInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductsCreateOrConnectWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Input$ProductsCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<
          Input$ProductsCreateOrConnectWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateOrConnectWithoutProductModelInput) ||
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

abstract class CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput(
    Input$ProductsCreateOrConnectWithoutProductModelInput instance,
    TRes Function(Input$ProductsCreateOrConnectWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateOrConnectWithoutProductModelInput;

  factory CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutProductModelInput;

  TRes call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateOrConnectWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateOrConnectWithoutProductModelInput _instance;

  final TRes Function(Input$ProductsCreateOrConnectWithoutProductModelInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsCreateOrConnectWithoutProductModelInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductsCreateWithoutProductModelInput),
      }));
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutProductModelInput<
        TRes>
    implements
        CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateOrConnectWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsWhereUniqueInput? where,
    Input$ProductsCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(_res);
}

class Input$SizesCreateNestedOneWithoutProductModelInput {
  factory Input$SizesCreateNestedOneWithoutProductModelInput({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesWhereUniqueInput? connect,
  }) =>
      Input$SizesCreateNestedOneWithoutProductModelInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$SizesCreateNestedOneWithoutProductModelInput._(this._$data);

  factory Input$SizesCreateNestedOneWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$SizesCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$SizesCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$SizesWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$SizesCreateNestedOneWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$SizesCreateWithoutProductModelInput?);
  Input$SizesCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$SizesCreateOrConnectWithoutProductModelInput?);
  Input$SizesWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$SizesWhereUniqueInput?);
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

  CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<
          Input$SizesCreateNestedOneWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesCreateNestedOneWithoutProductModelInput) ||
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

abstract class CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput(
    Input$SizesCreateNestedOneWithoutProductModelInput instance,
    TRes Function(Input$SizesCreateNestedOneWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$SizesCreateNestedOneWithoutProductModelInput;

  factory CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SizesCreateNestedOneWithoutProductModelInput;

  TRes call({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesWhereUniqueInput? connect,
  });
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$SizesCreateNestedOneWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$SizesCreateNestedOneWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$SizesCreateNestedOneWithoutProductModelInput _instance;

  final TRes Function(Input$SizesCreateNestedOneWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$SizesCreateNestedOneWithoutProductModelInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$SizesCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$SizesCreateOrConnectWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$SizesWhereUniqueInput?),
      }));
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$SizesCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$SizesCreateNestedOneWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$SizesCreateNestedOneWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$SizesCreateNestedOneWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$SizesCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput.stub(
              _res);
}

class Input$SizesCreateWithoutProductModelInput {
  factory Input$SizesCreateWithoutProductModelInput({
    required int id,
    required String size,
  }) =>
      Input$SizesCreateWithoutProductModelInput._({
        r'id': id,
        r'size': size,
      });

  Input$SizesCreateWithoutProductModelInput._(this._$data);

  factory Input$SizesCreateWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$size = data['size'];
    result$data['size'] = (l$size as String);
    return Input$SizesCreateWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String get size => (_$data['size'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$size = size;
    result$data['size'] = l$size;
    return result$data;
  }

  CopyWith$Input$SizesCreateWithoutProductModelInput<
          Input$SizesCreateWithoutProductModelInput>
      get copyWith => CopyWith$Input$SizesCreateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesCreateWithoutProductModelInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    return Object.hashAll([
      l$id,
      l$size,
    ]);
  }
}

abstract class CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$SizesCreateWithoutProductModelInput(
    Input$SizesCreateWithoutProductModelInput instance,
    TRes Function(Input$SizesCreateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$SizesCreateWithoutProductModelInput;

  factory CopyWith$Input$SizesCreateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesCreateWithoutProductModelInput;

  TRes call({
    int? id,
    String? size,
  });
}

class _CopyWithImpl$Input$SizesCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$SizesCreateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$SizesCreateWithoutProductModelInput _instance;

  final TRes Function(Input$SizesCreateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesCreateWithoutProductModelInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (size != _undefined && size != null) 'size': (size as String),
      }));
}

class _CopyWithStubImpl$Input$SizesCreateWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$SizesCreateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    int? id,
    String? size,
  }) =>
      _res;
}

class Input$SizesCreateOrConnectWithoutProductModelInput {
  factory Input$SizesCreateOrConnectWithoutProductModelInput({
    required Input$SizesWhereUniqueInput where,
    required Input$SizesCreateWithoutProductModelInput create,
  }) =>
      Input$SizesCreateOrConnectWithoutProductModelInput._({
        r'where': where,
        r'create': create,
      });

  Input$SizesCreateOrConnectWithoutProductModelInput._(this._$data);

  factory Input$SizesCreateOrConnectWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$SizesWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$SizesCreateWithoutProductModelInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$SizesCreateOrConnectWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesWhereUniqueInput get where =>
      (_$data['where'] as Input$SizesWhereUniqueInput);
  Input$SizesCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$SizesCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<
          Input$SizesCreateOrConnectWithoutProductModelInput>
      get copyWith =>
          CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesCreateOrConnectWithoutProductModelInput) ||
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

abstract class CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<
    TRes> {
  factory CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput(
    Input$SizesCreateOrConnectWithoutProductModelInput instance,
    TRes Function(Input$SizesCreateOrConnectWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$SizesCreateOrConnectWithoutProductModelInput;

  factory CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SizesCreateOrConnectWithoutProductModelInput;

  TRes call({
    Input$SizesWhereUniqueInput? where,
    Input$SizesCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$SizesCreateOrConnectWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$SizesCreateOrConnectWithoutProductModelInput _instance;

  final TRes Function(Input$SizesCreateOrConnectWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$SizesCreateOrConnectWithoutProductModelInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$SizesWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$SizesCreateWithoutProductModelInput),
      }));
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$SizesCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
    implements
        CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$SizesCreateOrConnectWithoutProductModelInput(
      this._res);

  TRes _res;

  call({
    Input$SizesWhereUniqueInput? where,
    Input$SizesCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$SizesCreateWithoutProductModelInput.stub(_res);
}

class Input$ProductModelCreateOrConnectWithoutColorInput {
  factory Input$ProductModelCreateOrConnectWithoutColorInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelCreateWithoutColorInput create,
  }) =>
      Input$ProductModelCreateOrConnectWithoutColorInput._({
        r'where': where,
        r'create': create,
      });

  Input$ProductModelCreateOrConnectWithoutColorInput._(this._$data);

  factory Input$ProductModelCreateOrConnectWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductModelCreateWithoutColorInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductModelCreateOrConnectWithoutColorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelCreateWithoutColorInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutColorInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
          Input$ProductModelCreateOrConnectWithoutColorInput>
      get copyWith =>
          CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelCreateOrConnectWithoutColorInput) ||
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

abstract class CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
    TRes> {
  factory CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput(
    Input$ProductModelCreateOrConnectWithoutColorInput instance,
    TRes Function(Input$ProductModelCreateOrConnectWithoutColorInput) then,
  ) = _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutColorInput;

  factory CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutColorInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutColorInput? create,
  });
  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutColorInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<TRes> {
  _CopyWithImpl$Input$ProductModelCreateOrConnectWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelCreateOrConnectWithoutColorInput _instance;

  final TRes Function(Input$ProductModelCreateOrConnectWithoutColorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelCreateOrConnectWithoutColorInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutColorInput),
      }));
  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutColorInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutColorInput<TRes>
    implements
        CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelCreateOrConnectWithoutColorInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelCreateWithoutColorInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutColorInput.stub(_res);
}

class Input$ColorsUpdateManyMutationInput {
  factory Input$ColorsUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  }) =>
      Input$ColorsUpdateManyMutationInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
      });

  Input$ColorsUpdateManyMutationInput._(this._$data);

  factory Input$ColorsUpdateManyMutationInput.fromJson(
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
    return Input$ColorsUpdateManyMutationInput._(result$data);
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

  CopyWith$Input$ColorsUpdateManyMutationInput<
          Input$ColorsUpdateManyMutationInput>
      get copyWith => CopyWith$Input$ColorsUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsUpdateManyMutationInput) ||
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

abstract class CopyWith$Input$ColorsUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$ColorsUpdateManyMutationInput(
    Input$ColorsUpdateManyMutationInput instance,
    TRes Function(Input$ColorsUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$ColorsUpdateManyMutationInput;

  factory CopyWith$Input$ColorsUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  });
}

class _CopyWithImpl$Input$ColorsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ColorsUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$ColorsUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$ColorsUpdateManyMutationInput _instance;

  final TRes Function(Input$ColorsUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$ColorsUpdateManyMutationInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (color != _undefined)
          'color': (color as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ColorsUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ColorsUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$ColorsUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
  }) =>
      _res;
}

class Input$ColorsUpdateInput {
  factory Input$ColorsUpdateInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
    Input$ProductModelUpdateManyWithoutColorNestedInput? ProductModel,
  }) =>
      Input$ColorsUpdateInput._({
        if (id != null) r'id': id,
        if (color != null) r'color': color,
        if (ProductModel != null) r'ProductModel': ProductModel,
      });

  Input$ColorsUpdateInput._(this._$data);

  factory Input$ColorsUpdateInput.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('ProductModel')) {
      final l$ProductModel = data['ProductModel'];
      result$data['ProductModel'] = l$ProductModel == null
          ? null
          : Input$ProductModelUpdateManyWithoutColorNestedInput.fromJson(
              (l$ProductModel as Map<String, dynamic>));
    }
    return Input$ColorsUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get id =>
      (_$data['id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get color =>
      (_$data['color'] as Input$StringFieldUpdateOperationsInput?);
  Input$ProductModelUpdateManyWithoutColorNestedInput? get ProductModel =>
      (_$data['ProductModel']
          as Input$ProductModelUpdateManyWithoutColorNestedInput?);
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
    if (_$data.containsKey('ProductModel')) {
      final l$ProductModel = ProductModel;
      result$data['ProductModel'] = l$ProductModel?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ColorsUpdateInput<Input$ColorsUpdateInput> get copyWith =>
      CopyWith$Input$ColorsUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ColorsUpdateInput) ||
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
    final l$color = color;
    final l$ProductModel = ProductModel;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('ProductModel') ? l$ProductModel : const {},
    ]);
  }
}

abstract class CopyWith$Input$ColorsUpdateInput<TRes> {
  factory CopyWith$Input$ColorsUpdateInput(
    Input$ColorsUpdateInput instance,
    TRes Function(Input$ColorsUpdateInput) then,
  ) = _CopyWithImpl$Input$ColorsUpdateInput;

  factory CopyWith$Input$ColorsUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ColorsUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
    Input$ProductModelUpdateManyWithoutColorNestedInput? ProductModel,
  });
  CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes>
      get ProductModel;
}

class _CopyWithImpl$Input$ColorsUpdateInput<TRes>
    implements CopyWith$Input$ColorsUpdateInput<TRes> {
  _CopyWithImpl$Input$ColorsUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ColorsUpdateInput _instance;

  final TRes Function(Input$ColorsUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? ProductModel = _undefined,
  }) =>
      _then(Input$ColorsUpdateInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (color != _undefined)
          'color': (color as Input$StringFieldUpdateOperationsInput?),
        if (ProductModel != _undefined)
          'ProductModel': (ProductModel
              as Input$ProductModelUpdateManyWithoutColorNestedInput?),
      }));
  CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes>
      get ProductModel {
    final local$ProductModel = _instance.ProductModel;
    return local$ProductModel == null
        ? CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput(
            local$ProductModel, (e) => call(ProductModel: e));
  }
}

class _CopyWithStubImpl$Input$ColorsUpdateInput<TRes>
    implements CopyWith$Input$ColorsUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ColorsUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? color,
    Input$ProductModelUpdateManyWithoutColorNestedInput? ProductModel,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes>
      get ProductModel =>
          CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput.stub(
              _res);
}

class Input$ProductModelUpdateManyWithoutColorNestedInput {
  factory Input$ProductModelUpdateManyWithoutColorNestedInput({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      Input$ProductModelUpdateManyWithoutColorNestedInput._({
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

  Input$ProductModelUpdateManyWithoutColorNestedInput._(this._$data);

  factory Input$ProductModelUpdateManyWithoutColorNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) => Input$ProductModelCreateWithoutColorInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelCreateOrConnectWithoutColorInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpsertWithWhereUniqueWithoutColorInput.fromJson(
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
              Input$ProductModelUpdateWithWhereUniqueWithoutColorInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$ProductModelUpdateManyWithWhereWithoutColorInput.fromJson(
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
    return Input$ProductModelUpdateManyWithoutColorNestedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelCreateWithoutColorInput>? get create =>
      (_$data['create'] as List<Input$ProductModelCreateWithoutColorInput>?);
  List<Input$ProductModelCreateOrConnectWithoutColorInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$ProductModelCreateOrConnectWithoutColorInput>?);
  List<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? get upsert =>
      (_$data['upsert']
          as List<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>?);
  List<Input$ProductModelWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductModelWhereUniqueInput>?);
  List<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? get update =>
      (_$data['update']
          as List<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>?);
  List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>?
      get updateMany => (_$data['updateMany']
          as List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>?);
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

  CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<
          Input$ProductModelUpdateManyWithoutColorNestedInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithoutColorNestedInput) ||
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

abstract class CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput(
    Input$ProductModelUpdateManyWithoutColorNestedInput instance,
    TRes Function(Input$ProductModelUpdateManyWithoutColorNestedInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithoutColorNestedInput;

  factory CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutColorNestedInput;

  TRes call({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$ProductModelCreateWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateWithoutColorInput<
                      Input$ProductModelCreateWithoutColorInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$ProductModelCreateOrConnectWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
                      Input$ProductModelCreateOrConnectWithoutColorInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
                      Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>>?)
          _fn);
  TRes update(
      Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
                      Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$ProductModelUpdateManyWithWhereWithoutColorInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<
                      Input$ProductModelUpdateManyWithWhereWithoutColorInput>>?)
          _fn);
  TRes deleteMany(
      Iterable<Input$ProductModelScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereInput<
                      Input$ProductModelScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithoutColorNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithoutColorNestedInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithoutColorNestedInput)
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
      _then(Input$ProductModelUpdateManyWithoutColorNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create':
              (create as List<Input$ProductModelCreateWithoutColorInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductModelCreateOrConnectWithoutColorInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>?),
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
              Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany
              as List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$ProductModelScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$ProductModelCreateWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateWithoutColorInput<
                          Input$ProductModelCreateWithoutColorInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create
              ?.map((e) => CopyWith$Input$ProductModelCreateWithoutColorInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$ProductModelCreateOrConnectWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput<
                          Input$ProductModelCreateOrConnectWithoutColorInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$ProductModelCreateOrConnectWithoutColorInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
                          Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
                          Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$ProductModelUpdateManyWithWhereWithoutColorInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<
                          Input$ProductModelUpdateManyWithWhereWithoutColorInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput(
                e,
                (i) => i,
              )))?.toList());
  TRes deleteMany(
          Iterable<Input$ProductModelScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereInput<
                          Input$ProductModelScalarWhereInput>>?)
              _fn) =>
      call(
          deleteMany: _fn(_instance.deleteMany
              ?.map((e) => CopyWith$Input$ProductModelScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutColorNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithoutColorNestedInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithoutColorNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$ProductModelCreateWithoutColorInput>? create,
    List<Input$ProductModelCreateOrConnectWithoutColorInput>? connectOrCreate,
    List<Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>? upsert,
    List<Input$ProductModelWhereUniqueInput>? $set,
    List<Input$ProductModelWhereUniqueInput>? disconnect,
    List<Input$ProductModelWhereUniqueInput>? delete,
    List<Input$ProductModelWhereUniqueInput>? connect,
    List<Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>? update,
    List<Input$ProductModelUpdateManyWithWhereWithoutColorInput>? updateMany,
    List<Input$ProductModelScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
  deleteMany(_fn) => _res;
}

class Input$ProductModelUpsertWithWhereUniqueWithoutColorInput {
  factory Input$ProductModelUpsertWithWhereUniqueWithoutColorInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutColorInput update,
    required Input$ProductModelCreateWithoutColorInput create,
  }) =>
      Input$ProductModelUpsertWithWhereUniqueWithoutColorInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$ProductModelUpsertWithWhereUniqueWithoutColorInput._(this._$data);

  factory Input$ProductModelUpsertWithWhereUniqueWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] = Input$ProductModelUpdateWithoutColorInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$ProductModelCreateWithoutColorInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$ProductModelUpsertWithWhereUniqueWithoutColorInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutColorInput get update =>
      (_$data['update'] as Input$ProductModelUpdateWithoutColorInput);
  Input$ProductModelCreateWithoutColorInput get create =>
      (_$data['create'] as Input$ProductModelCreateWithoutColorInput);
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

  CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
          Input$ProductModelUpsertWithWhereUniqueWithoutColorInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpsertWithWhereUniqueWithoutColorInput) ||
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

abstract class CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput(
    Input$ProductModelUpsertWithWhereUniqueWithoutColorInput instance,
    TRes Function(Input$ProductModelUpsertWithWhereUniqueWithoutColorInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput;

  factory CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutColorInput? update,
    Input$ProductModelCreateWithoutColorInput? create,
  });
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get update;
  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpsertWithWhereUniqueWithoutColorInput _instance;

  final TRes Function(Input$ProductModelUpsertWithWhereUniqueWithoutColorInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductModelUpsertWithWhereUniqueWithoutColorInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (update != _undefined && update != null)
          'update': (update as Input$ProductModelUpdateWithoutColorInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductModelCreateWithoutColorInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductModelUpdateWithoutColorInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductModelCreateWithoutColorInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelUpsertWithWhereUniqueWithoutColorInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutColorInput? update,
    Input$ProductModelCreateWithoutColorInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get update =>
      CopyWith$Input$ProductModelUpdateWithoutColorInput.stub(_res);
  CopyWith$Input$ProductModelCreateWithoutColorInput<TRes> get create =>
      CopyWith$Input$ProductModelCreateWithoutColorInput.stub(_res);
}

class Input$ProductModelUpdateWithoutColorInput {
  factory Input$ProductModelUpdateWithoutColorInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
  }) =>
      Input$ProductModelUpdateWithoutColorInput._({
        if (quantity != null) r'quantity': quantity,
        if (product != null) r'product': product,
        if (size != null) r'size': size,
      });

  Input$ProductModelUpdateWithoutColorInput._(this._$data);

  factory Input$ProductModelUpdateWithoutColorInput.fromJson(
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
    if (data.containsKey('size')) {
      final l$size = data['size'];
      result$data['size'] = l$size == null
          ? null
          : Input$SizesUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
              (l$size as Map<String, dynamic>));
    }
    return Input$ProductModelUpdateWithoutColorInput._(result$data);
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
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithoutColorInput<
          Input$ProductModelUpdateWithoutColorInput>
      get copyWith => CopyWith$Input$ProductModelUpdateWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateWithoutColorInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product = product;
    final l$size = size;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('product') ? l$product : const {},
      _$data.containsKey('size') ? l$size : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> {
  factory CopyWith$Input$ProductModelUpdateWithoutColorInput(
    Input$ProductModelUpdateWithoutColorInput instance,
    TRes Function(Input$ProductModelUpdateWithoutColorInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithoutColorInput;

  factory CopyWith$Input$ProductModelUpdateWithoutColorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithoutColorInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
  });
  CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get product;
  CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get size;
}

class _CopyWithImpl$Input$ProductModelUpdateWithoutColorInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithoutColorInput _instance;

  final TRes Function(Input$ProductModelUpdateWithoutColorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithoutColorInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (product != _undefined)
          'product': (product
              as Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput?),
        if (size != _undefined)
          'size': (size
              as Input$SizesUpdateOneRequiredWithoutProductModelNestedInput?),
      }));
  CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput(
            local$product, (e) => call(product: e));
  }

  CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get size {
    final local$size = _instance.size;
    return local$size == null
        ? CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput(
            local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithoutColorInput<TRes>
    implements CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithoutColorInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput? product,
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput? size,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get product =>
          CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput
              .stub(_res);
  CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<TRes>
      get size =>
          CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput
              .stub(_res);
}

class Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput {
  factory Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsUpsertWithoutProductModelInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutProductModelInput? update,
  }) =>
      Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput._(this._$data);

  factory Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductsCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductsCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$ProductsUpsertWithoutProductModelInput.fromJson(
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
          : Input$ProductsUpdateWithoutProductModelInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$ProductsCreateWithoutProductModelInput?);
  Input$ProductsCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ProductsCreateOrConnectWithoutProductModelInput?);
  Input$ProductsUpsertWithoutProductModelInput? get upsert =>
      (_$data['upsert'] as Input$ProductsUpsertWithoutProductModelInput?);
  Input$ProductsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ProductsWhereUniqueInput?);
  Input$ProductsUpdateWithoutProductModelInput? get update =>
      (_$data['update'] as Input$ProductsUpdateWithoutProductModelInput?);
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

  CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
          Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput>
      get copyWith =>
          CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput) ||
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

abstract class CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
    TRes> {
  factory CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput(
    Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput instance,
    TRes Function(Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput)
        then,
  ) = _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput;

  factory CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput;

  TRes call({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsUpsertWithoutProductModelInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutProductModelInput? update,
  });
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
  CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> get upsert;
  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update;
}

class _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput _instance;

  final TRes Function(
      Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ProductsCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductsCreateOrConnectWithoutProductModelInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$ProductsUpsertWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductsWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$ProductsUpdateWithoutProductModelInput?),
      }));
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$ProductsUpsertWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsUpsertWithoutProductModelInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$ProductsUpdateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsUpdateWithoutProductModelInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateOneRequiredWithoutProductModelNestedInput(
      this._res);

  TRes _res;

  call({
    Input$ProductsCreateWithoutProductModelInput? create,
    Input$ProductsCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$ProductsUpsertWithoutProductModelInput? upsert,
    Input$ProductsWhereUniqueInput? connect,
    Input$ProductsUpdateWithoutProductModelInput? update,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductsCreateOrConnectWithoutProductModelInput.stub(
              _res);
  CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> get upsert =>
      CopyWith$Input$ProductsUpsertWithoutProductModelInput.stub(_res);
  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$ProductsUpdateWithoutProductModelInput.stub(_res);
}

class Input$ProductsUpsertWithoutProductModelInput {
  factory Input$ProductsUpsertWithoutProductModelInput({
    required Input$ProductsUpdateWithoutProductModelInput update,
    required Input$ProductsCreateWithoutProductModelInput create,
  }) =>
      Input$ProductsUpsertWithoutProductModelInput._({
        r'update': update,
        r'create': create,
      });

  Input$ProductsUpsertWithoutProductModelInput._(this._$data);

  factory Input$ProductsUpsertWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$ProductsUpdateWithoutProductModelInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductsCreateWithoutProductModelInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductsUpsertWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsUpdateWithoutProductModelInput get update =>
      (_$data['update'] as Input$ProductsUpdateWithoutProductModelInput);
  Input$ProductsCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$ProductsCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductsUpsertWithoutProductModelInput<
          Input$ProductsUpsertWithoutProductModelInput>
      get copyWith => CopyWith$Input$ProductsUpsertWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpsertWithoutProductModelInput) ||
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

abstract class CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ProductsUpsertWithoutProductModelInput(
    Input$ProductsUpsertWithoutProductModelInput instance,
    TRes Function(Input$ProductsUpsertWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ProductsUpsertWithoutProductModelInput;

  factory CopyWith$Input$ProductsUpsertWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsUpsertWithoutProductModelInput;

  TRes call({
    Input$ProductsUpdateWithoutProductModelInput? update,
    Input$ProductsCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update;
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductsUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ProductsUpsertWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpsertWithoutProductModelInput _instance;

  final TRes Function(Input$ProductsUpsertWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductsUpsertWithoutProductModelInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$ProductsUpdateWithoutProductModelInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductsCreateWithoutProductModelInput),
      }));
  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductsUpdateWithoutProductModelInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductsCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsUpsertWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpsertWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$ProductsUpdateWithoutProductModelInput? update,
    Input$ProductsCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$ProductsUpdateWithoutProductModelInput.stub(_res);
  CopyWith$Input$ProductsCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$ProductsCreateWithoutProductModelInput.stub(_res);
}

class Input$ProductsUpdateWithoutProductModelInput {
  factory Input$ProductsUpdateWithoutProductModelInput({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      Input$ProductsUpdateWithoutProductModelInput._({
        if (reference != null) r'reference': reference,
        if (name != null) r'name': name,
        if (buyingPrice != null) r'buyingPrice': buyingPrice,
        if (sellingPrice != null) r'sellingPrice': sellingPrice,
        if (description != null) r'description': description,
        if (picture != null) r'picture': picture,
        if (family != null) r'family': family,
        if (TransactionProduct != null)
          r'TransactionProduct': TransactionProduct,
      });

  Input$ProductsUpdateWithoutProductModelInput._(this._$data);

  factory Input$ProductsUpdateWithoutProductModelInput.fromJson(
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
    if (data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = data['TransactionProduct'];
      result$data['TransactionProduct'] = l$TransactionProduct == null
          ? null
          : Input$TransactionProductUpdateManyWithoutProductNestedInput
              .fromJson((l$TransactionProduct as Map<String, dynamic>));
    }
    return Input$ProductsUpdateWithoutProductModelInput._(result$data);
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
    if (_$data.containsKey('TransactionProduct')) {
      final l$TransactionProduct = TransactionProduct;
      result$data['TransactionProduct'] = l$TransactionProduct?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductsUpdateWithoutProductModelInput<
          Input$ProductsUpdateWithoutProductModelInput>
      get copyWith => CopyWith$Input$ProductsUpdateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsUpdateWithoutProductModelInput) ||
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
    final l$TransactionProduct = TransactionProduct;
    return Object.hashAll([
      _$data.containsKey('reference') ? l$reference : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('buyingPrice') ? l$buyingPrice : const {},
      _$data.containsKey('sellingPrice') ? l$sellingPrice : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('TransactionProduct')
          ? l$TransactionProduct
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$ProductsUpdateWithoutProductModelInput(
    Input$ProductsUpdateWithoutProductModelInput instance,
    TRes Function(Input$ProductsUpdateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$ProductsUpdateWithoutProductModelInput;

  factory CopyWith$Input$ProductsUpdateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductsUpdateWithoutProductModelInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  });
  CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<TRes>
      get family;
  CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<TRes>
      get TransactionProduct;
}

class _CopyWithImpl$Input$ProductsUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$ProductsUpdateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$ProductsUpdateWithoutProductModelInput _instance;

  final TRes Function(Input$ProductsUpdateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reference = _undefined,
    Object? name = _undefined,
    Object? buyingPrice = _undefined,
    Object? sellingPrice = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? family = _undefined,
    Object? TransactionProduct = _undefined,
  }) =>
      _then(Input$ProductsUpdateWithoutProductModelInput._({
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
        if (TransactionProduct != _undefined)
          'TransactionProduct': (TransactionProduct
              as Input$TransactionProductUpdateManyWithoutProductNestedInput?),
      }));
  CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<TRes>
      get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput(
            local$family, (e) => call(family: e));
  }

  CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<TRes>
      get TransactionProduct {
    final local$TransactionProduct = _instance.TransactionProduct;
    return local$TransactionProduct == null
        ? CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput(
            local$TransactionProduct, (e) => call(TransactionProduct: e));
  }
}

class _CopyWithStubImpl$Input$ProductsUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$ProductsUpdateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$ProductsUpdateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? reference,
    Input$StringFieldUpdateOperationsInput? name,
    Input$FloatFieldUpdateOperationsInput? buyingPrice,
    Input$FloatFieldUpdateOperationsInput? sellingPrice,
    Input$StringFieldUpdateOperationsInput? description,
    Input$StringFieldUpdateOperationsInput? picture,
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput? family,
    Input$TransactionProductUpdateManyWithoutProductNestedInput?
        TransactionProduct,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<TRes>
      get family =>
          CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput
              .stub(_res);
  CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<TRes>
      get TransactionProduct =>
          CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput
              .stub(_res);
}

class Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput {
  factory Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyUpsertWithoutProductsInput? upsert,
    Input$ProductFamilyWhereUniqueInput? connect,
    Input$ProductFamilyUpdateWithoutProductsInput? update,
  }) =>
      Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput._(this._$data);

  factory Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$ProductFamilyCreateWithoutProductsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$ProductFamilyCreateOrConnectWithoutProductsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$ProductFamilyUpsertWithoutProductsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$ProductFamilyWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$ProductFamilyUpdateWithoutProductsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyCreateWithoutProductsInput? get create =>
      (_$data['create'] as Input$ProductFamilyCreateWithoutProductsInput?);
  Input$ProductFamilyCreateOrConnectWithoutProductsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$ProductFamilyCreateOrConnectWithoutProductsInput?);
  Input$ProductFamilyUpsertWithoutProductsInput? get upsert =>
      (_$data['upsert'] as Input$ProductFamilyUpsertWithoutProductsInput?);
  Input$ProductFamilyWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$ProductFamilyWhereUniqueInput?);
  Input$ProductFamilyUpdateWithoutProductsInput? get update =>
      (_$data['update'] as Input$ProductFamilyUpdateWithoutProductsInput?);
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

  CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
          Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput>
      get copyWith =>
          CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput) ||
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

abstract class CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
    TRes> {
  factory CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput(
    Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput instance,
    TRes Function(
            Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput)
        then,
  ) = _CopyWithImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput;

  factory CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput;

  TRes call({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyUpsertWithoutProductsInput? upsert,
    Input$ProductFamilyWhereUniqueInput? connect,
    Input$ProductFamilyUpdateWithoutProductsInput? update,
  });
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create;
  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate;
  CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> get upsert;
  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update;
}

class _CopyWithImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
            TRes> {
  _CopyWithImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput
      _instance;

  final TRes Function(
      Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$ProductFamilyCreateWithoutProductsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$ProductFamilyCreateOrConnectWithoutProductsInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$ProductFamilyUpsertWithoutProductsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$ProductFamilyWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$ProductFamilyUpdateWithoutProductsInput?),
      }));
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$ProductFamilyUpsertWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyUpsertWithoutProductsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$ProductFamilyUpdateWithoutProductsInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductFamilyUpdateWithoutProductsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
        TRes>
    implements
        CopyWith$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductFamilyUpdateOneRequiredWithoutProductsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$ProductFamilyCreateWithoutProductsInput? create,
    Input$ProductFamilyCreateOrConnectWithoutProductsInput? connectOrCreate,
    Input$ProductFamilyUpsertWithoutProductsInput? upsert,
    Input$ProductFamilyWhereUniqueInput? connect,
    Input$ProductFamilyUpdateWithoutProductsInput? update,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create =>
      CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(_res);
  CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$ProductFamilyCreateOrConnectWithoutProductsInput.stub(
              _res);
  CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> get upsert =>
      CopyWith$Input$ProductFamilyUpsertWithoutProductsInput.stub(_res);
  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update =>
      CopyWith$Input$ProductFamilyUpdateWithoutProductsInput.stub(_res);
}

class Input$ProductFamilyUpsertWithoutProductsInput {
  factory Input$ProductFamilyUpsertWithoutProductsInput({
    required Input$ProductFamilyUpdateWithoutProductsInput update,
    required Input$ProductFamilyCreateWithoutProductsInput create,
  }) =>
      Input$ProductFamilyUpsertWithoutProductsInput._({
        r'update': update,
        r'create': create,
      });

  Input$ProductFamilyUpsertWithoutProductsInput._(this._$data);

  factory Input$ProductFamilyUpsertWithoutProductsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$ProductFamilyUpdateWithoutProductsInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$ProductFamilyCreateWithoutProductsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$ProductFamilyUpsertWithoutProductsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyUpdateWithoutProductsInput get update =>
      (_$data['update'] as Input$ProductFamilyUpdateWithoutProductsInput);
  Input$ProductFamilyCreateWithoutProductsInput get create =>
      (_$data['create'] as Input$ProductFamilyCreateWithoutProductsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<
          Input$ProductFamilyUpsertWithoutProductsInput>
      get copyWith => CopyWith$Input$ProductFamilyUpsertWithoutProductsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyUpsertWithoutProductsInput) ||
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

abstract class CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> {
  factory CopyWith$Input$ProductFamilyUpsertWithoutProductsInput(
    Input$ProductFamilyUpsertWithoutProductsInput instance,
    TRes Function(Input$ProductFamilyUpsertWithoutProductsInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyUpsertWithoutProductsInput;

  factory CopyWith$Input$ProductFamilyUpsertWithoutProductsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyUpsertWithoutProductsInput;

  TRes call({
    Input$ProductFamilyUpdateWithoutProductsInput? update,
    Input$ProductFamilyCreateWithoutProductsInput? create,
  });
  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update;
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create;
}

class _CopyWithImpl$Input$ProductFamilyUpsertWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyUpsertWithoutProductsInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyUpsertWithoutProductsInput _instance;

  final TRes Function(Input$ProductFamilyUpsertWithoutProductsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$ProductFamilyUpsertWithoutProductsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$ProductFamilyUpdateWithoutProductsInput),
        if (create != _undefined && create != null)
          'create': (create as Input$ProductFamilyCreateWithoutProductsInput),
      }));
  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$ProductFamilyUpdateWithoutProductsInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$ProductFamilyCreateWithoutProductsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyUpsertWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyUpsertWithoutProductsInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyUpsertWithoutProductsInput(this._res);

  TRes _res;

  call({
    Input$ProductFamilyUpdateWithoutProductsInput? update,
    Input$ProductFamilyCreateWithoutProductsInput? create,
  }) =>
      _res;
  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> get update =>
      CopyWith$Input$ProductFamilyUpdateWithoutProductsInput.stub(_res);
  CopyWith$Input$ProductFamilyCreateWithoutProductsInput<TRes> get create =>
      CopyWith$Input$ProductFamilyCreateWithoutProductsInput.stub(_res);
}

class Input$ProductFamilyUpdateWithoutProductsInput {
  factory Input$ProductFamilyUpdateWithoutProductsInput(
          {Input$StringFieldUpdateOperationsInput? name}) =>
      Input$ProductFamilyUpdateWithoutProductsInput._({
        if (name != null) r'name': name,
      });

  Input$ProductFamilyUpdateWithoutProductsInput._(this._$data);

  factory Input$ProductFamilyUpdateWithoutProductsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$ProductFamilyUpdateWithoutProductsInput._(result$data);
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

  CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<
          Input$ProductFamilyUpdateWithoutProductsInput>
      get copyWith => CopyWith$Input$ProductFamilyUpdateWithoutProductsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyUpdateWithoutProductsInput) ||
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

abstract class CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> {
  factory CopyWith$Input$ProductFamilyUpdateWithoutProductsInput(
    Input$ProductFamilyUpdateWithoutProductsInput instance,
    TRes Function(Input$ProductFamilyUpdateWithoutProductsInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyUpdateWithoutProductsInput;

  factory CopyWith$Input$ProductFamilyUpdateWithoutProductsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyUpdateWithoutProductsInput;

  TRes call({Input$StringFieldUpdateOperationsInput? name});
}

class _CopyWithImpl$Input$ProductFamilyUpdateWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyUpdateWithoutProductsInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyUpdateWithoutProductsInput _instance;

  final TRes Function(Input$ProductFamilyUpdateWithoutProductsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$ProductFamilyUpdateWithoutProductsInput._({
        ..._instance._$data,
        if (name != _undefined)
          'name': (name as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ProductFamilyUpdateWithoutProductsInput<TRes>
    implements CopyWith$Input$ProductFamilyUpdateWithoutProductsInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyUpdateWithoutProductsInput(this._res);

  TRes _res;

  call({Input$StringFieldUpdateOperationsInput? name}) => _res;
}

class Input$TransactionProductUpdateManyWithoutProductNestedInput {
  factory Input$TransactionProductUpdateManyWithoutProductNestedInput({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?
        upsert,
    List<Input$TransactionProductWhereUniqueInput>? $set,
    List<Input$TransactionProductWhereUniqueInput>? disconnect,
    List<Input$TransactionProductWhereUniqueInput>? delete,
    List<Input$TransactionProductWhereUniqueInput>? connect,
    List<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?
        update,
    List<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?
        updateMany,
    List<Input$TransactionProductScalarWhereInput>? deleteMany,
  }) =>
      Input$TransactionProductUpdateManyWithoutProductNestedInput._({
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

  Input$TransactionProductUpdateManyWithoutProductNestedInput._(this._$data);

  factory Input$TransactionProductUpdateManyWithoutProductNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = (l$create as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductCreateWithoutProductInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = (l$connectOrCreate as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductCreateOrConnectWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = (l$$set as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('disconnect')) {
      final l$disconnect = data['disconnect'];
      result$data['disconnect'] = (l$disconnect as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$TransactionProductWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('updateMany')) {
      final l$updateMany = data['updateMany'];
      result$data['updateMany'] = (l$updateMany as List<dynamic>?)
          ?.map((e) =>
              Input$TransactionProductUpdateManyWithWhereWithoutProductInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('deleteMany')) {
      final l$deleteMany = data['deleteMany'];
      result$data['deleteMany'] = (l$deleteMany as List<dynamic>?)
          ?.map((e) => Input$TransactionProductScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TransactionProductUpdateManyWithoutProductNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionProductCreateWithoutProductInput>? get create =>
      (_$data['create']
          as List<Input$TransactionProductCreateWithoutProductInput>?);
  List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
      get connectOrCreate => (_$data['connectOrCreate']
          as List<Input$TransactionProductCreateOrConnectWithoutProductInput>?);
  List<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?
      get upsert => (_$data['upsert'] as List<
          Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?);
  List<Input$TransactionProductWhereUniqueInput>? get $set =>
      (_$data['set'] as List<Input$TransactionProductWhereUniqueInput>?);
  List<Input$TransactionProductWhereUniqueInput>? get disconnect =>
      (_$data['disconnect'] as List<Input$TransactionProductWhereUniqueInput>?);
  List<Input$TransactionProductWhereUniqueInput>? get delete =>
      (_$data['delete'] as List<Input$TransactionProductWhereUniqueInput>?);
  List<Input$TransactionProductWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$TransactionProductWhereUniqueInput>?);
  List<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?
      get update => (_$data['update'] as List<
          Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?);
  List<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?
      get updateMany => (_$data['updateMany'] as List<
          Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?);
  List<Input$TransactionProductScalarWhereInput>? get deleteMany =>
      (_$data['deleteMany'] as List<Input$TransactionProductScalarWhereInput>?);
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

  CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<
          Input$TransactionProductUpdateManyWithoutProductNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductUpdateManyWithoutProductNestedInput) ||
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

abstract class CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput(
    Input$TransactionProductUpdateManyWithoutProductNestedInput instance,
    TRes Function(Input$TransactionProductUpdateManyWithoutProductNestedInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput;

  factory CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput;

  TRes call({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?
        upsert,
    List<Input$TransactionProductWhereUniqueInput>? $set,
    List<Input$TransactionProductWhereUniqueInput>? disconnect,
    List<Input$TransactionProductWhereUniqueInput>? delete,
    List<Input$TransactionProductWhereUniqueInput>? connect,
    List<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?
        update,
    List<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?
        updateMany,
    List<Input$TransactionProductScalarWhereInput>? deleteMany,
  });
  TRes create(
      Iterable<Input$TransactionProductCreateWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductCreateWithoutProductInput<
                      Input$TransactionProductCreateWithoutProductInput>>?)
          _fn);
  TRes connectOrCreate(
      Iterable<Input$TransactionProductCreateOrConnectWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
                      Input$TransactionProductCreateOrConnectWithoutProductInput>>?)
          _fn);
  TRes upsert(
      Iterable<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
                      Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>>?)
          _fn);
  TRes update(
      Iterable<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
                      Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>>?)
          _fn);
  TRes updateMany(
      Iterable<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
                      Input$TransactionProductUpdateManyWithWhereWithoutProductInput>>?)
          _fn);
  TRes deleteMany(
      Iterable<Input$TransactionProductScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereInput<
                      Input$TransactionProductScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateManyWithoutProductNestedInput _instance;

  final TRes Function(
      Input$TransactionProductUpdateManyWithoutProductNestedInput) _then;

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
      _then(Input$TransactionProductUpdateManyWithoutProductNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create
              as List<Input$TransactionProductCreateWithoutProductInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate as List<
              Input$TransactionProductCreateOrConnectWithoutProductInput>?),
        if (upsert != _undefined)
          'upsert': (upsert as List<
              Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?),
        if ($set != _undefined)
          'set': ($set as List<Input$TransactionProductWhereUniqueInput>?),
        if (disconnect != _undefined)
          'disconnect':
              (disconnect as List<Input$TransactionProductWhereUniqueInput>?),
        if (delete != _undefined)
          'delete': (delete as List<Input$TransactionProductWhereUniqueInput>?),
        if (connect != _undefined)
          'connect':
              (connect as List<Input$TransactionProductWhereUniqueInput>?),
        if (update != _undefined)
          'update': (update as List<
              Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?),
        if (updateMany != _undefined)
          'updateMany': (updateMany as List<
              Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?),
        if (deleteMany != _undefined)
          'deleteMany':
              (deleteMany as List<Input$TransactionProductScalarWhereInput>?),
      }));
  TRes create(
          Iterable<Input$TransactionProductCreateWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductCreateWithoutProductInput<
                          Input$TransactionProductCreateWithoutProductInput>>?)
              _fn) =>
      call(
          create: _fn(_instance.create?.map(
              (e) => CopyWith$Input$TransactionProductCreateWithoutProductInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes connectOrCreate(
          Iterable<Input$TransactionProductCreateOrConnectWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput<
                          Input$TransactionProductCreateOrConnectWithoutProductInput>>?)
              _fn) =>
      call(
          connectOrCreate: _fn(_instance.connectOrCreate?.map((e) =>
              CopyWith$Input$TransactionProductCreateOrConnectWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes upsert(
          Iterable<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
                          Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>>?)
              _fn) =>
      call(
          upsert: _fn(_instance.upsert?.map((e) =>
              CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes update(
          Iterable<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
                          Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>>?)
              _fn) =>
      call(
          update: _fn(_instance.update?.map((e) =>
              CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes updateMany(
          Iterable<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
                          Input$TransactionProductUpdateManyWithWhereWithoutProductInput>>?)
              _fn) =>
      call(
          updateMany: _fn(_instance.updateMany?.map((e) =>
              CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput(
                e,
                (i) => i,
              )))?.toList());
  TRes deleteMany(
          Iterable<Input$TransactionProductScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereInput<
                          Input$TransactionProductScalarWhereInput>>?)
              _fn) =>
      call(
          deleteMany: _fn(_instance.deleteMany
              ?.map((e) => CopyWith$Input$TransactionProductScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateManyWithoutProductNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateManyWithoutProductNestedInput(
      this._res);

  TRes _res;

  call({
    List<Input$TransactionProductCreateWithoutProductInput>? create,
    List<Input$TransactionProductCreateOrConnectWithoutProductInput>?
        connectOrCreate,
    List<Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>?
        upsert,
    List<Input$TransactionProductWhereUniqueInput>? $set,
    List<Input$TransactionProductWhereUniqueInput>? disconnect,
    List<Input$TransactionProductWhereUniqueInput>? delete,
    List<Input$TransactionProductWhereUniqueInput>? connect,
    List<Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>?
        update,
    List<Input$TransactionProductUpdateManyWithWhereWithoutProductInput>?
        updateMany,
    List<Input$TransactionProductScalarWhereInput>? deleteMany,
  }) =>
      _res;
  create(_fn) => _res;
  connectOrCreate(_fn) => _res;
  upsert(_fn) => _res;
  update(_fn) => _res;
  updateMany(_fn) => _res;
  deleteMany(_fn) => _res;
}

class Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput {
  factory Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput({
    required Input$TransactionProductWhereUniqueInput where,
    required Input$TransactionProductUpdateWithoutProductInput update,
    required Input$TransactionProductCreateWithoutProductInput create,
  }) =>
      Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput._({
        r'where': where,
        r'update': update,
        r'create': create,
      });

  Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput._(
      this._$data);

  factory Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionProductWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$update = data['update'];
    result$data['update'] =
        Input$TransactionProductUpdateWithoutProductInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionProductCreateWithoutProductInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionProductWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionProductWhereUniqueInput);
  Input$TransactionProductUpdateWithoutProductInput get update =>
      (_$data['update'] as Input$TransactionProductUpdateWithoutProductInput);
  Input$TransactionProductCreateWithoutProductInput get create =>
      (_$data['create'] as Input$TransactionProductCreateWithoutProductInput);
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

  CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
          Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput) ||
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

abstract class CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput(
    Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput instance,
    TRes Function(
            Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput;

  factory CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput;

  TRes call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductUpdateWithoutProductInput? update,
    Input$TransactionProductCreateWithoutProductInput? create,
  });
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get update;
  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput
      _instance;

  final TRes Function(
      Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionProductWhereUniqueInput),
        if (update != _undefined && update != null)
          'update':
              (update as Input$TransactionProductUpdateWithoutProductInput),
        if (create != _undefined && create != null)
          'create':
              (create as Input$TransactionProductCreateWithoutProductInput),
      }));
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionProductUpdateWithoutProductInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionProductCreateWithoutProductInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpsertWithWhereUniqueWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductUpdateWithoutProductInput? update,
    Input$TransactionProductCreateWithoutProductInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get update =>
      CopyWith$Input$TransactionProductUpdateWithoutProductInput.stub(_res);
  CopyWith$Input$TransactionProductCreateWithoutProductInput<TRes> get create =>
      CopyWith$Input$TransactionProductCreateWithoutProductInput.stub(_res);
}

class Input$TransactionProductUpdateWithoutProductInput {
  factory Input$TransactionProductUpdateWithoutProductInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  }) =>
      Input$TransactionProductUpdateWithoutProductInput._({
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductUpdateWithoutProductInput._(this._$data);

  factory Input$TransactionProductUpdateWithoutProductInput.fromJson(
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
    return Input$TransactionProductUpdateWithoutProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get price =>
      (_$data['price'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get product_name =>
      (_$data['product_name'] as Input$StringFieldUpdateOperationsInput?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductUpdateWithoutProductInput<
          Input$TransactionProductUpdateWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductUpdateWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductUpdateWithoutProductInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductUpdateWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductUpdateWithoutProductInput(
    Input$TransactionProductUpdateWithoutProductInput instance,
    TRes Function(Input$TransactionProductUpdateWithoutProductInput) then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateWithoutProductInput;

  factory CopyWith$Input$TransactionProductUpdateWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateWithoutProductInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductUpdateWithoutProductInput<TRes>
    implements
        CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateWithoutProductInput _instance;

  final TRes Function(Input$TransactionProductUpdateWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductUpdateWithoutProductInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (price != _undefined)
          'price': (price as Input$FloatFieldUpdateOperationsInput?),
        if (product_name != _undefined)
          'product_name':
              (product_name as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductUpdateWithoutProductInput<TRes>
    implements
        CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  }) =>
      _res;
}

class Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput {
  factory Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput({
    required Input$TransactionProductWhereUniqueInput where,
    required Input$TransactionProductUpdateWithoutProductInput data,
  }) =>
      Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput._(
      this._$data);

  factory Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionProductWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$TransactionProductUpdateWithoutProductInput.fromJson(
            (l$data as Map<String, dynamic>));
    return Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionProductWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionProductWhereUniqueInput);
  Input$TransactionProductUpdateWithoutProductInput get data =>
      (_$data['data'] as Input$TransactionProductUpdateWithoutProductInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
          Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput) ||
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

abstract class CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput(
    Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput instance,
    TRes Function(
            Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput;

  factory CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput;

  TRes call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductUpdateWithoutProductInput? data,
  });
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput
      _instance;

  final TRes Function(
      Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionProductWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionProductUpdateWithoutProductInput),
      }));
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionProductUpdateWithoutProductInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateWithWhereUniqueWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionProductWhereUniqueInput? where,
    Input$TransactionProductUpdateWithoutProductInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionProductUpdateWithoutProductInput<TRes> get data =>
      CopyWith$Input$TransactionProductUpdateWithoutProductInput.stub(_res);
}

class Input$TransactionProductUpdateManyWithWhereWithoutProductInput {
  factory Input$TransactionProductUpdateManyWithWhereWithoutProductInput({
    required Input$TransactionProductScalarWhereInput where,
    required Input$TransactionProductUpdateManyMutationInput data,
  }) =>
      Input$TransactionProductUpdateManyWithWhereWithoutProductInput._({
        r'where': where,
        r'data': data,
      });

  Input$TransactionProductUpdateManyWithWhereWithoutProductInput._(this._$data);

  factory Input$TransactionProductUpdateManyWithWhereWithoutProductInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionProductScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] =
        Input$TransactionProductUpdateManyMutationInput.fromJson(
            (l$data as Map<String, dynamic>));
    return Input$TransactionProductUpdateManyWithWhereWithoutProductInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionProductScalarWhereInput get where =>
      (_$data['where'] as Input$TransactionProductScalarWhereInput);
  Input$TransactionProductUpdateManyMutationInput get data =>
      (_$data['data'] as Input$TransactionProductUpdateManyMutationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
          Input$TransactionProductUpdateManyWithWhereWithoutProductInput>
      get copyWith =>
          CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionProductUpdateManyWithWhereWithoutProductInput) ||
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

abstract class CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
    TRes> {
  factory CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput(
    Input$TransactionProductUpdateManyWithWhereWithoutProductInput instance,
    TRes Function(
            Input$TransactionProductUpdateManyWithWhereWithoutProductInput)
        then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput;

  factory CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput;

  TRes call({
    Input$TransactionProductScalarWhereInput? where,
    Input$TransactionProductUpdateManyMutationInput? data,
  });
  CopyWith$Input$TransactionProductScalarWhereInput<TRes> get where;
  CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> get data;
}

class _CopyWithImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
            TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateManyWithWhereWithoutProductInput
      _instance;

  final TRes Function(
      Input$TransactionProductUpdateManyWithWhereWithoutProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$TransactionProductUpdateManyWithWhereWithoutProductInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionProductScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$TransactionProductUpdateManyMutationInput),
      }));
  CopyWith$Input$TransactionProductScalarWhereInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$TransactionProductScalarWhereInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$TransactionProductUpdateManyMutationInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
        TRes>
    implements
        CopyWith$Input$TransactionProductUpdateManyWithWhereWithoutProductInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateManyWithWhereWithoutProductInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionProductScalarWhereInput? where,
    Input$TransactionProductUpdateManyMutationInput? data,
  }) =>
      _res;
  CopyWith$Input$TransactionProductScalarWhereInput<TRes> get where =>
      CopyWith$Input$TransactionProductScalarWhereInput.stub(_res);
  CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> get data =>
      CopyWith$Input$TransactionProductUpdateManyMutationInput.stub(_res);
}

class Input$TransactionProductScalarWhereInput {
  factory Input$TransactionProductScalarWhereInput({
    List<Input$TransactionProductScalarWhereInput>? AND,
    List<Input$TransactionProductScalarWhereInput>? OR,
    List<Input$TransactionProductScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
  }) =>
      Input$TransactionProductScalarWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (transaction_id != null) r'transaction_id': transaction_id,
        if (product_id != null) r'product_id': product_id,
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductScalarWhereInput._(this._$data);

  factory Input$TransactionProductScalarWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$TransactionProductScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$TransactionProductScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$TransactionProductScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('transaction_id')) {
      final l$transaction_id = data['transaction_id'];
      result$data['transaction_id'] = l$transaction_id == null
          ? null
          : Input$IntFilter.fromJson(
              (l$transaction_id as Map<String, dynamic>));
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatFilter.fromJson((l$price as Map<String, dynamic>));
    }
    if (data.containsKey('product_name')) {
      final l$product_name = data['product_name'];
      result$data['product_name'] = l$product_name == null
          ? null
          : Input$StringFilter.fromJson(
              (l$product_name as Map<String, dynamic>));
    }
    return Input$TransactionProductScalarWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TransactionProductScalarWhereInput>? get AND =>
      (_$data['AND'] as List<Input$TransactionProductScalarWhereInput>?);
  List<Input$TransactionProductScalarWhereInput>? get OR =>
      (_$data['OR'] as List<Input$TransactionProductScalarWhereInput>?);
  List<Input$TransactionProductScalarWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$TransactionProductScalarWhereInput>?);
  Input$IntFilter? get transaction_id =>
      (_$data['transaction_id'] as Input$IntFilter?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
  Input$FloatFilter? get price => (_$data['price'] as Input$FloatFilter?);
  Input$StringFilter? get product_name =>
      (_$data['product_name'] as Input$StringFilter?);
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
    if (_$data.containsKey('transaction_id')) {
      final l$transaction_id = transaction_id;
      result$data['transaction_id'] = l$transaction_id?.toJson();
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id?.toJson();
    }
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
    return result$data;
  }

  CopyWith$Input$TransactionProductScalarWhereInput<
          Input$TransactionProductScalarWhereInput>
      get copyWith => CopyWith$Input$TransactionProductScalarWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductScalarWhereInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$transaction_id = transaction_id;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
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
      _$data.containsKey('transaction_id') ? l$transaction_id : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductScalarWhereInput<TRes> {
  factory CopyWith$Input$TransactionProductScalarWhereInput(
    Input$TransactionProductScalarWhereInput instance,
    TRes Function(Input$TransactionProductScalarWhereInput) then,
  ) = _CopyWithImpl$Input$TransactionProductScalarWhereInput;

  factory CopyWith$Input$TransactionProductScalarWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionProductScalarWhereInput;

  TRes call({
    List<Input$TransactionProductScalarWhereInput>? AND,
    List<Input$TransactionProductScalarWhereInput>? OR,
    List<Input$TransactionProductScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
  });
  TRes AND(
      Iterable<Input$TransactionProductScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereInput<
                      Input$TransactionProductScalarWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$TransactionProductScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereInput<
                      Input$TransactionProductScalarWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$TransactionProductScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$TransactionProductScalarWhereInput<
                      Input$TransactionProductScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TransactionProductScalarWhereInput<TRes>
    implements CopyWith$Input$TransactionProductScalarWhereInput<TRes> {
  _CopyWithImpl$Input$TransactionProductScalarWhereInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductScalarWhereInput _instance;

  final TRes Function(Input$TransactionProductScalarWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? transaction_id = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductScalarWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$TransactionProductScalarWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$TransactionProductScalarWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$TransactionProductScalarWhereInput>?),
        if (transaction_id != _undefined)
          'transaction_id': (transaction_id as Input$IntFilter?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
        if (price != _undefined) 'price': (price as Input$FloatFilter?),
        if (product_name != _undefined)
          'product_name': (product_name as Input$StringFilter?),
      }));
  TRes AND(
          Iterable<Input$TransactionProductScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereInput<
                          Input$TransactionProductScalarWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$TransactionProductScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$TransactionProductScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereInput<
                          Input$TransactionProductScalarWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$TransactionProductScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$TransactionProductScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$TransactionProductScalarWhereInput<
                          Input$TransactionProductScalarWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$TransactionProductScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TransactionProductScalarWhereInput<TRes>
    implements CopyWith$Input$TransactionProductScalarWhereInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductScalarWhereInput(this._res);

  TRes _res;

  call({
    List<Input$TransactionProductScalarWhereInput>? AND,
    List<Input$TransactionProductScalarWhereInput>? OR,
    List<Input$TransactionProductScalarWhereInput>? NOT,
    Input$IntFilter? transaction_id,
    Input$IntFilter? product_id,
    Input$IntFilter? quantity,
    Input$FloatFilter? price,
    Input$StringFilter? product_name,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$TransactionProductUpdateManyMutationInput {
  factory Input$TransactionProductUpdateManyMutationInput({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  }) =>
      Input$TransactionProductUpdateManyMutationInput._({
        if (quantity != null) r'quantity': quantity,
        if (price != null) r'price': price,
        if (product_name != null) r'product_name': product_name,
      });

  Input$TransactionProductUpdateManyMutationInput._(this._$data);

  factory Input$TransactionProductUpdateManyMutationInput.fromJson(
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
    return Input$TransactionProductUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get price =>
      (_$data['price'] as Input$FloatFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get product_name =>
      (_$data['product_name'] as Input$StringFieldUpdateOperationsInput?);
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
    return result$data;
  }

  CopyWith$Input$TransactionProductUpdateManyMutationInput<
          Input$TransactionProductUpdateManyMutationInput>
      get copyWith => CopyWith$Input$TransactionProductUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionProductUpdateManyMutationInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$price = price;
    final l$product_name = product_name;
    return Object.hashAll([
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_name') ? l$product_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$TransactionProductUpdateManyMutationInput(
    Input$TransactionProductUpdateManyMutationInput instance,
    TRes Function(Input$TransactionProductUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$TransactionProductUpdateManyMutationInput;

  factory CopyWith$Input$TransactionProductUpdateManyMutationInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionProductUpdateManyMutationInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  });
}

class _CopyWithImpl$Input$TransactionProductUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$TransactionProductUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$TransactionProductUpdateManyMutationInput _instance;

  final TRes Function(Input$TransactionProductUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? price = _undefined,
    Object? product_name = _undefined,
  }) =>
      _then(Input$TransactionProductUpdateManyMutationInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
        if (price != _undefined)
          'price': (price as Input$FloatFieldUpdateOperationsInput?),
        if (product_name != _undefined)
          'product_name':
              (product_name as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$TransactionProductUpdateManyMutationInput<TRes>
    implements CopyWith$Input$TransactionProductUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$TransactionProductUpdateManyMutationInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? quantity,
    Input$FloatFieldUpdateOperationsInput? price,
    Input$StringFieldUpdateOperationsInput? product_name,
  }) =>
      _res;
}

class Input$SizesUpdateOneRequiredWithoutProductModelNestedInput {
  factory Input$SizesUpdateOneRequiredWithoutProductModelNestedInput({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesUpsertWithoutProductModelInput? upsert,
    Input$SizesWhereUniqueInput? connect,
    Input$SizesUpdateWithoutProductModelInput? update,
  }) =>
      Input$SizesUpdateOneRequiredWithoutProductModelNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$SizesUpdateOneRequiredWithoutProductModelNestedInput._(this._$data);

  factory Input$SizesUpdateOneRequiredWithoutProductModelNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$SizesCreateWithoutProductModelInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$SizesCreateOrConnectWithoutProductModelInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$SizesUpsertWithoutProductModelInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$SizesWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$SizesUpdateWithoutProductModelInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$SizesUpdateOneRequiredWithoutProductModelNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesCreateWithoutProductModelInput? get create =>
      (_$data['create'] as Input$SizesCreateWithoutProductModelInput?);
  Input$SizesCreateOrConnectWithoutProductModelInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$SizesCreateOrConnectWithoutProductModelInput?);
  Input$SizesUpsertWithoutProductModelInput? get upsert =>
      (_$data['upsert'] as Input$SizesUpsertWithoutProductModelInput?);
  Input$SizesWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$SizesWhereUniqueInput?);
  Input$SizesUpdateWithoutProductModelInput? get update =>
      (_$data['update'] as Input$SizesUpdateWithoutProductModelInput?);
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

  CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
          Input$SizesUpdateOneRequiredWithoutProductModelNestedInput>
      get copyWith =>
          CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$SizesUpdateOneRequiredWithoutProductModelNestedInput) ||
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

abstract class CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
    TRes> {
  factory CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput(
    Input$SizesUpdateOneRequiredWithoutProductModelNestedInput instance,
    TRes Function(Input$SizesUpdateOneRequiredWithoutProductModelNestedInput)
        then,
  ) = _CopyWithImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput;

  factory CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput;

  TRes call({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesUpsertWithoutProductModelInput? upsert,
    Input$SizesWhereUniqueInput? connect,
    Input$SizesUpdateWithoutProductModelInput? update,
  });
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create;
  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate;
  CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> get upsert;
  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update;
}

class _CopyWithImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput(
    this._instance,
    this._then,
  );

  final Input$SizesUpdateOneRequiredWithoutProductModelNestedInput _instance;

  final TRes Function(
      Input$SizesUpdateOneRequiredWithoutProductModelNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$SizesUpdateOneRequiredWithoutProductModelNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$SizesCreateWithoutProductModelInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$SizesCreateOrConnectWithoutProductModelInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$SizesUpsertWithoutProductModelInput?),
        if (connect != _undefined)
          'connect': (connect as Input$SizesWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$SizesUpdateWithoutProductModelInput?),
      }));
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$SizesCreateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesCreateWithoutProductModelInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$SizesUpsertWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesUpsertWithoutProductModelInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$SizesUpdateWithoutProductModelInput.stub(
            _then(_instance))
        : CopyWith$Input$SizesUpdateWithoutProductModelInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
        TRes>
    implements
        CopyWith$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$SizesUpdateOneRequiredWithoutProductModelNestedInput(
      this._res);

  TRes _res;

  call({
    Input$SizesCreateWithoutProductModelInput? create,
    Input$SizesCreateOrConnectWithoutProductModelInput? connectOrCreate,
    Input$SizesUpsertWithoutProductModelInput? upsert,
    Input$SizesWhereUniqueInput? connect,
    Input$SizesUpdateWithoutProductModelInput? update,
  }) =>
      _res;
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$SizesCreateWithoutProductModelInput.stub(_res);
  CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$SizesCreateOrConnectWithoutProductModelInput.stub(
              _res);
  CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> get upsert =>
      CopyWith$Input$SizesUpsertWithoutProductModelInput.stub(_res);
  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$SizesUpdateWithoutProductModelInput.stub(_res);
}

class Input$SizesUpsertWithoutProductModelInput {
  factory Input$SizesUpsertWithoutProductModelInput({
    required Input$SizesUpdateWithoutProductModelInput update,
    required Input$SizesCreateWithoutProductModelInput create,
  }) =>
      Input$SizesUpsertWithoutProductModelInput._({
        r'update': update,
        r'create': create,
      });

  Input$SizesUpsertWithoutProductModelInput._(this._$data);

  factory Input$SizesUpsertWithoutProductModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] = Input$SizesUpdateWithoutProductModelInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$SizesCreateWithoutProductModelInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$SizesUpsertWithoutProductModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesUpdateWithoutProductModelInput get update =>
      (_$data['update'] as Input$SizesUpdateWithoutProductModelInput);
  Input$SizesCreateWithoutProductModelInput get create =>
      (_$data['create'] as Input$SizesCreateWithoutProductModelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$SizesUpsertWithoutProductModelInput<
          Input$SizesUpsertWithoutProductModelInput>
      get copyWith => CopyWith$Input$SizesUpsertWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesUpsertWithoutProductModelInput) ||
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

abstract class CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> {
  factory CopyWith$Input$SizesUpsertWithoutProductModelInput(
    Input$SizesUpsertWithoutProductModelInput instance,
    TRes Function(Input$SizesUpsertWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$SizesUpsertWithoutProductModelInput;

  factory CopyWith$Input$SizesUpsertWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesUpsertWithoutProductModelInput;

  TRes call({
    Input$SizesUpdateWithoutProductModelInput? update,
    Input$SizesCreateWithoutProductModelInput? create,
  });
  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update;
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create;
}

class _CopyWithImpl$Input$SizesUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$SizesUpsertWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$SizesUpsertWithoutProductModelInput _instance;

  final TRes Function(Input$SizesUpsertWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$SizesUpsertWithoutProductModelInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$SizesUpdateWithoutProductModelInput),
        if (create != _undefined && create != null)
          'create': (create as Input$SizesCreateWithoutProductModelInput),
      }));
  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$SizesUpdateWithoutProductModelInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$SizesCreateWithoutProductModelInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$SizesUpsertWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesUpsertWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$SizesUpsertWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$SizesUpdateWithoutProductModelInput? update,
    Input$SizesCreateWithoutProductModelInput? create,
  }) =>
      _res;
  CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> get update =>
      CopyWith$Input$SizesUpdateWithoutProductModelInput.stub(_res);
  CopyWith$Input$SizesCreateWithoutProductModelInput<TRes> get create =>
      CopyWith$Input$SizesCreateWithoutProductModelInput.stub(_res);
}

class Input$SizesUpdateWithoutProductModelInput {
  factory Input$SizesUpdateWithoutProductModelInput({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  }) =>
      Input$SizesUpdateWithoutProductModelInput._({
        if (id != null) r'id': id,
        if (size != null) r'size': size,
      });

  Input$SizesUpdateWithoutProductModelInput._(this._$data);

  factory Input$SizesUpdateWithoutProductModelInput.fromJson(
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
    return Input$SizesUpdateWithoutProductModelInput._(result$data);
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

  CopyWith$Input$SizesUpdateWithoutProductModelInput<
          Input$SizesUpdateWithoutProductModelInput>
      get copyWith => CopyWith$Input$SizesUpdateWithoutProductModelInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SizesUpdateWithoutProductModelInput) ||
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

abstract class CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> {
  factory CopyWith$Input$SizesUpdateWithoutProductModelInput(
    Input$SizesUpdateWithoutProductModelInput instance,
    TRes Function(Input$SizesUpdateWithoutProductModelInput) then,
  ) = _CopyWithImpl$Input$SizesUpdateWithoutProductModelInput;

  factory CopyWith$Input$SizesUpdateWithoutProductModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SizesUpdateWithoutProductModelInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  });
}

class _CopyWithImpl$Input$SizesUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> {
  _CopyWithImpl$Input$SizesUpdateWithoutProductModelInput(
    this._instance,
    this._then,
  );

  final Input$SizesUpdateWithoutProductModelInput _instance;

  final TRes Function(Input$SizesUpdateWithoutProductModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
  }) =>
      _then(Input$SizesUpdateWithoutProductModelInput._({
        ..._instance._$data,
        if (id != _undefined)
          'id': (id as Input$IntFieldUpdateOperationsInput?),
        if (size != _undefined)
          'size': (size as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$SizesUpdateWithoutProductModelInput<TRes>
    implements CopyWith$Input$SizesUpdateWithoutProductModelInput<TRes> {
  _CopyWithStubImpl$Input$SizesUpdateWithoutProductModelInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? id,
    Input$StringFieldUpdateOperationsInput? size,
  }) =>
      _res;
}

class Input$ProductModelUpdateWithWhereUniqueWithoutColorInput {
  factory Input$ProductModelUpdateWithWhereUniqueWithoutColorInput({
    required Input$ProductModelWhereUniqueInput where,
    required Input$ProductModelUpdateWithoutColorInput data,
  }) =>
      Input$ProductModelUpdateWithWhereUniqueWithoutColorInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateWithWhereUniqueWithoutColorInput._(this._$data);

  factory Input$ProductModelUpdateWithWhereUniqueWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateWithoutColorInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateWithWhereUniqueWithoutColorInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Input$ProductModelUpdateWithoutColorInput get data =>
      (_$data['data'] as Input$ProductModelUpdateWithoutColorInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
          Input$ProductModelUpdateWithWhereUniqueWithoutColorInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateWithWhereUniqueWithoutColorInput) ||
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

abstract class CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput(
    Input$ProductModelUpdateWithWhereUniqueWithoutColorInput instance,
    TRes Function(Input$ProductModelUpdateWithWhereUniqueWithoutColorInput)
        then,
  ) = _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput;

  factory CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput;

  TRes call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutColorInput? data,
  });
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
            TRes> {
  _CopyWithImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateWithWhereUniqueWithoutColorInput _instance;

  final TRes Function(Input$ProductModelUpdateWithWhereUniqueWithoutColorInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateWithWhereUniqueWithoutColorInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateWithoutColorInput),
      }));
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductModelUpdateWithoutColorInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput<
            TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateWithWhereUniqueWithoutColorInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelWhereUniqueInput? where,
    Input$ProductModelUpdateWithoutColorInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductModelUpdateWithoutColorInput<TRes> get data =>
      CopyWith$Input$ProductModelUpdateWithoutColorInput.stub(_res);
}

class Input$ProductModelUpdateManyWithWhereWithoutColorInput {
  factory Input$ProductModelUpdateManyWithWhereWithoutColorInput({
    required Input$ProductModelScalarWhereInput where,
    required Input$ProductModelUpdateManyMutationInput data,
  }) =>
      Input$ProductModelUpdateManyWithWhereWithoutColorInput._({
        r'where': where,
        r'data': data,
      });

  Input$ProductModelUpdateManyWithWhereWithoutColorInput._(this._$data);

  factory Input$ProductModelUpdateManyWithWhereWithoutColorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelScalarWhereInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateManyMutationInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Input$ProductModelUpdateManyWithWhereWithoutColorInput._(
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

  CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<
          Input$ProductModelUpdateManyWithWhereWithoutColorInput>
      get copyWith =>
          CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyWithWhereWithoutColorInput) ||
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

abstract class CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<
    TRes> {
  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput(
    Input$ProductModelUpdateManyWithWhereWithoutColorInput instance,
    TRes Function(Input$ProductModelUpdateManyWithWhereWithoutColorInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput;

  factory CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput;

  TRes call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  });
  CopyWith$Input$ProductModelScalarWhereInput<TRes> get where;
  CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> get data;
}

class _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput<TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyWithWhereWithoutColorInput _instance;

  final TRes Function(Input$ProductModelUpdateManyWithWhereWithoutColorInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$ProductModelUpdateManyWithWhereWithoutColorInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelScalarWhereInput),
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateManyMutationInput),
      }));
  CopyWith$Input$ProductModelScalarWhereInput<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$ProductModelScalarWhereInput(
        local$where, (e) => call(where: e));
  }

  CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith$Input$ProductModelUpdateManyMutationInput(
        local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput<
        TRes>
    implements
        CopyWith$Input$ProductModelUpdateManyWithWhereWithoutColorInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyWithWhereWithoutColorInput(
      this._res);

  TRes _res;

  call({
    Input$ProductModelScalarWhereInput? where,
    Input$ProductModelUpdateManyMutationInput? data,
  }) =>
      _res;
  CopyWith$Input$ProductModelScalarWhereInput<TRes> get where =>
      CopyWith$Input$ProductModelScalarWhereInput.stub(_res);
  CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> get data =>
      CopyWith$Input$ProductModelUpdateManyMutationInput.stub(_res);
}

class Input$ProductModelScalarWhereInput {
  factory Input$ProductModelScalarWhereInput({
    List<Input$ProductModelScalarWhereInput>? AND,
    List<Input$ProductModelScalarWhereInput>? OR,
    List<Input$ProductModelScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
  }) =>
      Input$ProductModelScalarWhereInput._({
        if (AND != null) r'AND': AND,
        if (OR != null) r'OR': OR,
        if (NOT != null) r'NOT': NOT,
        if (product_id != null) r'product_id': product_id,
        if (color_id != null) r'color_id': color_id,
        if (size_id != null) r'size_id': size_id,
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelScalarWhereInput._(this._$data);

  factory Input$ProductModelScalarWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AND')) {
      final l$AND = data['AND'];
      result$data['AND'] = (l$AND as List<dynamic>?)
          ?.map((e) => Input$ProductModelScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('OR')) {
      final l$OR = data['OR'];
      result$data['OR'] = (l$OR as List<dynamic>?)
          ?.map((e) => Input$ProductModelScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('NOT')) {
      final l$NOT = data['NOT'];
      result$data['NOT'] = (l$NOT as List<dynamic>?)
          ?.map((e) => Input$ProductModelScalarWhereInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = l$product_id == null
          ? null
          : Input$IntFilter.fromJson((l$product_id as Map<String, dynamic>));
    }
    if (data.containsKey('color_id')) {
      final l$color_id = data['color_id'];
      result$data['color_id'] = l$color_id == null
          ? null
          : Input$IntFilter.fromJson((l$color_id as Map<String, dynamic>));
    }
    if (data.containsKey('size_id')) {
      final l$size_id = data['size_id'];
      result$data['size_id'] = l$size_id == null
          ? null
          : Input$IntFilter.fromJson((l$size_id as Map<String, dynamic>));
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFilter.fromJson((l$quantity as Map<String, dynamic>));
    }
    return Input$ProductModelScalarWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductModelScalarWhereInput>? get AND =>
      (_$data['AND'] as List<Input$ProductModelScalarWhereInput>?);
  List<Input$ProductModelScalarWhereInput>? get OR =>
      (_$data['OR'] as List<Input$ProductModelScalarWhereInput>?);
  List<Input$ProductModelScalarWhereInput>? get NOT =>
      (_$data['NOT'] as List<Input$ProductModelScalarWhereInput>?);
  Input$IntFilter? get product_id => (_$data['product_id'] as Input$IntFilter?);
  Input$IntFilter? get color_id => (_$data['color_id'] as Input$IntFilter?);
  Input$IntFilter? get size_id => (_$data['size_id'] as Input$IntFilter?);
  Input$IntFilter? get quantity => (_$data['quantity'] as Input$IntFilter?);
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
    if (_$data.containsKey('color_id')) {
      final l$color_id = color_id;
      result$data['color_id'] = l$color_id?.toJson();
    }
    if (_$data.containsKey('size_id')) {
      final l$size_id = size_id;
      result$data['size_id'] = l$size_id?.toJson();
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelScalarWhereInput<
          Input$ProductModelScalarWhereInput>
      get copyWith => CopyWith$Input$ProductModelScalarWhereInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelScalarWhereInput) ||
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
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (_$data.containsKey('color_id') !=
        other._$data.containsKey('color_id')) {
      return false;
    }
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (_$data.containsKey('size_id') != other._$data.containsKey('size_id')) {
      return false;
    }
    if (l$size_id != lOther$size_id) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$AND = AND;
    final l$OR = OR;
    final l$NOT = NOT;
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
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
      _$data.containsKey('color_id') ? l$color_id : const {},
      _$data.containsKey('size_id') ? l$size_id : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductModelScalarWhereInput<TRes> {
  factory CopyWith$Input$ProductModelScalarWhereInput(
    Input$ProductModelScalarWhereInput instance,
    TRes Function(Input$ProductModelScalarWhereInput) then,
  ) = _CopyWithImpl$Input$ProductModelScalarWhereInput;

  factory CopyWith$Input$ProductModelScalarWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelScalarWhereInput;

  TRes call({
    List<Input$ProductModelScalarWhereInput>? AND,
    List<Input$ProductModelScalarWhereInput>? OR,
    List<Input$ProductModelScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
  });
  TRes AND(
      Iterable<Input$ProductModelScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereInput<
                      Input$ProductModelScalarWhereInput>>?)
          _fn);
  TRes OR(
      Iterable<Input$ProductModelScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereInput<
                      Input$ProductModelScalarWhereInput>>?)
          _fn);
  TRes NOT(
      Iterable<Input$ProductModelScalarWhereInput>? Function(
              Iterable<
                  CopyWith$Input$ProductModelScalarWhereInput<
                      Input$ProductModelScalarWhereInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ProductModelScalarWhereInput<TRes>
    implements CopyWith$Input$ProductModelScalarWhereInput<TRes> {
  _CopyWithImpl$Input$ProductModelScalarWhereInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelScalarWhereInput _instance;

  final TRes Function(Input$ProductModelScalarWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? AND = _undefined,
    Object? OR = _undefined,
    Object? NOT = _undefined,
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$ProductModelScalarWhereInput._({
        ..._instance._$data,
        if (AND != _undefined)
          'AND': (AND as List<Input$ProductModelScalarWhereInput>?),
        if (OR != _undefined)
          'OR': (OR as List<Input$ProductModelScalarWhereInput>?),
        if (NOT != _undefined)
          'NOT': (NOT as List<Input$ProductModelScalarWhereInput>?),
        if (product_id != _undefined)
          'product_id': (product_id as Input$IntFilter?),
        if (color_id != _undefined) 'color_id': (color_id as Input$IntFilter?),
        if (size_id != _undefined) 'size_id': (size_id as Input$IntFilter?),
        if (quantity != _undefined) 'quantity': (quantity as Input$IntFilter?),
      }));
  TRes AND(
          Iterable<Input$ProductModelScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereInput<
                          Input$ProductModelScalarWhereInput>>?)
              _fn) =>
      call(
          AND: _fn(_instance.AND
              ?.map((e) => CopyWith$Input$ProductModelScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes OR(
          Iterable<Input$ProductModelScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereInput<
                          Input$ProductModelScalarWhereInput>>?)
              _fn) =>
      call(
          OR: _fn(_instance.OR
              ?.map((e) => CopyWith$Input$ProductModelScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes NOT(
          Iterable<Input$ProductModelScalarWhereInput>? Function(
                  Iterable<
                      CopyWith$Input$ProductModelScalarWhereInput<
                          Input$ProductModelScalarWhereInput>>?)
              _fn) =>
      call(
          NOT: _fn(_instance.NOT
              ?.map((e) => CopyWith$Input$ProductModelScalarWhereInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ProductModelScalarWhereInput<TRes>
    implements CopyWith$Input$ProductModelScalarWhereInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelScalarWhereInput(this._res);

  TRes _res;

  call({
    List<Input$ProductModelScalarWhereInput>? AND,
    List<Input$ProductModelScalarWhereInput>? OR,
    List<Input$ProductModelScalarWhereInput>? NOT,
    Input$IntFilter? product_id,
    Input$IntFilter? color_id,
    Input$IntFilter? size_id,
    Input$IntFilter? quantity,
  }) =>
      _res;
  AND(_fn) => _res;
  OR(_fn) => _res;
  NOT(_fn) => _res;
}

class Input$ProductModelUpdateManyMutationInput {
  factory Input$ProductModelUpdateManyMutationInput(
          {Input$IntFieldUpdateOperationsInput? quantity}) =>
      Input$ProductModelUpdateManyMutationInput._({
        if (quantity != null) r'quantity': quantity,
      });

  Input$ProductModelUpdateManyMutationInput._(this._$data);

  factory Input$ProductModelUpdateManyMutationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = l$quantity == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$quantity as Map<String, dynamic>));
    }
    return Input$ProductModelUpdateManyMutationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get quantity =>
      (_$data['quantity'] as Input$IntFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductModelUpdateManyMutationInput<
          Input$ProductModelUpdateManyMutationInput>
      get copyWith => CopyWith$Input$ProductModelUpdateManyMutationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductModelUpdateManyMutationInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    return Object.hashAll(
        [_$data.containsKey('quantity') ? l$quantity : const {}]);
  }
}

abstract class CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> {
  factory CopyWith$Input$ProductModelUpdateManyMutationInput(
    Input$ProductModelUpdateManyMutationInput instance,
    TRes Function(Input$ProductModelUpdateManyMutationInput) then,
  ) = _CopyWithImpl$Input$ProductModelUpdateManyMutationInput;

  factory CopyWith$Input$ProductModelUpdateManyMutationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductModelUpdateManyMutationInput;

  TRes call({Input$IntFieldUpdateOperationsInput? quantity});
}

class _CopyWithImpl$Input$ProductModelUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> {
  _CopyWithImpl$Input$ProductModelUpdateManyMutationInput(
    this._instance,
    this._then,
  );

  final Input$ProductModelUpdateManyMutationInput _instance;

  final TRes Function(Input$ProductModelUpdateManyMutationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? quantity = _undefined}) =>
      _then(Input$ProductModelUpdateManyMutationInput._({
        ..._instance._$data,
        if (quantity != _undefined)
          'quantity': (quantity as Input$IntFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$ProductModelUpdateManyMutationInput<TRes>
    implements CopyWith$Input$ProductModelUpdateManyMutationInput<TRes> {
  _CopyWithStubImpl$Input$ProductModelUpdateManyMutationInput(this._res);

  TRes _res;

  call({Input$IntFieldUpdateOperationsInput? quantity}) => _res;
}

class Input$PayementsCreateInput {
  factory Input$PayementsCreateInput({
    required int payement_id,
    required double payement,
    required Input$TransactionsCreateNestedOneWithoutPayementsInput transaction,
  }) =>
      Input$PayementsCreateInput._({
        r'payement_id': payement_id,
        r'payement': payement,
        r'transaction': transaction,
      });

  Input$PayementsCreateInput._(this._$data);

  factory Input$PayementsCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payement_id = data['payement_id'];
    result$data['payement_id'] = (l$payement_id as int);
    final l$payement = data['payement'];
    result$data['payement'] = (l$payement as num).toDouble();
    final l$transaction = data['transaction'];
    result$data['transaction'] =
        Input$TransactionsCreateNestedOneWithoutPayementsInput.fromJson(
            (l$transaction as Map<String, dynamic>));
    return Input$PayementsCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get payement_id => (_$data['payement_id'] as int);
  double get payement => (_$data['payement'] as double);
  Input$TransactionsCreateNestedOneWithoutPayementsInput get transaction =>
      (_$data['transaction']
          as Input$TransactionsCreateNestedOneWithoutPayementsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payement_id = payement_id;
    result$data['payement_id'] = l$payement_id;
    final l$payement = payement;
    result$data['payement'] = l$payement;
    final l$transaction = transaction;
    result$data['transaction'] = l$transaction.toJson();
    return result$data;
  }

  CopyWith$Input$PayementsCreateInput<Input$PayementsCreateInput>
      get copyWith => CopyWith$Input$PayementsCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (l$payement != lOther$payement) {
      return false;
    }
    final l$transaction = transaction;
    final lOther$transaction = other.transaction;
    if (l$transaction != lOther$transaction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$payement = payement;
    final l$transaction = transaction;
    return Object.hashAll([
      l$payement_id,
      l$payement,
      l$transaction,
    ]);
  }
}

abstract class CopyWith$Input$PayementsCreateInput<TRes> {
  factory CopyWith$Input$PayementsCreateInput(
    Input$PayementsCreateInput instance,
    TRes Function(Input$PayementsCreateInput) then,
  ) = _CopyWithImpl$Input$PayementsCreateInput;

  factory CopyWith$Input$PayementsCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsCreateInput;

  TRes call({
    int? payement_id,
    double? payement,
    Input$TransactionsCreateNestedOneWithoutPayementsInput? transaction,
  });
  CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes>
      get transaction;
}

class _CopyWithImpl$Input$PayementsCreateInput<TRes>
    implements CopyWith$Input$PayementsCreateInput<TRes> {
  _CopyWithImpl$Input$PayementsCreateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsCreateInput _instance;

  final TRes Function(Input$PayementsCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? payement = _undefined,
    Object? transaction = _undefined,
  }) =>
      _then(Input$PayementsCreateInput._({
        ..._instance._$data,
        if (payement_id != _undefined && payement_id != null)
          'payement_id': (payement_id as int),
        if (payement != _undefined && payement != null)
          'payement': (payement as double),
        if (transaction != _undefined && transaction != null)
          'transaction': (transaction
              as Input$TransactionsCreateNestedOneWithoutPayementsInput),
      }));
  CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes>
      get transaction {
    final local$transaction = _instance.transaction;
    return CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput(
        local$transaction, (e) => call(transaction: e));
  }
}

class _CopyWithStubImpl$Input$PayementsCreateInput<TRes>
    implements CopyWith$Input$PayementsCreateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsCreateInput(this._res);

  TRes _res;

  call({
    int? payement_id,
    double? payement,
    Input$TransactionsCreateNestedOneWithoutPayementsInput? transaction,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes>
      get transaction =>
          CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput.stub(
              _res);
}

class Input$TransactionsCreateNestedOneWithoutPayementsInput {
  factory Input$TransactionsCreateNestedOneWithoutPayementsInput({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsWhereUniqueInput? connect,
  }) =>
      Input$TransactionsCreateNestedOneWithoutPayementsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$TransactionsCreateNestedOneWithoutPayementsInput._(this._$data);

  factory Input$TransactionsCreateNestedOneWithoutPayementsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionsCreateWithoutPayementsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionsCreateOrConnectWithoutPayementsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$TransactionsCreateNestedOneWithoutPayementsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsCreateWithoutPayementsInput? get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutPayementsInput?);
  Input$TransactionsCreateOrConnectWithoutPayementsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$TransactionsCreateOrConnectWithoutPayementsInput?);
  Input$TransactionsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionsWhereUniqueInput?);
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

  CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<
          Input$TransactionsCreateNestedOneWithoutPayementsInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateNestedOneWithoutPayementsInput) ||
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

abstract class CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput(
    Input$TransactionsCreateNestedOneWithoutPayementsInput instance,
    TRes Function(Input$TransactionsCreateNestedOneWithoutPayementsInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput;

  factory CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput;

  TRes call({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsWhereUniqueInput? connect,
  });
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create;
  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateNestedOneWithoutPayementsInput _instance;

  final TRes Function(Input$TransactionsCreateNestedOneWithoutPayementsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$TransactionsCreateNestedOneWithoutPayementsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$TransactionsCreateWithoutPayementsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionsCreateOrConnectWithoutPayementsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionsWhereUniqueInput?),
      }));
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateWithoutPayementsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateNestedOneWithoutPayementsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateNestedOneWithoutPayementsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(_res);
  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput.stub(
              _res);
}

class Input$TransactionsCreateWithoutPayementsInput {
  factory Input$TransactionsCreateWithoutPayementsInput({
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
  }) =>
      Input$TransactionsCreateWithoutPayementsInput._({
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
      });

  Input$TransactionsCreateWithoutPayementsInput._(this._$data);

  factory Input$TransactionsCreateWithoutPayementsInput.fromJson(
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
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusCreateNestedOneWithoutTransactionsInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    return Input$TransactionsCreateWithoutPayementsInput._(result$data);
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
    return result$data;
  }

  CopyWith$Input$TransactionsCreateWithoutPayementsInput<
          Input$TransactionsCreateWithoutPayementsInput>
      get copyWith => CopyWith$Input$TransactionsCreateWithoutPayementsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateWithoutPayementsInput) ||
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
    ]);
  }
}

abstract class CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> {
  factory CopyWith$Input$TransactionsCreateWithoutPayementsInput(
    Input$TransactionsCreateWithoutPayementsInput instance,
    TRes Function(Input$TransactionsCreateWithoutPayementsInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateWithoutPayementsInput;

  factory CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateWithoutPayementsInput;

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
  });
  CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<TRes> get city;
}

class _CopyWithImpl$Input$TransactionsCreateWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateWithoutPayementsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateWithoutPayementsInput _instance;

  final TRes Function(Input$TransactionsCreateWithoutPayementsInput) _then;

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
  }) =>
      _then(Input$TransactionsCreateWithoutPayementsInput._({
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
      }));
  CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<TRes> get city {
    final local$city = _instance.city;
    return CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput(
        local$city, (e) => call(city: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateWithoutPayementsInput(this._res);

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
  }) =>
      _res;
  CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<TRes> get city =>
      CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput.stub(_res);
}

class Input$CityCreateNestedOneWithoutTransactionsInput {
  factory Input$CityCreateNestedOneWithoutTransactionsInput({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityWhereUniqueInput? connect,
  }) =>
      Input$CityCreateNestedOneWithoutTransactionsInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$CityCreateNestedOneWithoutTransactionsInput._(this._$data);

  factory Input$CityCreateNestedOneWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$CityCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$CityCreateOrConnectWithoutTransactionsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$CityWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    return Input$CityCreateNestedOneWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityCreateWithoutTransactionsInput? get create =>
      (_$data['create'] as Input$CityCreateWithoutTransactionsInput?);
  Input$CityCreateOrConnectWithoutTransactionsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$CityCreateOrConnectWithoutTransactionsInput?);
  Input$CityWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$CityWhereUniqueInput?);
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

  CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<
          Input$CityCreateNestedOneWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityCreateNestedOneWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput(
    Input$CityCreateNestedOneWithoutTransactionsInput instance,
    TRes Function(Input$CityCreateNestedOneWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$CityCreateNestedOneWithoutTransactionsInput;

  factory CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CityCreateNestedOneWithoutTransactionsInput;

  TRes call({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityWhereUniqueInput? connect,
  });
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create;
  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate;
}

class _CopyWithImpl$Input$CityCreateNestedOneWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$CityCreateNestedOneWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$CityCreateNestedOneWithoutTransactionsInput _instance;

  final TRes Function(Input$CityCreateNestedOneWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$CityCreateNestedOneWithoutTransactionsInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$CityCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$CityCreateOrConnectWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$CityWhereUniqueInput?),
      }));
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$CityCreateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityCreateWithoutTransactionsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }
}

class _CopyWithStubImpl$Input$CityCreateNestedOneWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$CityCreateNestedOneWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$CityCreateNestedOneWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityWhereUniqueInput? connect,
  }) =>
      _res;
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$CityCreateWithoutTransactionsInput.stub(_res);
  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput.stub(_res);
}

class Input$CityCreateWithoutTransactionsInput {
  factory Input$CityCreateWithoutTransactionsInput({
    required int city_id,
    required String city_name,
  }) =>
      Input$CityCreateWithoutTransactionsInput._({
        r'city_id': city_id,
        r'city_name': city_name,
      });

  Input$CityCreateWithoutTransactionsInput._(this._$data);

  factory Input$CityCreateWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$city_id = data['city_id'];
    result$data['city_id'] = (l$city_id as int);
    final l$city_name = data['city_name'];
    result$data['city_name'] = (l$city_name as String);
    return Input$CityCreateWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get city_id => (_$data['city_id'] as int);
  String get city_name => (_$data['city_name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$city_id = city_id;
    result$data['city_id'] = l$city_id;
    final l$city_name = city_name;
    result$data['city_name'] = l$city_name;
    return result$data;
  }

  CopyWith$Input$CityCreateWithoutTransactionsInput<
          Input$CityCreateWithoutTransactionsInput>
      get copyWith => CopyWith$Input$CityCreateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityCreateWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    return Object.hashAll([
      l$city_id,
      l$city_name,
    ]);
  }
}

abstract class CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$CityCreateWithoutTransactionsInput(
    Input$CityCreateWithoutTransactionsInput instance,
    TRes Function(Input$CityCreateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$CityCreateWithoutTransactionsInput;

  factory CopyWith$Input$CityCreateWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityCreateWithoutTransactionsInput;

  TRes call({
    int? city_id,
    String? city_name,
  });
}

class _CopyWithImpl$Input$CityCreateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$CityCreateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$CityCreateWithoutTransactionsInput _instance;

  final TRes Function(Input$CityCreateWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityCreateWithoutTransactionsInput._({
        ..._instance._$data,
        if (city_id != _undefined && city_id != null)
          'city_id': (city_id as int),
        if (city_name != _undefined && city_name != null)
          'city_name': (city_name as String),
      }));
}

class _CopyWithStubImpl$Input$CityCreateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$CityCreateWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    int? city_id,
    String? city_name,
  }) =>
      _res;
}

class Input$CityCreateOrConnectWithoutTransactionsInput {
  factory Input$CityCreateOrConnectWithoutTransactionsInput({
    required Input$CityWhereUniqueInput where,
    required Input$CityCreateWithoutTransactionsInput create,
  }) =>
      Input$CityCreateOrConnectWithoutTransactionsInput._({
        r'where': where,
        r'create': create,
      });

  Input$CityCreateOrConnectWithoutTransactionsInput._(this._$data);

  factory Input$CityCreateOrConnectWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$CityWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$CityCreateWithoutTransactionsInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$CityCreateOrConnectWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityWhereUniqueInput get where =>
      (_$data['where'] as Input$CityWhereUniqueInput);
  Input$CityCreateWithoutTransactionsInput get create =>
      (_$data['create'] as Input$CityCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<
          Input$CityCreateOrConnectWithoutTransactionsInput>
      get copyWith =>
          CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityCreateOrConnectWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<
    TRes> {
  factory CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput(
    Input$CityCreateOrConnectWithoutTransactionsInput instance,
    TRes Function(Input$CityCreateOrConnectWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$CityCreateOrConnectWithoutTransactionsInput;

  factory CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CityCreateOrConnectWithoutTransactionsInput;

  TRes call({
    Input$CityWhereUniqueInput? where,
    Input$CityCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create;
}

class _CopyWithImpl$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$CityCreateOrConnectWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$CityCreateOrConnectWithoutTransactionsInput _instance;

  final TRes Function(Input$CityCreateOrConnectWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$CityCreateOrConnectWithoutTransactionsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$CityWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$CityCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$CityCreateWithoutTransactionsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
    implements
        CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$CityCreateOrConnectWithoutTransactionsInput(
      this._res);

  TRes _res;

  call({
    Input$CityWhereUniqueInput? where,
    Input$CityCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$CityCreateWithoutTransactionsInput.stub(_res);
}

class Input$TransactionsCreateOrConnectWithoutPayementsInput {
  factory Input$TransactionsCreateOrConnectWithoutPayementsInput({
    required Input$TransactionsWhereUniqueInput where,
    required Input$TransactionsCreateWithoutPayementsInput create,
  }) =>
      Input$TransactionsCreateOrConnectWithoutPayementsInput._({
        r'where': where,
        r'create': create,
      });

  Input$TransactionsCreateOrConnectWithoutPayementsInput._(this._$data);

  factory Input$TransactionsCreateOrConnectWithoutPayementsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$TransactionsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionsCreateWithoutPayementsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionsCreateOrConnectWithoutPayementsInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsWhereUniqueInput get where =>
      (_$data['where'] as Input$TransactionsWhereUniqueInput);
  Input$TransactionsCreateWithoutPayementsInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutPayementsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<
          Input$TransactionsCreateOrConnectWithoutPayementsInput>
      get copyWith =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsCreateOrConnectWithoutPayementsInput) ||
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

abstract class CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<
    TRes> {
  factory CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput(
    Input$TransactionsCreateOrConnectWithoutPayementsInput instance,
    TRes Function(Input$TransactionsCreateOrConnectWithoutPayementsInput) then,
  ) = _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput;

  factory CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput;

  TRes call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutPayementsInput? create,
  });
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes> {
  _CopyWithImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsCreateOrConnectWithoutPayementsInput _instance;

  final TRes Function(Input$TransactionsCreateOrConnectWithoutPayementsInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsCreateOrConnectWithoutPayementsInput._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$TransactionsWhereUniqueInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutPayementsInput),
      }));
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutPayementsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput<
        TRes>
    implements
        CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsCreateOrConnectWithoutPayementsInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsWhereUniqueInput? where,
    Input$TransactionsCreateWithoutPayementsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(_res);
}

class Input$PayementsUpdateInput {
  factory Input$PayementsUpdateInput({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
    Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput? transaction,
  }) =>
      Input$PayementsUpdateInput._({
        if (payement_id != null) r'payement_id': payement_id,
        if (payement != null) r'payement': payement,
        if (transaction != null) r'transaction': transaction,
      });

  Input$PayementsUpdateInput._(this._$data);

  factory Input$PayementsUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('payement_id')) {
      final l$payement_id = data['payement_id'];
      result$data['payement_id'] = l$payement_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$payement_id as Map<String, dynamic>));
    }
    if (data.containsKey('payement')) {
      final l$payement = data['payement'];
      result$data['payement'] = l$payement == null
          ? null
          : Input$FloatFieldUpdateOperationsInput.fromJson(
              (l$payement as Map<String, dynamic>));
    }
    if (data.containsKey('transaction')) {
      final l$transaction = data['transaction'];
      result$data['transaction'] = l$transaction == null
          ? null
          : Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput
              .fromJson((l$transaction as Map<String, dynamic>));
    }
    return Input$PayementsUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get payement_id =>
      (_$data['payement_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$FloatFieldUpdateOperationsInput? get payement =>
      (_$data['payement'] as Input$FloatFieldUpdateOperationsInput?);
  Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput?
      get transaction => (_$data['transaction']
          as Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('payement_id')) {
      final l$payement_id = payement_id;
      result$data['payement_id'] = l$payement_id?.toJson();
    }
    if (_$data.containsKey('payement')) {
      final l$payement = payement;
      result$data['payement'] = l$payement?.toJson();
    }
    if (_$data.containsKey('transaction')) {
      final l$transaction = transaction;
      result$data['transaction'] = l$transaction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayementsUpdateInput<Input$PayementsUpdateInput>
      get copyWith => CopyWith$Input$PayementsUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PayementsUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payement_id = payement_id;
    final lOther$payement_id = other.payement_id;
    if (_$data.containsKey('payement_id') !=
        other._$data.containsKey('payement_id')) {
      return false;
    }
    if (l$payement_id != lOther$payement_id) {
      return false;
    }
    final l$payement = payement;
    final lOther$payement = other.payement;
    if (_$data.containsKey('payement') !=
        other._$data.containsKey('payement')) {
      return false;
    }
    if (l$payement != lOther$payement) {
      return false;
    }
    final l$transaction = transaction;
    final lOther$transaction = other.transaction;
    if (_$data.containsKey('transaction') !=
        other._$data.containsKey('transaction')) {
      return false;
    }
    if (l$transaction != lOther$transaction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payement_id = payement_id;
    final l$payement = payement;
    final l$transaction = transaction;
    return Object.hashAll([
      _$data.containsKey('payement_id') ? l$payement_id : const {},
      _$data.containsKey('payement') ? l$payement : const {},
      _$data.containsKey('transaction') ? l$transaction : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayementsUpdateInput<TRes> {
  factory CopyWith$Input$PayementsUpdateInput(
    Input$PayementsUpdateInput instance,
    TRes Function(Input$PayementsUpdateInput) then,
  ) = _CopyWithImpl$Input$PayementsUpdateInput;

  factory CopyWith$Input$PayementsUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayementsUpdateInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
    Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput? transaction,
  });
  CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<TRes>
      get transaction;
}

class _CopyWithImpl$Input$PayementsUpdateInput<TRes>
    implements CopyWith$Input$PayementsUpdateInput<TRes> {
  _CopyWithImpl$Input$PayementsUpdateInput(
    this._instance,
    this._then,
  );

  final Input$PayementsUpdateInput _instance;

  final TRes Function(Input$PayementsUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payement_id = _undefined,
    Object? payement = _undefined,
    Object? transaction = _undefined,
  }) =>
      _then(Input$PayementsUpdateInput._({
        ..._instance._$data,
        if (payement_id != _undefined)
          'payement_id': (payement_id as Input$IntFieldUpdateOperationsInput?),
        if (payement != _undefined)
          'payement': (payement as Input$FloatFieldUpdateOperationsInput?),
        if (transaction != _undefined)
          'transaction': (transaction
              as Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput?),
      }));
  CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<TRes>
      get transaction {
    final local$transaction = _instance.transaction;
    return local$transaction == null
        ? CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput(
            local$transaction, (e) => call(transaction: e));
  }
}

class _CopyWithStubImpl$Input$PayementsUpdateInput<TRes>
    implements CopyWith$Input$PayementsUpdateInput<TRes> {
  _CopyWithStubImpl$Input$PayementsUpdateInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? payement_id,
    Input$FloatFieldUpdateOperationsInput? payement,
    Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput? transaction,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<TRes>
      get transaction =>
          CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput
              .stub(_res);
}

class Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput {
  factory Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsUpsertWithoutPayementsInput? upsert,
    Input$TransactionsWhereUniqueInput? connect,
    Input$TransactionsUpdateWithoutPayementsInput? update,
  }) =>
      Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput._(this._$data);

  factory Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$TransactionsCreateWithoutPayementsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$TransactionsCreateOrConnectWithoutPayementsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$TransactionsUpsertWithoutPayementsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$TransactionsWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$TransactionsUpdateWithoutPayementsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsCreateWithoutPayementsInput? get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutPayementsInput?);
  Input$TransactionsCreateOrConnectWithoutPayementsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$TransactionsCreateOrConnectWithoutPayementsInput?);
  Input$TransactionsUpsertWithoutPayementsInput? get upsert =>
      (_$data['upsert'] as Input$TransactionsUpsertWithoutPayementsInput?);
  Input$TransactionsWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$TransactionsWhereUniqueInput?);
  Input$TransactionsUpdateWithoutPayementsInput? get update =>
      (_$data['update'] as Input$TransactionsUpdateWithoutPayementsInput?);
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

  CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
          Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput>
      get copyWith =>
          CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput) ||
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

abstract class CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
    TRes> {
  factory CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput(
    Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput instance,
    TRes Function(
            Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput)
        then,
  ) = _CopyWithImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput;

  factory CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput;

  TRes call({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsUpsertWithoutPayementsInput? upsert,
    Input$TransactionsWhereUniqueInput? connect,
    Input$TransactionsUpdateWithoutPayementsInput? update,
  });
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create;
  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate;
  CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> get upsert;
  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update;
}

class _CopyWithImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
            TRes> {
  _CopyWithImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput
      _instance;

  final TRes Function(
      Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$TransactionsCreateWithoutPayementsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$TransactionsCreateOrConnectWithoutPayementsInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$TransactionsUpsertWithoutPayementsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$TransactionsWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$TransactionsUpdateWithoutPayementsInput?),
      }));
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateWithoutPayementsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$TransactionsUpsertWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsUpsertWithoutPayementsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$TransactionsUpdateWithoutPayementsInput.stub(
            _then(_instance))
        : CopyWith$Input$TransactionsUpdateWithoutPayementsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
        TRes>
    implements
        CopyWith$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateOneRequiredWithoutPayementsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$TransactionsCreateWithoutPayementsInput? create,
    Input$TransactionsCreateOrConnectWithoutPayementsInput? connectOrCreate,
    Input$TransactionsUpsertWithoutPayementsInput? upsert,
    Input$TransactionsWhereUniqueInput? connect,
    Input$TransactionsUpdateWithoutPayementsInput? update,
  }) =>
      _res;
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(_res);
  CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$TransactionsCreateOrConnectWithoutPayementsInput.stub(
              _res);
  CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> get upsert =>
      CopyWith$Input$TransactionsUpsertWithoutPayementsInput.stub(_res);
  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update =>
      CopyWith$Input$TransactionsUpdateWithoutPayementsInput.stub(_res);
}

class Input$TransactionsUpsertWithoutPayementsInput {
  factory Input$TransactionsUpsertWithoutPayementsInput({
    required Input$TransactionsUpdateWithoutPayementsInput update,
    required Input$TransactionsCreateWithoutPayementsInput create,
  }) =>
      Input$TransactionsUpsertWithoutPayementsInput._({
        r'update': update,
        r'create': create,
      });

  Input$TransactionsUpsertWithoutPayementsInput._(this._$data);

  factory Input$TransactionsUpsertWithoutPayementsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] =
        Input$TransactionsUpdateWithoutPayementsInput.fromJson(
            (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] =
        Input$TransactionsCreateWithoutPayementsInput.fromJson(
            (l$create as Map<String, dynamic>));
    return Input$TransactionsUpsertWithoutPayementsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransactionsUpdateWithoutPayementsInput get update =>
      (_$data['update'] as Input$TransactionsUpdateWithoutPayementsInput);
  Input$TransactionsCreateWithoutPayementsInput get create =>
      (_$data['create'] as Input$TransactionsCreateWithoutPayementsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$TransactionsUpsertWithoutPayementsInput<
          Input$TransactionsUpsertWithoutPayementsInput>
      get copyWith => CopyWith$Input$TransactionsUpsertWithoutPayementsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpsertWithoutPayementsInput) ||
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

abstract class CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> {
  factory CopyWith$Input$TransactionsUpsertWithoutPayementsInput(
    Input$TransactionsUpsertWithoutPayementsInput instance,
    TRes Function(Input$TransactionsUpsertWithoutPayementsInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpsertWithoutPayementsInput;

  factory CopyWith$Input$TransactionsUpsertWithoutPayementsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpsertWithoutPayementsInput;

  TRes call({
    Input$TransactionsUpdateWithoutPayementsInput? update,
    Input$TransactionsCreateWithoutPayementsInput? create,
  });
  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update;
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create;
}

class _CopyWithImpl$Input$TransactionsUpsertWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpsertWithoutPayementsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpsertWithoutPayementsInput _instance;

  final TRes Function(Input$TransactionsUpsertWithoutPayementsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$TransactionsUpsertWithoutPayementsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$TransactionsUpdateWithoutPayementsInput),
        if (create != _undefined && create != null)
          'create': (create as Input$TransactionsCreateWithoutPayementsInput),
      }));
  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$TransactionsUpdateWithoutPayementsInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$TransactionsCreateWithoutPayementsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpsertWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsUpsertWithoutPayementsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpsertWithoutPayementsInput(this._res);

  TRes _res;

  call({
    Input$TransactionsUpdateWithoutPayementsInput? update,
    Input$TransactionsCreateWithoutPayementsInput? create,
  }) =>
      _res;
  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> get update =>
      CopyWith$Input$TransactionsUpdateWithoutPayementsInput.stub(_res);
  CopyWith$Input$TransactionsCreateWithoutPayementsInput<TRes> get create =>
      CopyWith$Input$TransactionsCreateWithoutPayementsInput.stub(_res);
}

class Input$TransactionsUpdateWithoutPayementsInput {
  factory Input$TransactionsUpdateWithoutPayementsInput({
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
  }) =>
      Input$TransactionsUpdateWithoutPayementsInput._({
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
      });

  Input$TransactionsUpdateWithoutPayementsInput._(this._$data);

  factory Input$TransactionsUpdateWithoutPayementsInput.fromJson(
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
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .fromJson((l$status as Map<String, dynamic>));
    }
    return Input$TransactionsUpdateWithoutPayementsInput._(result$data);
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
    return result$data;
  }

  CopyWith$Input$TransactionsUpdateWithoutPayementsInput<
          Input$TransactionsUpdateWithoutPayementsInput>
      get copyWith => CopyWith$Input$TransactionsUpdateWithoutPayementsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransactionsUpdateWithoutPayementsInput) ||
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
    ]);
  }
}

abstract class CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> {
  factory CopyWith$Input$TransactionsUpdateWithoutPayementsInput(
    Input$TransactionsUpdateWithoutPayementsInput instance,
    TRes Function(Input$TransactionsUpdateWithoutPayementsInput) then,
  ) = _CopyWithImpl$Input$TransactionsUpdateWithoutPayementsInput;

  factory CopyWith$Input$TransactionsUpdateWithoutPayementsInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$TransactionsUpdateWithoutPayementsInput;

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
  });
  CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get seller;
  CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get city;
  CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
      TRes> get transaction_type;
  CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
      TRes> get status;
}

class _CopyWithImpl$Input$TransactionsUpdateWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> {
  _CopyWithImpl$Input$TransactionsUpdateWithoutPayementsInput(
    this._instance,
    this._then,
  );

  final Input$TransactionsUpdateWithoutPayementsInput _instance;

  final TRes Function(Input$TransactionsUpdateWithoutPayementsInput) _then;

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
  }) =>
      _then(Input$TransactionsUpdateWithoutPayementsInput._({
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
      }));
  CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get seller {
    final local$seller = _instance.seller;
    return local$seller == null
        ? CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput(
            local$seller, (e) => call(seller: e));
  }

  CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput(
            local$city, (e) => call(city: e));
  }

  CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
      TRes> get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return local$transaction_type == null
        ? CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput(
            local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
      TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
            .stub(_then(_instance))
        : CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput(
            local$status, (e) => call(status: e));
  }
}

class _CopyWithStubImpl$Input$TransactionsUpdateWithoutPayementsInput<TRes>
    implements CopyWith$Input$TransactionsUpdateWithoutPayementsInput<TRes> {
  _CopyWithStubImpl$Input$TransactionsUpdateWithoutPayementsInput(this._res);

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
  }) =>
      _res;
  CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get seller =>
          CopyWith$Input$SellersUpdateOneRequiredWithoutTransactionsNestedInput
              .stub(_res);
  CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<TRes>
      get city =>
          CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput
              .stub(_res);
  CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput<
          TRes>
      get transaction_type =>
          CopyWith$Input$TransactionTypesUpdateOneRequiredWithoutTransactionsNestedInput
              .stub(_res);
  CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput<
          TRes>
      get status =>
          CopyWith$Input$TransactionStatusUpdateOneRequiredWithoutTransactionsNestedInput
              .stub(_res);
}

class Input$CityUpdateOneRequiredWithoutTransactionsNestedInput {
  factory Input$CityUpdateOneRequiredWithoutTransactionsNestedInput({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityUpsertWithoutTransactionsInput? upsert,
    Input$CityWhereUniqueInput? connect,
    Input$CityUpdateWithoutTransactionsInput? update,
  }) =>
      Input$CityUpdateOneRequiredWithoutTransactionsNestedInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (upsert != null) r'upsert': upsert,
        if (connect != null) r'connect': connect,
        if (update != null) r'update': update,
      });

  Input$CityUpdateOneRequiredWithoutTransactionsNestedInput._(this._$data);

  factory Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('create')) {
      final l$create = data['create'];
      result$data['create'] = l$create == null
          ? null
          : Input$CityCreateWithoutTransactionsInput.fromJson(
              (l$create as Map<String, dynamic>));
    }
    if (data.containsKey('connectOrCreate')) {
      final l$connectOrCreate = data['connectOrCreate'];
      result$data['connectOrCreate'] = l$connectOrCreate == null
          ? null
          : Input$CityCreateOrConnectWithoutTransactionsInput.fromJson(
              (l$connectOrCreate as Map<String, dynamic>));
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = l$upsert == null
          ? null
          : Input$CityUpsertWithoutTransactionsInput.fromJson(
              (l$upsert as Map<String, dynamic>));
    }
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = l$connect == null
          ? null
          : Input$CityWhereUniqueInput.fromJson(
              (l$connect as Map<String, dynamic>));
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = l$update == null
          ? null
          : Input$CityUpdateWithoutTransactionsInput.fromJson(
              (l$update as Map<String, dynamic>));
    }
    return Input$CityUpdateOneRequiredWithoutTransactionsNestedInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityCreateWithoutTransactionsInput? get create =>
      (_$data['create'] as Input$CityCreateWithoutTransactionsInput?);
  Input$CityCreateOrConnectWithoutTransactionsInput? get connectOrCreate =>
      (_$data['connectOrCreate']
          as Input$CityCreateOrConnectWithoutTransactionsInput?);
  Input$CityUpsertWithoutTransactionsInput? get upsert =>
      (_$data['upsert'] as Input$CityUpsertWithoutTransactionsInput?);
  Input$CityWhereUniqueInput? get connect =>
      (_$data['connect'] as Input$CityWhereUniqueInput?);
  Input$CityUpdateWithoutTransactionsInput? get update =>
      (_$data['update'] as Input$CityUpdateWithoutTransactionsInput?);
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

  CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
          Input$CityUpdateOneRequiredWithoutTransactionsNestedInput>
      get copyWith =>
          CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityUpdateOneRequiredWithoutTransactionsNestedInput) ||
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

abstract class CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
    TRes> {
  factory CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput(
    Input$CityUpdateOneRequiredWithoutTransactionsNestedInput instance,
    TRes Function(Input$CityUpdateOneRequiredWithoutTransactionsNestedInput)
        then,
  ) = _CopyWithImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput;

  factory CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput;

  TRes call({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityUpsertWithoutTransactionsInput? upsert,
    Input$CityWhereUniqueInput? connect,
    Input$CityUpdateWithoutTransactionsInput? update,
  });
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create;
  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate;
  CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> get upsert;
  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update;
}

class _CopyWithImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput(
    this._instance,
    this._then,
  );

  final Input$CityUpdateOneRequiredWithoutTransactionsNestedInput _instance;

  final TRes Function(Input$CityUpdateOneRequiredWithoutTransactionsNestedInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? upsert = _undefined,
    Object? connect = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$CityUpdateOneRequiredWithoutTransactionsNestedInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as Input$CityCreateWithoutTransactionsInput?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as Input$CityCreateOrConnectWithoutTransactionsInput?),
        if (upsert != _undefined)
          'upsert': (upsert as Input$CityUpsertWithoutTransactionsInput?),
        if (connect != _undefined)
          'connect': (connect as Input$CityWhereUniqueInput?),
        if (update != _undefined)
          'update': (update as Input$CityUpdateWithoutTransactionsInput?),
      }));
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return local$create == null
        ? CopyWith$Input$CityCreateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityCreateWithoutTransactionsInput(
            local$create, (e) => call(create: e));
  }

  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate {
    final local$connectOrCreate = _instance.connectOrCreate;
    return local$connectOrCreate == null
        ? CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput(
            local$connectOrCreate, (e) => call(connectOrCreate: e));
  }

  CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> get upsert {
    final local$upsert = _instance.upsert;
    return local$upsert == null
        ? CopyWith$Input$CityUpsertWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityUpsertWithoutTransactionsInput(
            local$upsert, (e) => call(upsert: e));
  }

  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update {
    final local$update = _instance.update;
    return local$update == null
        ? CopyWith$Input$CityUpdateWithoutTransactionsInput.stub(
            _then(_instance))
        : CopyWith$Input$CityUpdateWithoutTransactionsInput(
            local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
        TRes>
    implements
        CopyWith$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput<
            TRes> {
  _CopyWithStubImpl$Input$CityUpdateOneRequiredWithoutTransactionsNestedInput(
      this._res);

  TRes _res;

  call({
    Input$CityCreateWithoutTransactionsInput? create,
    Input$CityCreateOrConnectWithoutTransactionsInput? connectOrCreate,
    Input$CityUpsertWithoutTransactionsInput? upsert,
    Input$CityWhereUniqueInput? connect,
    Input$CityUpdateWithoutTransactionsInput? update,
  }) =>
      _res;
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$CityCreateWithoutTransactionsInput.stub(_res);
  CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput<TRes>
      get connectOrCreate =>
          CopyWith$Input$CityCreateOrConnectWithoutTransactionsInput.stub(_res);
  CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> get upsert =>
      CopyWith$Input$CityUpsertWithoutTransactionsInput.stub(_res);
  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update =>
      CopyWith$Input$CityUpdateWithoutTransactionsInput.stub(_res);
}

class Input$CityUpsertWithoutTransactionsInput {
  factory Input$CityUpsertWithoutTransactionsInput({
    required Input$CityUpdateWithoutTransactionsInput update,
    required Input$CityCreateWithoutTransactionsInput create,
  }) =>
      Input$CityUpsertWithoutTransactionsInput._({
        r'update': update,
        r'create': create,
      });

  Input$CityUpsertWithoutTransactionsInput._(this._$data);

  factory Input$CityUpsertWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$update = data['update'];
    result$data['update'] = Input$CityUpdateWithoutTransactionsInput.fromJson(
        (l$update as Map<String, dynamic>));
    final l$create = data['create'];
    result$data['create'] = Input$CityCreateWithoutTransactionsInput.fromJson(
        (l$create as Map<String, dynamic>));
    return Input$CityUpsertWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CityUpdateWithoutTransactionsInput get update =>
      (_$data['update'] as Input$CityUpdateWithoutTransactionsInput);
  Input$CityCreateWithoutTransactionsInput get create =>
      (_$data['create'] as Input$CityCreateWithoutTransactionsInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$update = update;
    result$data['update'] = l$update.toJson();
    final l$create = create;
    result$data['create'] = l$create.toJson();
    return result$data;
  }

  CopyWith$Input$CityUpsertWithoutTransactionsInput<
          Input$CityUpsertWithoutTransactionsInput>
      get copyWith => CopyWith$Input$CityUpsertWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityUpsertWithoutTransactionsInput) ||
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

abstract class CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$CityUpsertWithoutTransactionsInput(
    Input$CityUpsertWithoutTransactionsInput instance,
    TRes Function(Input$CityUpsertWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$CityUpsertWithoutTransactionsInput;

  factory CopyWith$Input$CityUpsertWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityUpsertWithoutTransactionsInput;

  TRes call({
    Input$CityUpdateWithoutTransactionsInput? update,
    Input$CityCreateWithoutTransactionsInput? create,
  });
  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update;
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create;
}

class _CopyWithImpl$Input$CityUpsertWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$CityUpsertWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$CityUpsertWithoutTransactionsInput _instance;

  final TRes Function(Input$CityUpsertWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update = _undefined,
    Object? create = _undefined,
  }) =>
      _then(Input$CityUpsertWithoutTransactionsInput._({
        ..._instance._$data,
        if (update != _undefined && update != null)
          'update': (update as Input$CityUpdateWithoutTransactionsInput),
        if (create != _undefined && create != null)
          'create': (create as Input$CityCreateWithoutTransactionsInput),
      }));
  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$CityUpdateWithoutTransactionsInput(
        local$update, (e) => call(update: e));
  }

  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create {
    final local$create = _instance.create;
    return CopyWith$Input$CityCreateWithoutTransactionsInput(
        local$create, (e) => call(create: e));
  }
}

class _CopyWithStubImpl$Input$CityUpsertWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityUpsertWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$CityUpsertWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    Input$CityUpdateWithoutTransactionsInput? update,
    Input$CityCreateWithoutTransactionsInput? create,
  }) =>
      _res;
  CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> get update =>
      CopyWith$Input$CityUpdateWithoutTransactionsInput.stub(_res);
  CopyWith$Input$CityCreateWithoutTransactionsInput<TRes> get create =>
      CopyWith$Input$CityCreateWithoutTransactionsInput.stub(_res);
}

class Input$CityUpdateWithoutTransactionsInput {
  factory Input$CityUpdateWithoutTransactionsInput({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  }) =>
      Input$CityUpdateWithoutTransactionsInput._({
        if (city_id != null) r'city_id': city_id,
        if (city_name != null) r'city_name': city_name,
      });

  Input$CityUpdateWithoutTransactionsInput._(this._$data);

  factory Input$CityUpdateWithoutTransactionsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = l$city_id == null
          ? null
          : Input$IntFieldUpdateOperationsInput.fromJson(
              (l$city_id as Map<String, dynamic>));
    }
    if (data.containsKey('city_name')) {
      final l$city_name = data['city_name'];
      result$data['city_name'] = l$city_name == null
          ? null
          : Input$StringFieldUpdateOperationsInput.fromJson(
              (l$city_name as Map<String, dynamic>));
    }
    return Input$CityUpdateWithoutTransactionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IntFieldUpdateOperationsInput? get city_id =>
      (_$data['city_id'] as Input$IntFieldUpdateOperationsInput?);
  Input$StringFieldUpdateOperationsInput? get city_name =>
      (_$data['city_name'] as Input$StringFieldUpdateOperationsInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id?.toJson();
    }
    if (_$data.containsKey('city_name')) {
      final l$city_name = city_name;
      result$data['city_name'] = l$city_name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CityUpdateWithoutTransactionsInput<
          Input$CityUpdateWithoutTransactionsInput>
      get copyWith => CopyWith$Input$CityUpdateWithoutTransactionsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CityUpdateWithoutTransactionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$city_name = city_name;
    final lOther$city_name = other.city_name;
    if (_$data.containsKey('city_name') !=
        other._$data.containsKey('city_name')) {
      return false;
    }
    if (l$city_name != lOther$city_name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    return Object.hashAll([
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('city_name') ? l$city_name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> {
  factory CopyWith$Input$CityUpdateWithoutTransactionsInput(
    Input$CityUpdateWithoutTransactionsInput instance,
    TRes Function(Input$CityUpdateWithoutTransactionsInput) then,
  ) = _CopyWithImpl$Input$CityUpdateWithoutTransactionsInput;

  factory CopyWith$Input$CityUpdateWithoutTransactionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CityUpdateWithoutTransactionsInput;

  TRes call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  });
}

class _CopyWithImpl$Input$CityUpdateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> {
  _CopyWithImpl$Input$CityUpdateWithoutTransactionsInput(
    this._instance,
    this._then,
  );

  final Input$CityUpdateWithoutTransactionsInput _instance;

  final TRes Function(Input$CityUpdateWithoutTransactionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
  }) =>
      _then(Input$CityUpdateWithoutTransactionsInput._({
        ..._instance._$data,
        if (city_id != _undefined)
          'city_id': (city_id as Input$IntFieldUpdateOperationsInput?),
        if (city_name != _undefined)
          'city_name': (city_name as Input$StringFieldUpdateOperationsInput?),
      }));
}

class _CopyWithStubImpl$Input$CityUpdateWithoutTransactionsInput<TRes>
    implements CopyWith$Input$CityUpdateWithoutTransactionsInput<TRes> {
  _CopyWithStubImpl$Input$CityUpdateWithoutTransactionsInput(this._res);

  TRes _res;

  call({
    Input$IntFieldUpdateOperationsInput? city_id,
    Input$StringFieldUpdateOperationsInput? city_name,
  }) =>
      _res;
}

class Input$ProductFamilyCreateInput {
  factory Input$ProductFamilyCreateInput({
    required String name,
    Input$ProductsCreateNestedManyWithoutFamilyInput? Products,
  }) =>
      Input$ProductFamilyCreateInput._({
        r'name': name,
        if (Products != null) r'Products': Products,
      });

  Input$ProductFamilyCreateInput._(this._$data);

  factory Input$ProductFamilyCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('Products')) {
      final l$Products = data['Products'];
      result$data['Products'] = l$Products == null
          ? null
          : Input$ProductsCreateNestedManyWithoutFamilyInput.fromJson(
              (l$Products as Map<String, dynamic>));
    }
    return Input$ProductFamilyCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Input$ProductsCreateNestedManyWithoutFamilyInput? get Products =>
      (_$data['Products'] as Input$ProductsCreateNestedManyWithoutFamilyInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('Products')) {
      final l$Products = Products;
      result$data['Products'] = l$Products?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ProductFamilyCreateInput<Input$ProductFamilyCreateInput>
      get copyWith => CopyWith$Input$ProductFamilyCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductFamilyCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
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
      l$name,
      _$data.containsKey('Products') ? l$Products : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductFamilyCreateInput<TRes> {
  factory CopyWith$Input$ProductFamilyCreateInput(
    Input$ProductFamilyCreateInput instance,
    TRes Function(Input$ProductFamilyCreateInput) then,
  ) = _CopyWithImpl$Input$ProductFamilyCreateInput;

  factory CopyWith$Input$ProductFamilyCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFamilyCreateInput;

  TRes call({
    String? name,
    Input$ProductsCreateNestedManyWithoutFamilyInput? Products,
  });
  CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes> get Products;
}

class _CopyWithImpl$Input$ProductFamilyCreateInput<TRes>
    implements CopyWith$Input$ProductFamilyCreateInput<TRes> {
  _CopyWithImpl$Input$ProductFamilyCreateInput(
    this._instance,
    this._then,
  );

  final Input$ProductFamilyCreateInput _instance;

  final TRes Function(Input$ProductFamilyCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? Products = _undefined,
  }) =>
      _then(Input$ProductFamilyCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (Products != _undefined)
          'Products':
              (Products as Input$ProductsCreateNestedManyWithoutFamilyInput?),
      }));
  CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes> get Products {
    final local$Products = _instance.Products;
    return local$Products == null
        ? CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput.stub(
            _then(_instance))
        : CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput(
            local$Products, (e) => call(Products: e));
  }
}

class _CopyWithStubImpl$Input$ProductFamilyCreateInput<TRes>
    implements CopyWith$Input$ProductFamilyCreateInput<TRes> {
  _CopyWithStubImpl$Input$ProductFamilyCreateInput(this._res);

  TRes _res;

  call({
    String? name,
    Input$ProductsCreateNestedManyWithoutFamilyInput? Products,
  }) =>
      _res;
  CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes>
      get Products =>
          CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput.stub(_res);
}

class Input$ProductsCreateNestedManyWithoutFamilyInput {
  factory Input$ProductsCreateNestedManyWithoutFamilyInput({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsWhereUniqueInput>? connect,
  }) =>
      Input$ProductsCreateNestedManyWithoutFamilyInput._({
        if (create != null) r'create': create,
        if (connectOrCreate != null) r'connectOrCreate': connectOrCreate,
        if (connect != null) r'connect': connect,
      });

  Input$ProductsCreateNestedManyWithoutFamilyInput._(this._$data);

  factory Input$ProductsCreateNestedManyWithoutFamilyInput.fromJson(
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
    if (data.containsKey('connect')) {
      final l$connect = data['connect'];
      result$data['connect'] = (l$connect as List<dynamic>?)
          ?.map((e) => Input$ProductsWhereUniqueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ProductsCreateNestedManyWithoutFamilyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ProductsCreateWithoutFamilyInput>? get create =>
      (_$data['create'] as List<Input$ProductsCreateWithoutFamilyInput>?);
  List<Input$ProductsCreateOrConnectWithoutFamilyInput>? get connectOrCreate =>
      (_$data['connectOrCreate']
          as List<Input$ProductsCreateOrConnectWithoutFamilyInput>?);
  List<Input$ProductsWhereUniqueInput>? get connect =>
      (_$data['connect'] as List<Input$ProductsWhereUniqueInput>?);
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

  CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<
          Input$ProductsCreateNestedManyWithoutFamilyInput>
      get copyWith => CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProductsCreateNestedManyWithoutFamilyInput) ||
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

abstract class CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes> {
  factory CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput(
    Input$ProductsCreateNestedManyWithoutFamilyInput instance,
    TRes Function(Input$ProductsCreateNestedManyWithoutFamilyInput) then,
  ) = _CopyWithImpl$Input$ProductsCreateNestedManyWithoutFamilyInput;

  factory CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ProductsCreateNestedManyWithoutFamilyInput;

  TRes call({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsWhereUniqueInput>? connect,
  });
}

class _CopyWithImpl$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes> {
  _CopyWithImpl$Input$ProductsCreateNestedManyWithoutFamilyInput(
    this._instance,
    this._then,
  );

  final Input$ProductsCreateNestedManyWithoutFamilyInput _instance;

  final TRes Function(Input$ProductsCreateNestedManyWithoutFamilyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? create = _undefined,
    Object? connectOrCreate = _undefined,
    Object? connect = _undefined,
  }) =>
      _then(Input$ProductsCreateNestedManyWithoutFamilyInput._({
        ..._instance._$data,
        if (create != _undefined)
          'create': (create as List<Input$ProductsCreateWithoutFamilyInput>?),
        if (connectOrCreate != _undefined)
          'connectOrCreate': (connectOrCreate
              as List<Input$ProductsCreateOrConnectWithoutFamilyInput>?),
        if (connect != _undefined)
          'connect': (connect as List<Input$ProductsWhereUniqueInput>?),
      }));
}

class _CopyWithStubImpl$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes>
    implements CopyWith$Input$ProductsCreateNestedManyWithoutFamilyInput<TRes> {
  _CopyWithStubImpl$Input$ProductsCreateNestedManyWithoutFamilyInput(this._res);

  TRes _res;

  call({
    List<Input$ProductsCreateWithoutFamilyInput>? create,
    List<Input$ProductsCreateOrConnectWithoutFamilyInput>? connectOrCreate,
    List<Input$ProductsWhereUniqueInput>? connect,
  }) =>
      _res;
}
