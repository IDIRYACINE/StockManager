import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema2.graphql.dart';
import 'schema3.graphql.dart';
import 'schema4.graphql.dart';
import 'schema5.graphql.dart';
import 'schema7.graphql.dart';

class Variables$Mutation$CreateOneProductModel {
  factory Variables$Mutation$CreateOneProductModel(
          {required Input$ProductModelCreateInput data}) =>
      Variables$Mutation$CreateOneProductModel._({
        r'data': data,
      });

  Variables$Mutation$CreateOneProductModel._(this._$data);

  factory Variables$Mutation$CreateOneProductModel.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelCreateInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneProductModel._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelCreateInput get data =>
      (_$data['data'] as Input$ProductModelCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneProductModel<
          Variables$Mutation$CreateOneProductModel>
      get copyWith => CopyWith$Variables$Mutation$CreateOneProductModel(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneProductModel) ||
        runtimeType != other.runtimeType) {
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
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneProductModel<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneProductModel(
    Variables$Mutation$CreateOneProductModel instance,
    TRes Function(Variables$Mutation$CreateOneProductModel) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneProductModel;

  factory CopyWith$Variables$Mutation$CreateOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneProductModel;

  TRes call({Input$ProductModelCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProductModel<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneProductModel(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneProductModel _instance;

  final TRes Function(Variables$Mutation$CreateOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneProductModel._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProductModel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneProductModel(this._res);

  TRes _res;

  call({Input$ProductModelCreateInput? data}) => _res;
}

class Mutation$CreateOneProductModel {
  Mutation$CreateOneProductModel({
    required this.createOneProductModel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneProductModel.fromJson(Map<String, dynamic> json) {
    final l$createOneProductModel = json['createOneProductModel'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProductModel(
      createOneProductModel:
          Mutation$CreateOneProductModel$createOneProductModel.fromJson(
              (l$createOneProductModel as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneProductModel$createOneProductModel
      createOneProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneProductModel = createOneProductModel;
    _resultData['createOneProductModel'] = l$createOneProductModel.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneProductModel = createOneProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneProductModel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneProductModel = createOneProductModel;
    final lOther$createOneProductModel = other.createOneProductModel;
    if (l$createOneProductModel != lOther$createOneProductModel) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProductModel
    on Mutation$CreateOneProductModel {
  CopyWith$Mutation$CreateOneProductModel<Mutation$CreateOneProductModel>
      get copyWith => CopyWith$Mutation$CreateOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProductModel<TRes> {
  factory CopyWith$Mutation$CreateOneProductModel(
    Mutation$CreateOneProductModel instance,
    TRes Function(Mutation$CreateOneProductModel) then,
  ) = _CopyWithImpl$Mutation$CreateOneProductModel;

  factory CopyWith$Mutation$CreateOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProductModel;

  TRes call({
    Mutation$CreateOneProductModel$createOneProductModel? createOneProductModel,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneProductModel$createOneProductModel<TRes>
      get createOneProductModel;
}

class _CopyWithImpl$Mutation$CreateOneProductModel<TRes>
    implements CopyWith$Mutation$CreateOneProductModel<TRes> {
  _CopyWithImpl$Mutation$CreateOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProductModel _instance;

  final TRes Function(Mutation$CreateOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProductModel(
        createOneProductModel:
            createOneProductModel == _undefined || createOneProductModel == null
                ? _instance.createOneProductModel
                : (createOneProductModel
                    as Mutation$CreateOneProductModel$createOneProductModel),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneProductModel$createOneProductModel<TRes>
      get createOneProductModel {
    final local$createOneProductModel = _instance.createOneProductModel;
    return CopyWith$Mutation$CreateOneProductModel$createOneProductModel(
        local$createOneProductModel, (e) => call(createOneProductModel: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneProductModel<TRes>
    implements CopyWith$Mutation$CreateOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProductModel(this._res);

  TRes _res;

  call({
    Mutation$CreateOneProductModel$createOneProductModel? createOneProductModel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneProductModel$createOneProductModel<TRes>
      get createOneProductModel =>
          CopyWith$Mutation$CreateOneProductModel$createOneProductModel.stub(
              _res);
}

const documentNodeMutationCreateOneProductModel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneProductModel'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductModelCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneProductModel'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'size_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneProductModel _parserFn$Mutation$CreateOneProductModel(
        Map<String, dynamic> data) =>
    Mutation$CreateOneProductModel.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneProductModel = FutureOr<void>
    Function(
  dynamic,
  Mutation$CreateOneProductModel?,
);

class Options$Mutation$CreateOneProductModel
    extends graphql.MutationOptions<Mutation$CreateOneProductModel> {
  Options$Mutation$CreateOneProductModel({
    String? operationName,
    required Variables$Mutation$CreateOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneProductModel? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneProductModel>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneProductModel(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneProductModel,
          parserFn: _parserFn$Mutation$CreateOneProductModel,
        );

  final OnMutationCompleted$Mutation$CreateOneProductModel?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneProductModel
    extends graphql.WatchQueryOptions<Mutation$CreateOneProductModel> {
  WatchOptions$Mutation$CreateOneProductModel({
    String? operationName,
    required Variables$Mutation$CreateOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneProductModel,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneProductModel,
        );
}

extension ClientExtension$Mutation$CreateOneProductModel
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneProductModel>>
      mutate$CreateOneProductModel(
              Options$Mutation$CreateOneProductModel options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneProductModel>
      watchMutation$CreateOneProductModel(
              WatchOptions$Mutation$CreateOneProductModel options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneProductModel$createOneProductModel {
  Mutation$CreateOneProductModel$createOneProductModel({
    required this.size_id,
    required this.color_id,
    required this.product_id,
    this.$__typename = 'ProductModel',
  });

  factory Mutation$CreateOneProductModel$createOneProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$size_id = json['size_id'];
    final l$color_id = json['color_id'];
    final l$product_id = json['product_id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProductModel$createOneProductModel(
      size_id: (l$size_id as int),
      color_id: (l$color_id as int),
      product_id: (l$product_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int size_id;

  final int color_id;

  final int product_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size_id = size_id;
    _resultData['size_id'] = l$size_id;
    final l$color_id = color_id;
    _resultData['color_id'] = l$color_id;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size_id = size_id;
    final l$color_id = color_id;
    final l$product_id = product_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$size_id,
      l$color_id,
      l$product_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProductModel$createOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProductModel$createOneProductModel
    on Mutation$CreateOneProductModel$createOneProductModel {
  CopyWith$Mutation$CreateOneProductModel$createOneProductModel<
          Mutation$CreateOneProductModel$createOneProductModel>
      get copyWith =>
          CopyWith$Mutation$CreateOneProductModel$createOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProductModel$createOneProductModel<
    TRes> {
  factory CopyWith$Mutation$CreateOneProductModel$createOneProductModel(
    Mutation$CreateOneProductModel$createOneProductModel instance,
    TRes Function(Mutation$CreateOneProductModel$createOneProductModel) then,
  ) = _CopyWithImpl$Mutation$CreateOneProductModel$createOneProductModel;

  factory CopyWith$Mutation$CreateOneProductModel$createOneProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProductModel$createOneProductModel;

  TRes call({
    int? size_id,
    int? color_id,
    int? product_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneProductModel$createOneProductModel<TRes>
    implements
        CopyWith$Mutation$CreateOneProductModel$createOneProductModel<TRes> {
  _CopyWithImpl$Mutation$CreateOneProductModel$createOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProductModel$createOneProductModel _instance;

  final TRes Function(Mutation$CreateOneProductModel$createOneProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size_id = _undefined,
    Object? color_id = _undefined,
    Object? product_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProductModel$createOneProductModel(
        size_id: size_id == _undefined || size_id == null
            ? _instance.size_id
            : (size_id as int),
        color_id: color_id == _undefined || color_id == null
            ? _instance.color_id
            : (color_id as int),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneProductModel$createOneProductModel<
        TRes>
    implements
        CopyWith$Mutation$CreateOneProductModel$createOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProductModel$createOneProductModel(
      this._res);

  TRes _res;

  call({
    int? size_id,
    int? color_id,
    int? product_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneProducts {
  factory Variables$Mutation$CreateOneProducts(
          {required Input$ProductsCreateInput data}) =>
      Variables$Mutation$CreateOneProducts._({
        r'data': data,
      });

  Variables$Mutation$CreateOneProducts._(this._$data);

  factory Variables$Mutation$CreateOneProducts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$ProductsCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsCreateInput get data =>
      (_$data['data'] as Input$ProductsCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneProducts<
          Variables$Mutation$CreateOneProducts>
      get copyWith => CopyWith$Variables$Mutation$CreateOneProducts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneProducts) ||
        runtimeType != other.runtimeType) {
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
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneProducts<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneProducts(
    Variables$Mutation$CreateOneProducts instance,
    TRes Function(Variables$Mutation$CreateOneProducts) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneProducts;

  factory CopyWith$Variables$Mutation$CreateOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneProducts;

  TRes call({Input$ProductsCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneProducts<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProducts<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneProducts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneProducts _instance;

  final TRes Function(Variables$Mutation$CreateOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneProducts._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductsCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneProducts<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProducts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneProducts(this._res);

  TRes _res;

  call({Input$ProductsCreateInput? data}) => _res;
}

class Mutation$CreateOneProducts {
  Mutation$CreateOneProducts({
    required this.createOneProducts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneProducts.fromJson(Map<String, dynamic> json) {
    final l$createOneProducts = json['createOneProducts'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProducts(
      createOneProducts: Mutation$CreateOneProducts$createOneProducts.fromJson(
          (l$createOneProducts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneProducts$createOneProducts createOneProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneProducts = createOneProducts;
    _resultData['createOneProducts'] = l$createOneProducts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneProducts = createOneProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneProducts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneProducts = createOneProducts;
    final lOther$createOneProducts = other.createOneProducts;
    if (l$createOneProducts != lOther$createOneProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProducts
    on Mutation$CreateOneProducts {
  CopyWith$Mutation$CreateOneProducts<Mutation$CreateOneProducts>
      get copyWith => CopyWith$Mutation$CreateOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProducts<TRes> {
  factory CopyWith$Mutation$CreateOneProducts(
    Mutation$CreateOneProducts instance,
    TRes Function(Mutation$CreateOneProducts) then,
  ) = _CopyWithImpl$Mutation$CreateOneProducts;

  factory CopyWith$Mutation$CreateOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProducts;

  TRes call({
    Mutation$CreateOneProducts$createOneProducts? createOneProducts,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes>
      get createOneProducts;
}

class _CopyWithImpl$Mutation$CreateOneProducts<TRes>
    implements CopyWith$Mutation$CreateOneProducts<TRes> {
  _CopyWithImpl$Mutation$CreateOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProducts _instance;

  final TRes Function(Mutation$CreateOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProducts(
        createOneProducts:
            createOneProducts == _undefined || createOneProducts == null
                ? _instance.createOneProducts
                : (createOneProducts
                    as Mutation$CreateOneProducts$createOneProducts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes>
      get createOneProducts {
    final local$createOneProducts = _instance.createOneProducts;
    return CopyWith$Mutation$CreateOneProducts$createOneProducts(
        local$createOneProducts, (e) => call(createOneProducts: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneProducts<TRes>
    implements CopyWith$Mutation$CreateOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProducts(this._res);

  TRes _res;

  call({
    Mutation$CreateOneProducts$createOneProducts? createOneProducts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes>
      get createOneProducts =>
          CopyWith$Mutation$CreateOneProducts$createOneProducts.stub(_res);
}

const documentNodeMutationCreateOneProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneProducts _parserFn$Mutation$CreateOneProducts(
        Map<String, dynamic> data) =>
    Mutation$CreateOneProducts.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneProducts = FutureOr<void>
    Function(
  dynamic,
  Mutation$CreateOneProducts?,
);

class Options$Mutation$CreateOneProducts
    extends graphql.MutationOptions<Mutation$CreateOneProducts> {
  Options$Mutation$CreateOneProducts({
    String? operationName,
    required Variables$Mutation$CreateOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneProducts? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneProducts>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneProducts(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneProducts,
          parserFn: _parserFn$Mutation$CreateOneProducts,
        );

  final OnMutationCompleted$Mutation$CreateOneProducts? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneProducts
    extends graphql.WatchQueryOptions<Mutation$CreateOneProducts> {
  WatchOptions$Mutation$CreateOneProducts({
    String? operationName,
    required Variables$Mutation$CreateOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneProducts,
        );
}

extension ClientExtension$Mutation$CreateOneProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneProducts>>
      mutate$CreateOneProducts(
              Options$Mutation$CreateOneProducts options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneProducts>
      watchMutation$CreateOneProducts(
              WatchOptions$Mutation$CreateOneProducts options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneProducts$createOneProducts {
  Mutation$CreateOneProducts$createOneProducts({
    required this.product_id,
    this.$__typename = 'Products',
  });

  factory Mutation$CreateOneProducts$createOneProducts.fromJson(
      Map<String, dynamic> json) {
    final l$product_id = json['product_id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProducts$createOneProducts(
      product_id: (l$product_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int product_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProducts$createOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProducts$createOneProducts
    on Mutation$CreateOneProducts$createOneProducts {
  CopyWith$Mutation$CreateOneProducts$createOneProducts<
          Mutation$CreateOneProducts$createOneProducts>
      get copyWith => CopyWith$Mutation$CreateOneProducts$createOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes> {
  factory CopyWith$Mutation$CreateOneProducts$createOneProducts(
    Mutation$CreateOneProducts$createOneProducts instance,
    TRes Function(Mutation$CreateOneProducts$createOneProducts) then,
  ) = _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts;

  factory CopyWith$Mutation$CreateOneProducts$createOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts;

  TRes call({
    int? product_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts<TRes>
    implements CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes> {
  _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProducts$createOneProducts _instance;

  final TRes Function(Mutation$CreateOneProducts$createOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProducts$createOneProducts(
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts<TRes>
    implements CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts(this._res);

  TRes _res;

  call({
    int? product_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneProductModel {
  factory Variables$Mutation$DeleteOneProductModel(
          {required Input$ProductModelWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneProductModel._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneProductModel._(this._$data);

  factory Variables$Mutation$DeleteOneProductModel.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneProductModel._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneProductModel<
          Variables$Mutation$DeleteOneProductModel>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneProductModel(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneProductModel<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneProductModel(
    Variables$Mutation$DeleteOneProductModel instance,
    TRes Function(Variables$Mutation$DeleteOneProductModel) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneProductModel;

  factory CopyWith$Variables$Mutation$DeleteOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneProductModel;

  TRes call({Input$ProductModelWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProductModel<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneProductModel(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneProductModel _instance;

  final TRes Function(Variables$Mutation$DeleteOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneProductModel._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProductModel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneProductModel(this._res);

  TRes _res;

  call({Input$ProductModelWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneProductModel {
  Mutation$DeleteOneProductModel({
    this.deleteOneProductModel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneProductModel.fromJson(Map<String, dynamic> json) {
    final l$deleteOneProductModel = json['deleteOneProductModel'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProductModel(
      deleteOneProductModel: l$deleteOneProductModel == null
          ? null
          : Mutation$DeleteOneProductModel$deleteOneProductModel.fromJson(
              (l$deleteOneProductModel as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneProductModel$deleteOneProductModel?
      deleteOneProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneProductModel = deleteOneProductModel;
    _resultData['deleteOneProductModel'] = l$deleteOneProductModel?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneProductModel = deleteOneProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneProductModel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneProductModel = deleteOneProductModel;
    final lOther$deleteOneProductModel = other.deleteOneProductModel;
    if (l$deleteOneProductModel != lOther$deleteOneProductModel) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProductModel
    on Mutation$DeleteOneProductModel {
  CopyWith$Mutation$DeleteOneProductModel<Mutation$DeleteOneProductModel>
      get copyWith => CopyWith$Mutation$DeleteOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProductModel<TRes> {
  factory CopyWith$Mutation$DeleteOneProductModel(
    Mutation$DeleteOneProductModel instance,
    TRes Function(Mutation$DeleteOneProductModel) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProductModel;

  factory CopyWith$Mutation$DeleteOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProductModel;

  TRes call({
    Mutation$DeleteOneProductModel$deleteOneProductModel? deleteOneProductModel,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes>
      get deleteOneProductModel;
}

class _CopyWithImpl$Mutation$DeleteOneProductModel<TRes>
    implements CopyWith$Mutation$DeleteOneProductModel<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProductModel _instance;

  final TRes Function(Mutation$DeleteOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProductModel(
        deleteOneProductModel: deleteOneProductModel == _undefined
            ? _instance.deleteOneProductModel
            : (deleteOneProductModel
                as Mutation$DeleteOneProductModel$deleteOneProductModel?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes>
      get deleteOneProductModel {
    final local$deleteOneProductModel = _instance.deleteOneProductModel;
    return local$deleteOneProductModel == null
        ? CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel(
            local$deleteOneProductModel, (e) => call(deleteOneProductModel: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneProductModel<TRes>
    implements CopyWith$Mutation$DeleteOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProductModel(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneProductModel$deleteOneProductModel? deleteOneProductModel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes>
      get deleteOneProductModel =>
          CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel.stub(
              _res);
}

const documentNodeMutationDeleteOneProductModel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneProductModel'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductModelWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneProductModel'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneProductModel _parserFn$Mutation$DeleteOneProductModel(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneProductModel.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneProductModel = FutureOr<void>
    Function(
  dynamic,
  Mutation$DeleteOneProductModel?,
);

class Options$Mutation$DeleteOneProductModel
    extends graphql.MutationOptions<Mutation$DeleteOneProductModel> {
  Options$Mutation$DeleteOneProductModel({
    String? operationName,
    required Variables$Mutation$DeleteOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneProductModel? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneProductModel>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneProductModel(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneProductModel,
          parserFn: _parserFn$Mutation$DeleteOneProductModel,
        );

  final OnMutationCompleted$Mutation$DeleteOneProductModel?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneProductModel
    extends graphql.WatchQueryOptions<Mutation$DeleteOneProductModel> {
  WatchOptions$Mutation$DeleteOneProductModel({
    String? operationName,
    required Variables$Mutation$DeleteOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneProductModel,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneProductModel,
        );
}

extension ClientExtension$Mutation$DeleteOneProductModel
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneProductModel>>
      mutate$DeleteOneProductModel(
              Options$Mutation$DeleteOneProductModel options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneProductModel>
      watchMutation$DeleteOneProductModel(
              WatchOptions$Mutation$DeleteOneProductModel options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneProductModel$deleteOneProductModel {
  Mutation$DeleteOneProductModel$deleteOneProductModel({
    required this.product_id,
    this.$__typename = 'ProductModel',
  });

  factory Mutation$DeleteOneProductModel$deleteOneProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$product_id = json['product_id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProductModel$deleteOneProductModel(
      product_id: (l$product_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int product_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProductModel$deleteOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProductModel$deleteOneProductModel
    on Mutation$DeleteOneProductModel$deleteOneProductModel {
  CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<
          Mutation$DeleteOneProductModel$deleteOneProductModel>
      get copyWith =>
          CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<
    TRes> {
  factory CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel(
    Mutation$DeleteOneProductModel$deleteOneProductModel instance,
    TRes Function(Mutation$DeleteOneProductModel$deleteOneProductModel) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProductModel$deleteOneProductModel;

  factory CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProductModel$deleteOneProductModel;

  TRes call({
    int? product_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes>
    implements
        CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProductModel$deleteOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProductModel$deleteOneProductModel _instance;

  final TRes Function(Mutation$DeleteOneProductModel$deleteOneProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProductModel$deleteOneProductModel(
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneProductModel$deleteOneProductModel<
        TRes>
    implements
        CopyWith$Mutation$DeleteOneProductModel$deleteOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProductModel$deleteOneProductModel(
      this._res);

  TRes _res;

  call({
    int? product_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneProducts {
  factory Variables$Mutation$DeleteOneProducts(
          {required Input$ProductsWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneProducts._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneProducts._(this._$data);

  factory Variables$Mutation$DeleteOneProducts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneProducts<
          Variables$Mutation$DeleteOneProducts>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneProducts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneProducts<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneProducts(
    Variables$Mutation$DeleteOneProducts instance,
    TRes Function(Variables$Mutation$DeleteOneProducts) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneProducts;

  factory CopyWith$Variables$Mutation$DeleteOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneProducts;

  TRes call({Input$ProductsWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneProducts<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProducts<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneProducts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneProducts _instance;

  final TRes Function(Variables$Mutation$DeleteOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneProducts._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneProducts<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProducts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneProducts(this._res);

  TRes _res;

  call({Input$ProductsWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneProducts {
  Mutation$DeleteOneProducts({
    this.deleteOneProducts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneProducts.fromJson(Map<String, dynamic> json) {
    final l$deleteOneProducts = json['deleteOneProducts'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProducts(
      deleteOneProducts: l$deleteOneProducts == null
          ? null
          : Mutation$DeleteOneProducts$deleteOneProducts.fromJson(
              (l$deleteOneProducts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneProducts$deleteOneProducts? deleteOneProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneProducts = deleteOneProducts;
    _resultData['deleteOneProducts'] = l$deleteOneProducts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneProducts = deleteOneProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneProducts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneProducts = deleteOneProducts;
    final lOther$deleteOneProducts = other.deleteOneProducts;
    if (l$deleteOneProducts != lOther$deleteOneProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProducts
    on Mutation$DeleteOneProducts {
  CopyWith$Mutation$DeleteOneProducts<Mutation$DeleteOneProducts>
      get copyWith => CopyWith$Mutation$DeleteOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProducts<TRes> {
  factory CopyWith$Mutation$DeleteOneProducts(
    Mutation$DeleteOneProducts instance,
    TRes Function(Mutation$DeleteOneProducts) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProducts;

  factory CopyWith$Mutation$DeleteOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProducts;

  TRes call({
    Mutation$DeleteOneProducts$deleteOneProducts? deleteOneProducts,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes>
      get deleteOneProducts;
}

class _CopyWithImpl$Mutation$DeleteOneProducts<TRes>
    implements CopyWith$Mutation$DeleteOneProducts<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProducts _instance;

  final TRes Function(Mutation$DeleteOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProducts(
        deleteOneProducts: deleteOneProducts == _undefined
            ? _instance.deleteOneProducts
            : (deleteOneProducts
                as Mutation$DeleteOneProducts$deleteOneProducts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes>
      get deleteOneProducts {
    final local$deleteOneProducts = _instance.deleteOneProducts;
    return local$deleteOneProducts == null
        ? CopyWith$Mutation$DeleteOneProducts$deleteOneProducts.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneProducts$deleteOneProducts(
            local$deleteOneProducts, (e) => call(deleteOneProducts: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneProducts<TRes>
    implements CopyWith$Mutation$DeleteOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProducts(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneProducts$deleteOneProducts? deleteOneProducts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes>
      get deleteOneProducts =>
          CopyWith$Mutation$DeleteOneProducts$deleteOneProducts.stub(_res);
}

const documentNodeMutationDeleteOneProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneProducts _parserFn$Mutation$DeleteOneProducts(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneProducts.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneProducts = FutureOr<void>
    Function(
  dynamic,
  Mutation$DeleteOneProducts?,
);

class Options$Mutation$DeleteOneProducts
    extends graphql.MutationOptions<Mutation$DeleteOneProducts> {
  Options$Mutation$DeleteOneProducts({
    String? operationName,
    required Variables$Mutation$DeleteOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneProducts? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneProducts>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneProducts(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneProducts,
          parserFn: _parserFn$Mutation$DeleteOneProducts,
        );

  final OnMutationCompleted$Mutation$DeleteOneProducts? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneProducts
    extends graphql.WatchQueryOptions<Mutation$DeleteOneProducts> {
  WatchOptions$Mutation$DeleteOneProducts({
    String? operationName,
    required Variables$Mutation$DeleteOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneProducts,
        );
}

extension ClientExtension$Mutation$DeleteOneProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneProducts>>
      mutate$DeleteOneProducts(
              Options$Mutation$DeleteOneProducts options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneProducts>
      watchMutation$DeleteOneProducts(
              WatchOptions$Mutation$DeleteOneProducts options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneProducts$deleteOneProducts {
  Mutation$DeleteOneProducts$deleteOneProducts({
    required this.product_id,
    this.$__typename = 'Products',
  });

  factory Mutation$DeleteOneProducts$deleteOneProducts.fromJson(
      Map<String, dynamic> json) {
    final l$product_id = json['product_id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProducts$deleteOneProducts(
      product_id: (l$product_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int product_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProducts$deleteOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProducts$deleteOneProducts
    on Mutation$DeleteOneProducts$deleteOneProducts {
  CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<
          Mutation$DeleteOneProducts$deleteOneProducts>
      get copyWith => CopyWith$Mutation$DeleteOneProducts$deleteOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes> {
  factory CopyWith$Mutation$DeleteOneProducts$deleteOneProducts(
    Mutation$DeleteOneProducts$deleteOneProducts instance,
    TRes Function(Mutation$DeleteOneProducts$deleteOneProducts) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProducts$deleteOneProducts;

  factory CopyWith$Mutation$DeleteOneProducts$deleteOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProducts$deleteOneProducts;

  TRes call({
    int? product_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneProducts$deleteOneProducts<TRes>
    implements CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProducts$deleteOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProducts$deleteOneProducts _instance;

  final TRes Function(Mutation$DeleteOneProducts$deleteOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProducts$deleteOneProducts(
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneProducts$deleteOneProducts<TRes>
    implements CopyWith$Mutation$DeleteOneProducts$deleteOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProducts$deleteOneProducts(this._res);

  TRes _res;

  call({
    int? product_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindManyProducts {
  factory Variables$Query$FindManyProducts({Input$ProductsWhereInput? where}) =>
      Variables$Query$FindManyProducts._({
        if (where != null) r'where': where,
      });

  Variables$Query$FindManyProducts._(this._$data);

  factory Variables$Query$FindManyProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ProductsWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$FindManyProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereInput? get where =>
      (_$data['where'] as Input$ProductsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindManyProducts<Variables$Query$FindManyProducts>
      get copyWith => CopyWith$Variables$Query$FindManyProducts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindManyProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindManyProducts<TRes> {
  factory CopyWith$Variables$Query$FindManyProducts(
    Variables$Query$FindManyProducts instance,
    TRes Function(Variables$Query$FindManyProducts) then,
  ) = _CopyWithImpl$Variables$Query$FindManyProducts;

  factory CopyWith$Variables$Query$FindManyProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindManyProducts;

  TRes call({Input$ProductsWhereInput? where});
}

class _CopyWithImpl$Variables$Query$FindManyProducts<TRes>
    implements CopyWith$Variables$Query$FindManyProducts<TRes> {
  _CopyWithImpl$Variables$Query$FindManyProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$FindManyProducts _instance;

  final TRes Function(Variables$Query$FindManyProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$FindManyProducts._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$ProductsWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindManyProducts<TRes>
    implements CopyWith$Variables$Query$FindManyProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$FindManyProducts(this._res);

  TRes _res;

  call({Input$ProductsWhereInput? where}) => _res;
}

class Query$FindManyProducts {
  Query$FindManyProducts({
    required this.findManyProducts,
    this.$__typename = 'Query',
  });

  factory Query$FindManyProducts.fromJson(Map<String, dynamic> json) {
    final l$findManyProducts = json['findManyProducts'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts(
      findManyProducts: (l$findManyProducts as List<dynamic>)
          .map((e) => Query$FindManyProducts$findManyProducts.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindManyProducts$findManyProducts> findManyProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManyProducts = findManyProducts;
    _resultData['findManyProducts'] =
        l$findManyProducts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManyProducts = findManyProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManyProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManyProducts = findManyProducts;
    final lOther$findManyProducts = other.findManyProducts;
    if (l$findManyProducts.length != lOther$findManyProducts.length) {
      return false;
    }
    for (int i = 0; i < l$findManyProducts.length; i++) {
      final l$findManyProducts$entry = l$findManyProducts[i];
      final lOther$findManyProducts$entry = lOther$findManyProducts[i];
      if (l$findManyProducts$entry != lOther$findManyProducts$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts on Query$FindManyProducts {
  CopyWith$Query$FindManyProducts<Query$FindManyProducts> get copyWith =>
      CopyWith$Query$FindManyProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindManyProducts<TRes> {
  factory CopyWith$Query$FindManyProducts(
    Query$FindManyProducts instance,
    TRes Function(Query$FindManyProducts) then,
  ) = _CopyWithImpl$Query$FindManyProducts;

  factory CopyWith$Query$FindManyProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts;

  TRes call({
    List<Query$FindManyProducts$findManyProducts>? findManyProducts,
    String? $__typename,
  });
  TRes findManyProducts(
      Iterable<Query$FindManyProducts$findManyProducts> Function(
              Iterable<
                  CopyWith$Query$FindManyProducts$findManyProducts<
                      Query$FindManyProducts$findManyProducts>>)
          _fn);
}

class _CopyWithImpl$Query$FindManyProducts<TRes>
    implements CopyWith$Query$FindManyProducts<TRes> {
  _CopyWithImpl$Query$FindManyProducts(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts _instance;

  final TRes Function(Query$FindManyProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManyProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts(
        findManyProducts:
            findManyProducts == _undefined || findManyProducts == null
                ? _instance.findManyProducts
                : (findManyProducts
                    as List<Query$FindManyProducts$findManyProducts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManyProducts(
          Iterable<Query$FindManyProducts$findManyProducts> Function(
                  Iterable<
                      CopyWith$Query$FindManyProducts$findManyProducts<
                          Query$FindManyProducts$findManyProducts>>)
              _fn) =>
      call(
          findManyProducts: _fn(_instance.findManyProducts
              .map((e) => CopyWith$Query$FindManyProducts$findManyProducts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindManyProducts<TRes>
    implements CopyWith$Query$FindManyProducts<TRes> {
  _CopyWithStubImpl$Query$FindManyProducts(this._res);

  TRes _res;

  call({
    List<Query$FindManyProducts$findManyProducts>? findManyProducts,
    String? $__typename,
  }) =>
      _res;
  findManyProducts(_fn) => _res;
}

const documentNodeQueryFindManyProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindManyProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManyProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'buyingPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'reference'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sellingPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'ProductModel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'size_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'size'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'size'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindManyProducts _parserFn$Query$FindManyProducts(
        Map<String, dynamic> data) =>
    Query$FindManyProducts.fromJson(data);

class Options$Query$FindManyProducts
    extends graphql.QueryOptions<Query$FindManyProducts> {
  Options$Query$FindManyProducts({
    String? operationName,
    Variables$Query$FindManyProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindManyProducts,
          parserFn: _parserFn$Query$FindManyProducts,
        );
}

class WatchOptions$Query$FindManyProducts
    extends graphql.WatchQueryOptions<Query$FindManyProducts> {
  WatchOptions$Query$FindManyProducts({
    String? operationName,
    Variables$Query$FindManyProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindManyProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindManyProducts,
        );
}

class FetchMoreOptions$Query$FindManyProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindManyProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindManyProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindManyProducts,
        );
}

extension ClientExtension$Query$FindManyProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindManyProducts>> query$FindManyProducts(
          [Options$Query$FindManyProducts? options]) async =>
      await this.query(options ?? Options$Query$FindManyProducts());
  graphql.ObservableQuery<Query$FindManyProducts> watchQuery$FindManyProducts(
          [WatchOptions$Query$FindManyProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindManyProducts());
  void writeQuery$FindManyProducts({
    required Query$FindManyProducts data,
    Variables$Query$FindManyProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindManyProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindManyProducts? readQuery$FindManyProducts({
    Variables$Query$FindManyProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFindManyProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindManyProducts.fromJson(result);
  }
}

class Query$FindManyProducts$findManyProducts {
  Query$FindManyProducts$findManyProducts({
    required this.buyingPrice,
    required this.description,
    required this.name,
    required this.picture,
    required this.product_id,
    required this.reference,
    required this.sellingPrice,
    required this.family_id,
    required this.family,
    required this.ProductModel,
    this.$__typename = 'Products',
  });

  factory Query$FindManyProducts$findManyProducts.fromJson(
      Map<String, dynamic> json) {
    final l$buyingPrice = json['buyingPrice'];
    final l$description = json['description'];
    final l$name = json['name'];
    final l$picture = json['picture'];
    final l$product_id = json['product_id'];
    final l$reference = json['reference'];
    final l$sellingPrice = json['sellingPrice'];
    final l$family_id = json['family_id'];
    final l$family = json['family'];
    final l$ProductModel = json['ProductModel'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts$findManyProducts(
      buyingPrice: (l$buyingPrice as num).toDouble(),
      description: (l$description as String),
      name: (l$name as String),
      picture: (l$picture as String),
      product_id: (l$product_id as int),
      reference: (l$reference as int),
      sellingPrice: (l$sellingPrice as num).toDouble(),
      family_id: (l$family_id as int),
      family: Query$FindManyProducts$findManyProducts$family.fromJson(
          (l$family as Map<String, dynamic>)),
      ProductModel: (l$ProductModel as List<dynamic>)
          .map((e) =>
              Query$FindManyProducts$findManyProducts$ProductModel.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double buyingPrice;

  final String description;

  final String name;

  final String picture;

  final int product_id;

  final int reference;

  final double sellingPrice;

  final int family_id;

  final Query$FindManyProducts$findManyProducts$family family;

  final List<Query$FindManyProducts$findManyProducts$ProductModel> ProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyingPrice = buyingPrice;
    _resultData['buyingPrice'] = l$buyingPrice;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$sellingPrice = sellingPrice;
    _resultData['sellingPrice'] = l$sellingPrice;
    final l$family_id = family_id;
    _resultData['family_id'] = l$family_id;
    final l$family = family;
    _resultData['family'] = l$family.toJson();
    final l$ProductModel = ProductModel;
    _resultData['ProductModel'] =
        l$ProductModel.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buyingPrice = buyingPrice;
    final l$description = description;
    final l$name = name;
    final l$picture = picture;
    final l$product_id = product_id;
    final l$reference = reference;
    final l$sellingPrice = sellingPrice;
    final l$family_id = family_id;
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buyingPrice,
      l$description,
      l$name,
      l$picture,
      l$product_id,
      l$reference,
      l$sellingPrice,
      l$family_id,
      l$family,
      Object.hashAll(l$ProductModel.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyProducts$findManyProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (l$family_id != lOther$family_id) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (l$ProductModel.length != lOther$ProductModel.length) {
      return false;
    }
    for (int i = 0; i < l$ProductModel.length; i++) {
      final l$ProductModel$entry = l$ProductModel[i];
      final lOther$ProductModel$entry = lOther$ProductModel[i];
      if (l$ProductModel$entry != lOther$ProductModel$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts$findManyProducts
    on Query$FindManyProducts$findManyProducts {
  CopyWith$Query$FindManyProducts$findManyProducts<
          Query$FindManyProducts$findManyProducts>
      get copyWith => CopyWith$Query$FindManyProducts$findManyProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyProducts$findManyProducts<TRes> {
  factory CopyWith$Query$FindManyProducts$findManyProducts(
    Query$FindManyProducts$findManyProducts instance,
    TRes Function(Query$FindManyProducts$findManyProducts) then,
  ) = _CopyWithImpl$Query$FindManyProducts$findManyProducts;

  factory CopyWith$Query$FindManyProducts$findManyProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts$findManyProducts;

  TRes call({
    double? buyingPrice,
    String? description,
    String? name,
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    int? family_id,
    Query$FindManyProducts$findManyProducts$family? family,
    List<Query$FindManyProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  });
  CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> get family;
  TRes ProductModel(
      Iterable<Query$FindManyProducts$findManyProducts$ProductModel> Function(
              Iterable<
                  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<
                      Query$FindManyProducts$findManyProducts$ProductModel>>)
          _fn);
}

class _CopyWithImpl$Query$FindManyProducts$findManyProducts<TRes>
    implements CopyWith$Query$FindManyProducts$findManyProducts<TRes> {
  _CopyWithImpl$Query$FindManyProducts$findManyProducts(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts$findManyProducts _instance;

  final TRes Function(Query$FindManyProducts$findManyProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buyingPrice = _undefined,
    Object? description = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? sellingPrice = _undefined,
    Object? family_id = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts$findManyProducts(
        buyingPrice: buyingPrice == _undefined || buyingPrice == null
            ? _instance.buyingPrice
            : (buyingPrice as double),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        reference: reference == _undefined || reference == null
            ? _instance.reference
            : (reference as int),
        sellingPrice: sellingPrice == _undefined || sellingPrice == null
            ? _instance.sellingPrice
            : (sellingPrice as double),
        family_id: family_id == _undefined || family_id == null
            ? _instance.family_id
            : (family_id as int),
        family: family == _undefined || family == null
            ? _instance.family
            : (family as Query$FindManyProducts$findManyProducts$family),
        ProductModel: ProductModel == _undefined || ProductModel == null
            ? _instance.ProductModel
            : (ProductModel
                as List<Query$FindManyProducts$findManyProducts$ProductModel>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> get family {
    final local$family = _instance.family;
    return CopyWith$Query$FindManyProducts$findManyProducts$family(
        local$family, (e) => call(family: e));
  }

  TRes ProductModel(
          Iterable<Query$FindManyProducts$findManyProducts$ProductModel> Function(
                  Iterable<
                      CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<
                          Query$FindManyProducts$findManyProducts$ProductModel>>)
              _fn) =>
      call(
          ProductModel: _fn(_instance.ProductModel.map((e) =>
              CopyWith$Query$FindManyProducts$findManyProducts$ProductModel(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindManyProducts$findManyProducts<TRes>
    implements CopyWith$Query$FindManyProducts$findManyProducts<TRes> {
  _CopyWithStubImpl$Query$FindManyProducts$findManyProducts(this._res);

  TRes _res;

  call({
    double? buyingPrice,
    String? description,
    String? name,
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    int? family_id,
    Query$FindManyProducts$findManyProducts$family? family,
    List<Query$FindManyProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> get family =>
      CopyWith$Query$FindManyProducts$findManyProducts$family.stub(_res);
  ProductModel(_fn) => _res;
}

class Query$FindManyProducts$findManyProducts$family {
  Query$FindManyProducts$findManyProducts$family({
    required this.name,
    this.$__typename = 'ProductFamily',
  });

  factory Query$FindManyProducts$findManyProducts$family.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts$findManyProducts$family(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyProducts$findManyProducts$family) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts$findManyProducts$family
    on Query$FindManyProducts$findManyProducts$family {
  CopyWith$Query$FindManyProducts$findManyProducts$family<
          Query$FindManyProducts$findManyProducts$family>
      get copyWith => CopyWith$Query$FindManyProducts$findManyProducts$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> {
  factory CopyWith$Query$FindManyProducts$findManyProducts$family(
    Query$FindManyProducts$findManyProducts$family instance,
    TRes Function(Query$FindManyProducts$findManyProducts$family) then,
  ) = _CopyWithImpl$Query$FindManyProducts$findManyProducts$family;

  factory CopyWith$Query$FindManyProducts$findManyProducts$family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$family;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyProducts$findManyProducts$family<TRes>
    implements CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> {
  _CopyWithImpl$Query$FindManyProducts$findManyProducts$family(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts$findManyProducts$family _instance;

  final TRes Function(Query$FindManyProducts$findManyProducts$family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts$findManyProducts$family(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$family<TRes>
    implements CopyWith$Query$FindManyProducts$findManyProducts$family<TRes> {
  _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$family(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindManyProducts$findManyProducts$ProductModel {
  Query$FindManyProducts$findManyProducts$ProductModel({
    required this.size_id,
    required this.color_id,
    required this.quantity,
    required this.color,
    required this.size,
    this.$__typename = 'ProductModel',
  });

  factory Query$FindManyProducts$findManyProducts$ProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$size_id = json['size_id'];
    final l$color_id = json['color_id'];
    final l$quantity = json['quantity'];
    final l$color = json['color'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts$findManyProducts$ProductModel(
      size_id: (l$size_id as int),
      color_id: (l$color_id as int),
      quantity: (l$quantity as int),
      color:
          Query$FindManyProducts$findManyProducts$ProductModel$color.fromJson(
              (l$color as Map<String, dynamic>)),
      size: Query$FindManyProducts$findManyProducts$ProductModel$size.fromJson(
          (l$size as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int size_id;

  final int color_id;

  final int quantity;

  final Query$FindManyProducts$findManyProducts$ProductModel$color color;

  final Query$FindManyProducts$findManyProducts$ProductModel$size size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size_id = size_id;
    _resultData['size_id'] = l$size_id;
    final l$color_id = color_id;
    _resultData['color_id'] = l$color_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$color = color;
    _resultData['color'] = l$color.toJson();
    final l$size = size;
    _resultData['size'] = l$size.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size_id = size_id;
    final l$color_id = color_id;
    final l$quantity = quantity;
    final l$color = color;
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$size_id,
      l$color_id,
      l$quantity,
      l$color,
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyProducts$findManyProducts$ProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts$findManyProducts$ProductModel
    on Query$FindManyProducts$findManyProducts$ProductModel {
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<
          Query$FindManyProducts$findManyProducts$ProductModel>
      get copyWith =>
          CopyWith$Query$FindManyProducts$findManyProducts$ProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<
    TRes> {
  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel(
    Query$FindManyProducts$findManyProducts$ProductModel instance,
    TRes Function(Query$FindManyProducts$findManyProducts$ProductModel) then,
  ) = _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel;

  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel;

  TRes call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$FindManyProducts$findManyProducts$ProductModel$color? color,
    Query$FindManyProducts$findManyProducts$ProductModel$size? size,
    String? $__typename,
  });
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<TRes>
      get color;
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<TRes>
      get size;
}

class _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel<TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<TRes> {
  _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts$findManyProducts$ProductModel _instance;

  final TRes Function(Query$FindManyProducts$findManyProducts$ProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size_id = _undefined,
    Object? color_id = _undefined,
    Object? quantity = _undefined,
    Object? color = _undefined,
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts$findManyProducts$ProductModel(
        size_id: size_id == _undefined || size_id == null
            ? _instance.size_id
            : (size_id as int),
        color_id: color_id == _undefined || color_id == null
            ? _instance.color_id
            : (color_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color
                as Query$FindManyProducts$findManyProducts$ProductModel$color),
        size: size == _undefined || size == null
            ? _instance.size
            : (size
                as Query$FindManyProducts$findManyProducts$ProductModel$size),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<TRes>
      get color {
    final local$color = _instance.color;
    return CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color(
        local$color, (e) => call(color: e));
  }

  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<TRes>
      get size {
    final local$size = _instance.size;
    return CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size(
        local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel<
        TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel<TRes> {
  _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel(
      this._res);

  TRes _res;

  call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$FindManyProducts$findManyProducts$ProductModel$color? color,
    Query$FindManyProducts$findManyProducts$ProductModel$size? size,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<TRes>
      get color =>
          CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color
              .stub(_res);
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<TRes>
      get size =>
          CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size
              .stub(_res);
}

class Query$FindManyProducts$findManyProducts$ProductModel$color {
  Query$FindManyProducts$findManyProducts$ProductModel$color({
    required this.color,
    this.$__typename = 'Colors',
  });

  factory Query$FindManyProducts$findManyProducts$ProductModel$color.fromJson(
      Map<String, dynamic> json) {
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts$findManyProducts$ProductModel$color(
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindManyProducts$findManyProducts$ProductModel$color) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts$findManyProducts$ProductModel$color
    on Query$FindManyProducts$findManyProducts$ProductModel$color {
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<
          Query$FindManyProducts$findManyProducts$ProductModel$color>
      get copyWith =>
          CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<
    TRes> {
  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color(
    Query$FindManyProducts$findManyProducts$ProductModel$color instance,
    TRes Function(Query$FindManyProducts$findManyProducts$ProductModel$color)
        then,
  ) = _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$color;

  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$color;

  TRes call({
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<
            TRes> {
  _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$color(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts$findManyProducts$ProductModel$color _instance;

  final TRes Function(
      Query$FindManyProducts$findManyProducts$ProductModel$color) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts$findManyProducts$ProductModel$color(
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$color<
            TRes> {
  _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$color(
      this._res);

  TRes _res;

  call({
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindManyProducts$findManyProducts$ProductModel$size {
  Query$FindManyProducts$findManyProducts$ProductModel$size({
    required this.size,
    this.$__typename = 'Sizes',
  });

  factory Query$FindManyProducts$findManyProducts$ProductModel$size.fromJson(
      Map<String, dynamic> json) {
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$FindManyProducts$findManyProducts$ProductModel$size(
      size: (l$size as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size = size;
    _resultData['size'] = l$size;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyProducts$findManyProducts$ProductModel$size) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyProducts$findManyProducts$ProductModel$size
    on Query$FindManyProducts$findManyProducts$ProductModel$size {
  CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<
          Query$FindManyProducts$findManyProducts$ProductModel$size>
      get copyWith =>
          CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<
    TRes> {
  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size(
    Query$FindManyProducts$findManyProducts$ProductModel$size instance,
    TRes Function(Query$FindManyProducts$findManyProducts$ProductModel$size)
        then,
  ) = _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$size;

  factory CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$size;

  TRes call({
    String? size,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<
            TRes> {
  _CopyWithImpl$Query$FindManyProducts$findManyProducts$ProductModel$size(
    this._instance,
    this._then,
  );

  final Query$FindManyProducts$findManyProducts$ProductModel$size _instance;

  final TRes Function(Query$FindManyProducts$findManyProducts$ProductModel$size)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyProducts$findManyProducts$ProductModel$size(
        size: size == _undefined || size == null
            ? _instance.size
            : (size as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$FindManyProducts$findManyProducts$ProductModel$size<
            TRes> {
  _CopyWithStubImpl$Query$FindManyProducts$findManyProducts$ProductModel$size(
      this._res);

  TRes _res;

  call({
    String? size,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindFirstProducts {
  factory Variables$Query$FindFirstProducts(
          {Input$ProductsWhereInput? where}) =>
      Variables$Query$FindFirstProducts._({
        if (where != null) r'where': where,
      });

  Variables$Query$FindFirstProducts._(this._$data);

  factory Variables$Query$FindFirstProducts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ProductsWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$FindFirstProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsWhereInput? get where =>
      (_$data['where'] as Input$ProductsWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindFirstProducts<Variables$Query$FindFirstProducts>
      get copyWith => CopyWith$Variables$Query$FindFirstProducts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindFirstProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindFirstProducts<TRes> {
  factory CopyWith$Variables$Query$FindFirstProducts(
    Variables$Query$FindFirstProducts instance,
    TRes Function(Variables$Query$FindFirstProducts) then,
  ) = _CopyWithImpl$Variables$Query$FindFirstProducts;

  factory CopyWith$Variables$Query$FindFirstProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindFirstProducts;

  TRes call({Input$ProductsWhereInput? where});
}

class _CopyWithImpl$Variables$Query$FindFirstProducts<TRes>
    implements CopyWith$Variables$Query$FindFirstProducts<TRes> {
  _CopyWithImpl$Variables$Query$FindFirstProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$FindFirstProducts _instance;

  final TRes Function(Variables$Query$FindFirstProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$FindFirstProducts._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$ProductsWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindFirstProducts<TRes>
    implements CopyWith$Variables$Query$FindFirstProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$FindFirstProducts(this._res);

  TRes _res;

  call({Input$ProductsWhereInput? where}) => _res;
}

class Query$FindFirstProducts {
  Query$FindFirstProducts({
    this.findFirstProducts,
    this.$__typename = 'Query',
  });

  factory Query$FindFirstProducts.fromJson(Map<String, dynamic> json) {
    final l$findFirstProducts = json['findFirstProducts'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts(
      findFirstProducts: l$findFirstProducts == null
          ? null
          : Query$FindFirstProducts$findFirstProducts.fromJson(
              (l$findFirstProducts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindFirstProducts$findFirstProducts? findFirstProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findFirstProducts = findFirstProducts;
    _resultData['findFirstProducts'] = l$findFirstProducts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findFirstProducts = findFirstProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findFirstProducts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findFirstProducts = findFirstProducts;
    final lOther$findFirstProducts = other.findFirstProducts;
    if (l$findFirstProducts != lOther$findFirstProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts on Query$FindFirstProducts {
  CopyWith$Query$FindFirstProducts<Query$FindFirstProducts> get copyWith =>
      CopyWith$Query$FindFirstProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindFirstProducts<TRes> {
  factory CopyWith$Query$FindFirstProducts(
    Query$FindFirstProducts instance,
    TRes Function(Query$FindFirstProducts) then,
  ) = _CopyWithImpl$Query$FindFirstProducts;

  factory CopyWith$Query$FindFirstProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts;

  TRes call({
    Query$FindFirstProducts$findFirstProducts? findFirstProducts,
    String? $__typename,
  });
  CopyWith$Query$FindFirstProducts$findFirstProducts<TRes>
      get findFirstProducts;
}

class _CopyWithImpl$Query$FindFirstProducts<TRes>
    implements CopyWith$Query$FindFirstProducts<TRes> {
  _CopyWithImpl$Query$FindFirstProducts(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts _instance;

  final TRes Function(Query$FindFirstProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findFirstProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts(
        findFirstProducts: findFirstProducts == _undefined
            ? _instance.findFirstProducts
            : (findFirstProducts as Query$FindFirstProducts$findFirstProducts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstProducts$findFirstProducts<TRes>
      get findFirstProducts {
    final local$findFirstProducts = _instance.findFirstProducts;
    return local$findFirstProducts == null
        ? CopyWith$Query$FindFirstProducts$findFirstProducts.stub(
            _then(_instance))
        : CopyWith$Query$FindFirstProducts$findFirstProducts(
            local$findFirstProducts, (e) => call(findFirstProducts: e));
  }
}

class _CopyWithStubImpl$Query$FindFirstProducts<TRes>
    implements CopyWith$Query$FindFirstProducts<TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts(this._res);

  TRes _res;

  call({
    Query$FindFirstProducts$findFirstProducts? findFirstProducts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstProducts$findFirstProducts<TRes>
      get findFirstProducts =>
          CopyWith$Query$FindFirstProducts$findFirstProducts.stub(_res);
}

const documentNodeQueryFindFirstProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindFirstProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findFirstProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'reference'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sellingPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyingPrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'ProductModel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'size_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'size'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'size'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindFirstProducts _parserFn$Query$FindFirstProducts(
        Map<String, dynamic> data) =>
    Query$FindFirstProducts.fromJson(data);

class Options$Query$FindFirstProducts
    extends graphql.QueryOptions<Query$FindFirstProducts> {
  Options$Query$FindFirstProducts({
    String? operationName,
    Variables$Query$FindFirstProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindFirstProducts,
          parserFn: _parserFn$Query$FindFirstProducts,
        );
}

class WatchOptions$Query$FindFirstProducts
    extends graphql.WatchQueryOptions<Query$FindFirstProducts> {
  WatchOptions$Query$FindFirstProducts({
    String? operationName,
    Variables$Query$FindFirstProducts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindFirstProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindFirstProducts,
        );
}

class FetchMoreOptions$Query$FindFirstProducts
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindFirstProducts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindFirstProducts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindFirstProducts,
        );
}

extension ClientExtension$Query$FindFirstProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindFirstProducts>> query$FindFirstProducts(
          [Options$Query$FindFirstProducts? options]) async =>
      await this.query(options ?? Options$Query$FindFirstProducts());
  graphql.ObservableQuery<Query$FindFirstProducts> watchQuery$FindFirstProducts(
          [WatchOptions$Query$FindFirstProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindFirstProducts());
  void writeQuery$FindFirstProducts({
    required Query$FindFirstProducts data,
    Variables$Query$FindFirstProducts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindFirstProducts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindFirstProducts? readQuery$FindFirstProducts({
    Variables$Query$FindFirstProducts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFindFirstProducts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindFirstProducts.fromJson(result);
  }
}

class Query$FindFirstProducts$findFirstProducts {
  Query$FindFirstProducts$findFirstProducts({
    required this.picture,
    required this.product_id,
    required this.reference,
    required this.sellingPrice,
    required this.name,
    required this.family_id,
    required this.description,
    required this.buyingPrice,
    required this.family,
    required this.ProductModel,
    this.$__typename = 'Products',
  });

  factory Query$FindFirstProducts$findFirstProducts.fromJson(
      Map<String, dynamic> json) {
    final l$picture = json['picture'];
    final l$product_id = json['product_id'];
    final l$reference = json['reference'];
    final l$sellingPrice = json['sellingPrice'];
    final l$name = json['name'];
    final l$family_id = json['family_id'];
    final l$description = json['description'];
    final l$buyingPrice = json['buyingPrice'];
    final l$family = json['family'];
    final l$ProductModel = json['ProductModel'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts$findFirstProducts(
      picture: (l$picture as String),
      product_id: (l$product_id as int),
      reference: (l$reference as int),
      sellingPrice: (l$sellingPrice as num).toDouble(),
      name: (l$name as String),
      family_id: (l$family_id as int),
      description: (l$description as String),
      buyingPrice: (l$buyingPrice as num).toDouble(),
      family: Query$FindFirstProducts$findFirstProducts$family.fromJson(
          (l$family as Map<String, dynamic>)),
      ProductModel: (l$ProductModel as List<dynamic>)
          .map((e) =>
              Query$FindFirstProducts$findFirstProducts$ProductModel.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String picture;

  final int product_id;

  final int reference;

  final double sellingPrice;

  final String name;

  final int family_id;

  final String description;

  final double buyingPrice;

  final Query$FindFirstProducts$findFirstProducts$family family;

  final List<Query$FindFirstProducts$findFirstProducts$ProductModel>
      ProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$sellingPrice = sellingPrice;
    _resultData['sellingPrice'] = l$sellingPrice;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$family_id = family_id;
    _resultData['family_id'] = l$family_id;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$buyingPrice = buyingPrice;
    _resultData['buyingPrice'] = l$buyingPrice;
    final l$family = family;
    _resultData['family'] = l$family.toJson();
    final l$ProductModel = ProductModel;
    _resultData['ProductModel'] =
        l$ProductModel.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$product_id = product_id;
    final l$reference = reference;
    final l$sellingPrice = sellingPrice;
    final l$name = name;
    final l$family_id = family_id;
    final l$description = description;
    final l$buyingPrice = buyingPrice;
    final l$family = family;
    final l$ProductModel = ProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$picture,
      l$product_id,
      l$reference,
      l$sellingPrice,
      l$name,
      l$family_id,
      l$description,
      l$buyingPrice,
      l$family,
      Object.hashAll(l$ProductModel.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstProducts$findFirstProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$sellingPrice = sellingPrice;
    final lOther$sellingPrice = other.sellingPrice;
    if (l$sellingPrice != lOther$sellingPrice) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (l$family_id != lOther$family_id) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$buyingPrice = buyingPrice;
    final lOther$buyingPrice = other.buyingPrice;
    if (l$buyingPrice != lOther$buyingPrice) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$ProductModel = ProductModel;
    final lOther$ProductModel = other.ProductModel;
    if (l$ProductModel.length != lOther$ProductModel.length) {
      return false;
    }
    for (int i = 0; i < l$ProductModel.length; i++) {
      final l$ProductModel$entry = l$ProductModel[i];
      final lOther$ProductModel$entry = lOther$ProductModel[i];
      if (l$ProductModel$entry != lOther$ProductModel$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts$findFirstProducts
    on Query$FindFirstProducts$findFirstProducts {
  CopyWith$Query$FindFirstProducts$findFirstProducts<
          Query$FindFirstProducts$findFirstProducts>
      get copyWith => CopyWith$Query$FindFirstProducts$findFirstProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstProducts$findFirstProducts<TRes> {
  factory CopyWith$Query$FindFirstProducts$findFirstProducts(
    Query$FindFirstProducts$findFirstProducts instance,
    TRes Function(Query$FindFirstProducts$findFirstProducts) then,
  ) = _CopyWithImpl$Query$FindFirstProducts$findFirstProducts;

  factory CopyWith$Query$FindFirstProducts$findFirstProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts;

  TRes call({
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    String? name,
    int? family_id,
    String? description,
    double? buyingPrice,
    Query$FindFirstProducts$findFirstProducts$family? family,
    List<Query$FindFirstProducts$findFirstProducts$ProductModel>? ProductModel,
    String? $__typename,
  });
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family;
  TRes ProductModel(
      Iterable<Query$FindFirstProducts$findFirstProducts$ProductModel> Function(
              Iterable<
                  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<
                      Query$FindFirstProducts$findFirstProducts$ProductModel>>)
          _fn);
}

class _CopyWithImpl$Query$FindFirstProducts$findFirstProducts<TRes>
    implements CopyWith$Query$FindFirstProducts$findFirstProducts<TRes> {
  _CopyWithImpl$Query$FindFirstProducts$findFirstProducts(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts$findFirstProducts _instance;

  final TRes Function(Query$FindFirstProducts$findFirstProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? sellingPrice = _undefined,
    Object? name = _undefined,
    Object? family_id = _undefined,
    Object? description = _undefined,
    Object? buyingPrice = _undefined,
    Object? family = _undefined,
    Object? ProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts$findFirstProducts(
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        reference: reference == _undefined || reference == null
            ? _instance.reference
            : (reference as int),
        sellingPrice: sellingPrice == _undefined || sellingPrice == null
            ? _instance.sellingPrice
            : (sellingPrice as double),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        family_id: family_id == _undefined || family_id == null
            ? _instance.family_id
            : (family_id as int),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        buyingPrice: buyingPrice == _undefined || buyingPrice == null
            ? _instance.buyingPrice
            : (buyingPrice as double),
        family: family == _undefined || family == null
            ? _instance.family
            : (family as Query$FindFirstProducts$findFirstProducts$family),
        ProductModel: ProductModel == _undefined || ProductModel == null
            ? _instance.ProductModel
            : (ProductModel as List<
                Query$FindFirstProducts$findFirstProducts$ProductModel>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family {
    final local$family = _instance.family;
    return CopyWith$Query$FindFirstProducts$findFirstProducts$family(
        local$family, (e) => call(family: e));
  }

  TRes ProductModel(
          Iterable<Query$FindFirstProducts$findFirstProducts$ProductModel> Function(
                  Iterable<
                      CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<
                          Query$FindFirstProducts$findFirstProducts$ProductModel>>)
              _fn) =>
      call(
          ProductModel: _fn(_instance.ProductModel.map((e) =>
              CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts<TRes>
    implements CopyWith$Query$FindFirstProducts$findFirstProducts<TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts(this._res);

  TRes _res;

  call({
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    String? name,
    int? family_id,
    String? description,
    double? buyingPrice,
    Query$FindFirstProducts$findFirstProducts$family? family,
    List<Query$FindFirstProducts$findFirstProducts$ProductModel>? ProductModel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family =>
      CopyWith$Query$FindFirstProducts$findFirstProducts$family.stub(_res);
  ProductModel(_fn) => _res;
}

class Query$FindFirstProducts$findFirstProducts$family {
  Query$FindFirstProducts$findFirstProducts$family({
    required this.name,
    this.$__typename = 'ProductFamily',
  });

  factory Query$FindFirstProducts$findFirstProducts$family.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts$findFirstProducts$family(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstProducts$findFirstProducts$family) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts$findFirstProducts$family
    on Query$FindFirstProducts$findFirstProducts$family {
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<
          Query$FindFirstProducts$findFirstProducts$family>
      get copyWith => CopyWith$Query$FindFirstProducts$findFirstProducts$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> {
  factory CopyWith$Query$FindFirstProducts$findFirstProducts$family(
    Query$FindFirstProducts$findFirstProducts$family instance,
    TRes Function(Query$FindFirstProducts$findFirstProducts$family) then,
  ) = _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$family;

  factory CopyWith$Query$FindFirstProducts$findFirstProducts$family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$family;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$family<TRes>
    implements CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> {
  _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$family(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts$findFirstProducts$family _instance;

  final TRes Function(Query$FindFirstProducts$findFirstProducts$family) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts$findFirstProducts$family(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$family<TRes>
    implements CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$family(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstProducts$findFirstProducts$ProductModel {
  Query$FindFirstProducts$findFirstProducts$ProductModel({
    required this.size_id,
    required this.color_id,
    required this.quantity,
    required this.color,
    required this.size,
    this.$__typename = 'ProductModel',
  });

  factory Query$FindFirstProducts$findFirstProducts$ProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$size_id = json['size_id'];
    final l$color_id = json['color_id'];
    final l$quantity = json['quantity'];
    final l$color = json['color'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts$findFirstProducts$ProductModel(
      size_id: (l$size_id as int),
      color_id: (l$color_id as int),
      quantity: (l$quantity as int),
      color:
          Query$FindFirstProducts$findFirstProducts$ProductModel$color.fromJson(
              (l$color as Map<String, dynamic>)),
      size:
          Query$FindFirstProducts$findFirstProducts$ProductModel$size.fromJson(
              (l$size as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int size_id;

  final int color_id;

  final int quantity;

  final Query$FindFirstProducts$findFirstProducts$ProductModel$color color;

  final Query$FindFirstProducts$findFirstProducts$ProductModel$size size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size_id = size_id;
    _resultData['size_id'] = l$size_id;
    final l$color_id = color_id;
    _resultData['color_id'] = l$color_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$color = color;
    _resultData['color'] = l$color.toJson();
    final l$size = size;
    _resultData['size'] = l$size.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size_id = size_id;
    final l$color_id = color_id;
    final l$quantity = quantity;
    final l$color = color;
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$size_id,
      l$color_id,
      l$quantity,
      l$color,
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindFirstProducts$findFirstProducts$ProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts$findFirstProducts$ProductModel
    on Query$FindFirstProducts$findFirstProducts$ProductModel {
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<
          Query$FindFirstProducts$findFirstProducts$ProductModel>
      get copyWith =>
          CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<
    TRes> {
  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel(
    Query$FindFirstProducts$findFirstProducts$ProductModel instance,
    TRes Function(Query$FindFirstProducts$findFirstProducts$ProductModel) then,
  ) = _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel;

  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel;

  TRes call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$FindFirstProducts$findFirstProducts$ProductModel$color? color,
    Query$FindFirstProducts$findFirstProducts$ProductModel$size? size,
    String? $__typename,
  });
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<TRes>
      get color;
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<TRes>
      get size;
}

class _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel<TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<TRes> {
  _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts$findFirstProducts$ProductModel _instance;

  final TRes Function(Query$FindFirstProducts$findFirstProducts$ProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size_id = _undefined,
    Object? color_id = _undefined,
    Object? quantity = _undefined,
    Object? color = _undefined,
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts$findFirstProducts$ProductModel(
        size_id: size_id == _undefined || size_id == null
            ? _instance.size_id
            : (size_id as int),
        color_id: color_id == _undefined || color_id == null
            ? _instance.color_id
            : (color_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color
                as Query$FindFirstProducts$findFirstProducts$ProductModel$color),
        size: size == _undefined || size == null
            ? _instance.size
            : (size
                as Query$FindFirstProducts$findFirstProducts$ProductModel$size),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<TRes>
      get color {
    final local$color = _instance.color;
    return CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color(
        local$color, (e) => call(color: e));
  }

  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<TRes>
      get size {
    final local$size = _instance.size;
    return CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size(
        local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel<
        TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel<TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel(
      this._res);

  TRes _res;

  call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$FindFirstProducts$findFirstProducts$ProductModel$color? color,
    Query$FindFirstProducts$findFirstProducts$ProductModel$size? size,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<TRes>
      get color =>
          CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color
              .stub(_res);
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<TRes>
      get size =>
          CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size
              .stub(_res);
}

class Query$FindFirstProducts$findFirstProducts$ProductModel$color {
  Query$FindFirstProducts$findFirstProducts$ProductModel$color({
    required this.color,
    this.$__typename = 'Colors',
  });

  factory Query$FindFirstProducts$findFirstProducts$ProductModel$color.fromJson(
      Map<String, dynamic> json) {
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts$findFirstProducts$ProductModel$color(
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindFirstProducts$findFirstProducts$ProductModel$color) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts$findFirstProducts$ProductModel$color
    on Query$FindFirstProducts$findFirstProducts$ProductModel$color {
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
          Query$FindFirstProducts$findFirstProducts$ProductModel$color>
      get copyWith =>
          CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
    TRes> {
  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color(
    Query$FindFirstProducts$findFirstProducts$ProductModel$color instance,
    TRes Function(Query$FindFirstProducts$findFirstProducts$ProductModel$color)
        then,
  ) = _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color;

  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color;

  TRes call({
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
            TRes> {
  _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts$findFirstProducts$ProductModel$color _instance;

  final TRes Function(
      Query$FindFirstProducts$findFirstProducts$ProductModel$color) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts$findFirstProducts$ProductModel$color(
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$color<
            TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$color(
      this._res);

  TRes _res;

  call({
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindFirstProducts$findFirstProducts$ProductModel$size {
  Query$FindFirstProducts$findFirstProducts$ProductModel$size({
    required this.size,
    this.$__typename = 'Sizes',
  });

  factory Query$FindFirstProducts$findFirstProducts$ProductModel$size.fromJson(
      Map<String, dynamic> json) {
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$FindFirstProducts$findFirstProducts$ProductModel$size(
      size: (l$size as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$size = size;
    _resultData['size'] = l$size;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindFirstProducts$findFirstProducts$ProductModel$size) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindFirstProducts$findFirstProducts$ProductModel$size
    on Query$FindFirstProducts$findFirstProducts$ProductModel$size {
  CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
          Query$FindFirstProducts$findFirstProducts$ProductModel$size>
      get copyWith =>
          CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
    TRes> {
  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size(
    Query$FindFirstProducts$findFirstProducts$ProductModel$size instance,
    TRes Function(Query$FindFirstProducts$findFirstProducts$ProductModel$size)
        then,
  ) = _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size;

  factory CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size;

  TRes call({
    String? size,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
            TRes> {
  _CopyWithImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size(
    this._instance,
    this._then,
  );

  final Query$FindFirstProducts$findFirstProducts$ProductModel$size _instance;

  final TRes Function(
      Query$FindFirstProducts$findFirstProducts$ProductModel$size) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindFirstProducts$findFirstProducts$ProductModel$size(
        size: size == _undefined || size == null
            ? _instance.size
            : (size as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$FindFirstProducts$findFirstProducts$ProductModel$size<
            TRes> {
  _CopyWithStubImpl$Query$FindFirstProducts$findFirstProducts$ProductModel$size(
      this._res);

  TRes _res;

  call({
    String? size,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneProducts {
  factory Variables$Mutation$UpdateOneProducts({
    required Input$ProductsUpdateInput data,
    required Input$ProductsWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneProducts._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneProducts._(this._$data);

  factory Variables$Mutation$UpdateOneProducts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$ProductsUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$ProductsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsUpdateInput get data =>
      (_$data['data'] as Input$ProductsUpdateInput);
  Input$ProductsWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductsWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneProducts<
          Variables$Mutation$UpdateOneProducts>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneProducts(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneProducts<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneProducts(
    Variables$Mutation$UpdateOneProducts instance,
    TRes Function(Variables$Mutation$UpdateOneProducts) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneProducts;

  factory CopyWith$Variables$Mutation$UpdateOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneProducts;

  TRes call({
    Input$ProductsUpdateInput? data,
    Input$ProductsWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneProducts<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProducts<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneProducts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneProducts _instance;

  final TRes Function(Variables$Mutation$UpdateOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneProducts._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductsUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$ProductsWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneProducts<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProducts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneProducts(this._res);

  TRes _res;

  call({
    Input$ProductsUpdateInput? data,
    Input$ProductsWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneProducts {
  Mutation$UpdateOneProducts({
    this.updateOneProducts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneProducts.fromJson(Map<String, dynamic> json) {
    final l$updateOneProducts = json['updateOneProducts'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProducts(
      updateOneProducts: l$updateOneProducts == null
          ? null
          : Mutation$UpdateOneProducts$updateOneProducts.fromJson(
              (l$updateOneProducts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneProducts$updateOneProducts? updateOneProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneProducts = updateOneProducts;
    _resultData['updateOneProducts'] = l$updateOneProducts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneProducts = updateOneProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneProducts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneProducts = updateOneProducts;
    final lOther$updateOneProducts = other.updateOneProducts;
    if (l$updateOneProducts != lOther$updateOneProducts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProducts
    on Mutation$UpdateOneProducts {
  CopyWith$Mutation$UpdateOneProducts<Mutation$UpdateOneProducts>
      get copyWith => CopyWith$Mutation$UpdateOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProducts<TRes> {
  factory CopyWith$Mutation$UpdateOneProducts(
    Mutation$UpdateOneProducts instance,
    TRes Function(Mutation$UpdateOneProducts) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProducts;

  factory CopyWith$Mutation$UpdateOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProducts;

  TRes call({
    Mutation$UpdateOneProducts$updateOneProducts? updateOneProducts,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes>
      get updateOneProducts;
}

class _CopyWithImpl$Mutation$UpdateOneProducts<TRes>
    implements CopyWith$Mutation$UpdateOneProducts<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProducts _instance;

  final TRes Function(Mutation$UpdateOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProducts(
        updateOneProducts: updateOneProducts == _undefined
            ? _instance.updateOneProducts
            : (updateOneProducts
                as Mutation$UpdateOneProducts$updateOneProducts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes>
      get updateOneProducts {
    final local$updateOneProducts = _instance.updateOneProducts;
    return local$updateOneProducts == null
        ? CopyWith$Mutation$UpdateOneProducts$updateOneProducts.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneProducts$updateOneProducts(
            local$updateOneProducts, (e) => call(updateOneProducts: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneProducts<TRes>
    implements CopyWith$Mutation$UpdateOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProducts(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneProducts$updateOneProducts? updateOneProducts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes>
      get updateOneProducts =>
          CopyWith$Mutation$UpdateOneProducts$updateOneProducts.stub(_res);
}

const documentNodeMutationUpdateOneProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneProducts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneProducts _parserFn$Mutation$UpdateOneProducts(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneProducts.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneProducts = FutureOr<void>
    Function(
  dynamic,
  Mutation$UpdateOneProducts?,
);

class Options$Mutation$UpdateOneProducts
    extends graphql.MutationOptions<Mutation$UpdateOneProducts> {
  Options$Mutation$UpdateOneProducts({
    String? operationName,
    required Variables$Mutation$UpdateOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneProducts? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneProducts>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneProducts(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneProducts,
          parserFn: _parserFn$Mutation$UpdateOneProducts,
        );

  final OnMutationCompleted$Mutation$UpdateOneProducts? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneProducts
    extends graphql.WatchQueryOptions<Mutation$UpdateOneProducts> {
  WatchOptions$Mutation$UpdateOneProducts({
    String? operationName,
    required Variables$Mutation$UpdateOneProducts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneProducts,
        );
}

extension ClientExtension$Mutation$UpdateOneProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneProducts>>
      mutate$UpdateOneProducts(
              Options$Mutation$UpdateOneProducts options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneProducts>
      watchMutation$UpdateOneProducts(
              WatchOptions$Mutation$UpdateOneProducts options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneProducts$updateOneProducts {
  Mutation$UpdateOneProducts$updateOneProducts({
    required this.product_id,
    this.$__typename = 'Products',
  });

  factory Mutation$UpdateOneProducts$updateOneProducts.fromJson(
      Map<String, dynamic> json) {
    final l$product_id = json['product_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProducts$updateOneProducts(
      product_id: (l$product_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int product_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProducts$updateOneProducts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProducts$updateOneProducts
    on Mutation$UpdateOneProducts$updateOneProducts {
  CopyWith$Mutation$UpdateOneProducts$updateOneProducts<
          Mutation$UpdateOneProducts$updateOneProducts>
      get copyWith => CopyWith$Mutation$UpdateOneProducts$updateOneProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes> {
  factory CopyWith$Mutation$UpdateOneProducts$updateOneProducts(
    Mutation$UpdateOneProducts$updateOneProducts instance,
    TRes Function(Mutation$UpdateOneProducts$updateOneProducts) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProducts$updateOneProducts;

  factory CopyWith$Mutation$UpdateOneProducts$updateOneProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProducts$updateOneProducts;

  TRes call({
    int? product_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneProducts$updateOneProducts<TRes>
    implements CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProducts$updateOneProducts(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProducts$updateOneProducts _instance;

  final TRes Function(Mutation$UpdateOneProducts$updateOneProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProducts$updateOneProducts(
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneProducts$updateOneProducts<TRes>
    implements CopyWith$Mutation$UpdateOneProducts$updateOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProducts$updateOneProducts(this._res);

  TRes _res;

  call({
    int? product_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneProductModel {
  factory Variables$Mutation$UpdateOneProductModel({
    required Input$ProductModelUpdateInput data,
    required Input$ProductModelWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneProductModel._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneProductModel._(this._$data);

  factory Variables$Mutation$UpdateOneProductModel.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ProductModelUpdateInput.fromJson(
        (l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$ProductModelWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneProductModel._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductModelUpdateInput get data =>
      (_$data['data'] as Input$ProductModelUpdateInput);
  Input$ProductModelWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductModelWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneProductModel<
          Variables$Mutation$UpdateOneProductModel>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneProductModel(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneProductModel<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneProductModel(
    Variables$Mutation$UpdateOneProductModel instance,
    TRes Function(Variables$Mutation$UpdateOneProductModel) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneProductModel;

  factory CopyWith$Variables$Mutation$UpdateOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneProductModel;

  TRes call({
    Input$ProductModelUpdateInput? data,
    Input$ProductModelWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProductModel<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneProductModel(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneProductModel _instance;

  final TRes Function(Variables$Mutation$UpdateOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneProductModel._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductModelUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$ProductModelWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneProductModel<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProductModel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneProductModel(this._res);

  TRes _res;

  call({
    Input$ProductModelUpdateInput? data,
    Input$ProductModelWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneProductModel {
  Mutation$UpdateOneProductModel({
    this.updateOneProductModel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneProductModel.fromJson(Map<String, dynamic> json) {
    final l$updateOneProductModel = json['updateOneProductModel'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProductModel(
      updateOneProductModel: l$updateOneProductModel == null
          ? null
          : Mutation$UpdateOneProductModel$updateOneProductModel.fromJson(
              (l$updateOneProductModel as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneProductModel$updateOneProductModel?
      updateOneProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneProductModel = updateOneProductModel;
    _resultData['updateOneProductModel'] = l$updateOneProductModel?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneProductModel = updateOneProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneProductModel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneProductModel = updateOneProductModel;
    final lOther$updateOneProductModel = other.updateOneProductModel;
    if (l$updateOneProductModel != lOther$updateOneProductModel) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProductModel
    on Mutation$UpdateOneProductModel {
  CopyWith$Mutation$UpdateOneProductModel<Mutation$UpdateOneProductModel>
      get copyWith => CopyWith$Mutation$UpdateOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProductModel<TRes> {
  factory CopyWith$Mutation$UpdateOneProductModel(
    Mutation$UpdateOneProductModel instance,
    TRes Function(Mutation$UpdateOneProductModel) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProductModel;

  factory CopyWith$Mutation$UpdateOneProductModel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProductModel;

  TRes call({
    Mutation$UpdateOneProductModel$updateOneProductModel? updateOneProductModel,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<TRes>
      get updateOneProductModel;
}

class _CopyWithImpl$Mutation$UpdateOneProductModel<TRes>
    implements CopyWith$Mutation$UpdateOneProductModel<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProductModel _instance;

  final TRes Function(Mutation$UpdateOneProductModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProductModel(
        updateOneProductModel: updateOneProductModel == _undefined
            ? _instance.updateOneProductModel
            : (updateOneProductModel
                as Mutation$UpdateOneProductModel$updateOneProductModel?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<TRes>
      get updateOneProductModel {
    final local$updateOneProductModel = _instance.updateOneProductModel;
    return local$updateOneProductModel == null
        ? CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel(
            local$updateOneProductModel, (e) => call(updateOneProductModel: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneProductModel<TRes>
    implements CopyWith$Mutation$UpdateOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProductModel(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneProductModel$updateOneProductModel? updateOneProductModel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<TRes>
      get updateOneProductModel =>
          CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel.stub(
              _res);
}

const documentNodeMutationUpdateOneProductModel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneProductModel'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductModelUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductModelWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneProductModel'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'size_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneProductModel _parserFn$Mutation$UpdateOneProductModel(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneProductModel.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneProductModel = FutureOr<void>
    Function(
  dynamic,
  Mutation$UpdateOneProductModel?,
);

class Options$Mutation$UpdateOneProductModel
    extends graphql.MutationOptions<Mutation$UpdateOneProductModel> {
  Options$Mutation$UpdateOneProductModel({
    String? operationName,
    required Variables$Mutation$UpdateOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneProductModel? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneProductModel>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneProductModel(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneProductModel,
          parserFn: _parserFn$Mutation$UpdateOneProductModel,
        );

  final OnMutationCompleted$Mutation$UpdateOneProductModel?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneProductModel
    extends graphql.WatchQueryOptions<Mutation$UpdateOneProductModel> {
  WatchOptions$Mutation$UpdateOneProductModel({
    String? operationName,
    required Variables$Mutation$UpdateOneProductModel variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneProductModel,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneProductModel,
        );
}

extension ClientExtension$Mutation$UpdateOneProductModel
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneProductModel>>
      mutate$UpdateOneProductModel(
              Options$Mutation$UpdateOneProductModel options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneProductModel>
      watchMutation$UpdateOneProductModel(
              WatchOptions$Mutation$UpdateOneProductModel options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneProductModel$updateOneProductModel {
  Mutation$UpdateOneProductModel$updateOneProductModel({
    required this.product_id,
    required this.color_id,
    required this.size_id,
    this.$__typename = 'ProductModel',
  });

  factory Mutation$UpdateOneProductModel$updateOneProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$product_id = json['product_id'];
    final l$color_id = json['color_id'];
    final l$size_id = json['size_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProductModel$updateOneProductModel(
      product_id: (l$product_id as int),
      color_id: (l$color_id as int),
      size_id: (l$size_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int product_id;

  final int color_id;

  final int size_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$color_id = color_id;
    _resultData['color_id'] = l$color_id;
    final l$size_id = size_id;
    _resultData['size_id'] = l$size_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$color_id = color_id;
    final l$size_id = size_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_id,
      l$color_id,
      l$size_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProductModel$updateOneProductModel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$color_id = color_id;
    final lOther$color_id = other.color_id;
    if (l$color_id != lOther$color_id) {
      return false;
    }
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProductModel$updateOneProductModel
    on Mutation$UpdateOneProductModel$updateOneProductModel {
  CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<
          Mutation$UpdateOneProductModel$updateOneProductModel>
      get copyWith =>
          CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<
    TRes> {
  factory CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel(
    Mutation$UpdateOneProductModel$updateOneProductModel instance,
    TRes Function(Mutation$UpdateOneProductModel$updateOneProductModel) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProductModel$updateOneProductModel;

  factory CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProductModel$updateOneProductModel;

  TRes call({
    int? product_id,
    int? color_id,
    int? size_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneProductModel$updateOneProductModel<TRes>
    implements
        CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProductModel$updateOneProductModel(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProductModel$updateOneProductModel _instance;

  final TRes Function(Mutation$UpdateOneProductModel$updateOneProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? color_id = _undefined,
    Object? size_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProductModel$updateOneProductModel(
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        color_id: color_id == _undefined || color_id == null
            ? _instance.color_id
            : (color_id as int),
        size_id: size_id == _undefined || size_id == null
            ? _instance.size_id
            : (size_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneProductModel$updateOneProductModel<
        TRes>
    implements
        CopyWith$Mutation$UpdateOneProductModel$updateOneProductModel<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProductModel$updateOneProductModel(
      this._res);

  TRes _res;

  call({
    int? product_id,
    int? color_id,
    int? size_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindManySizes {
  factory Variables$Query$FindManySizes({int? take}) =>
      Variables$Query$FindManySizes._({
        if (take != null) r'take': take,
      });

  Variables$Query$FindManySizes._(this._$data);

  factory Variables$Query$FindManySizes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    return Variables$Query$FindManySizes._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get take => (_$data['take'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindManySizes<Variables$Query$FindManySizes>
      get copyWith => CopyWith$Variables$Query$FindManySizes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindManySizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (_$data.containsKey('take') != other._$data.containsKey('take')) {
      return false;
    }
    if (l$take != lOther$take) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$take = take;
    return Object.hashAll([_$data.containsKey('take') ? l$take : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindManySizes<TRes> {
  factory CopyWith$Variables$Query$FindManySizes(
    Variables$Query$FindManySizes instance,
    TRes Function(Variables$Query$FindManySizes) then,
  ) = _CopyWithImpl$Variables$Query$FindManySizes;

  factory CopyWith$Variables$Query$FindManySizes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindManySizes;

  TRes call({int? take});
}

class _CopyWithImpl$Variables$Query$FindManySizes<TRes>
    implements CopyWith$Variables$Query$FindManySizes<TRes> {
  _CopyWithImpl$Variables$Query$FindManySizes(
    this._instance,
    this._then,
  );

  final Variables$Query$FindManySizes _instance;

  final TRes Function(Variables$Query$FindManySizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? take = _undefined}) =>
      _then(Variables$Query$FindManySizes._({
        ..._instance._$data,
        if (take != _undefined) 'take': (take as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindManySizes<TRes>
    implements CopyWith$Variables$Query$FindManySizes<TRes> {
  _CopyWithStubImpl$Variables$Query$FindManySizes(this._res);

  TRes _res;

  call({int? take}) => _res;
}

class Query$FindManySizes {
  Query$FindManySizes({
    required this.findManySizes,
    this.$__typename = 'Query',
  });

  factory Query$FindManySizes.fromJson(Map<String, dynamic> json) {
    final l$findManySizes = json['findManySizes'];
    final l$$__typename = json['__typename'];
    return Query$FindManySizes(
      findManySizes: (l$findManySizes as List<dynamic>)
          .map((e) => Query$FindManySizes$findManySizes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindManySizes$findManySizes> findManySizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManySizes = findManySizes;
    _resultData['findManySizes'] =
        l$findManySizes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManySizes = findManySizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManySizes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManySizes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManySizes = findManySizes;
    final lOther$findManySizes = other.findManySizes;
    if (l$findManySizes.length != lOther$findManySizes.length) {
      return false;
    }
    for (int i = 0; i < l$findManySizes.length; i++) {
      final l$findManySizes$entry = l$findManySizes[i];
      final lOther$findManySizes$entry = lOther$findManySizes[i];
      if (l$findManySizes$entry != lOther$findManySizes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManySizes on Query$FindManySizes {
  CopyWith$Query$FindManySizes<Query$FindManySizes> get copyWith =>
      CopyWith$Query$FindManySizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindManySizes<TRes> {
  factory CopyWith$Query$FindManySizes(
    Query$FindManySizes instance,
    TRes Function(Query$FindManySizes) then,
  ) = _CopyWithImpl$Query$FindManySizes;

  factory CopyWith$Query$FindManySizes.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManySizes;

  TRes call({
    List<Query$FindManySizes$findManySizes>? findManySizes,
    String? $__typename,
  });
  TRes findManySizes(
      Iterable<Query$FindManySizes$findManySizes> Function(
              Iterable<
                  CopyWith$Query$FindManySizes$findManySizes<
                      Query$FindManySizes$findManySizes>>)
          _fn);
}

class _CopyWithImpl$Query$FindManySizes<TRes>
    implements CopyWith$Query$FindManySizes<TRes> {
  _CopyWithImpl$Query$FindManySizes(
    this._instance,
    this._then,
  );

  final Query$FindManySizes _instance;

  final TRes Function(Query$FindManySizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManySizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManySizes(
        findManySizes: findManySizes == _undefined || findManySizes == null
            ? _instance.findManySizes
            : (findManySizes as List<Query$FindManySizes$findManySizes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManySizes(
          Iterable<Query$FindManySizes$findManySizes> Function(
                  Iterable<
                      CopyWith$Query$FindManySizes$findManySizes<
                          Query$FindManySizes$findManySizes>>)
              _fn) =>
      call(
          findManySizes: _fn(_instance.findManySizes
              .map((e) => CopyWith$Query$FindManySizes$findManySizes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindManySizes<TRes>
    implements CopyWith$Query$FindManySizes<TRes> {
  _CopyWithStubImpl$Query$FindManySizes(this._res);

  TRes _res;

  call({
    List<Query$FindManySizes$findManySizes>? findManySizes,
    String? $__typename,
  }) =>
      _res;
  findManySizes(_fn) => _res;
}

const documentNodeQueryFindManySizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindManySizes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'take')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManySizes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: VariableNode(name: NameNode(value: 'take')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'size'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindManySizes _parserFn$Query$FindManySizes(Map<String, dynamic> data) =>
    Query$FindManySizes.fromJson(data);

class Options$Query$FindManySizes
    extends graphql.QueryOptions<Query$FindManySizes> {
  Options$Query$FindManySizes({
    String? operationName,
    Variables$Query$FindManySizes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindManySizes,
          parserFn: _parserFn$Query$FindManySizes,
        );
}

class WatchOptions$Query$FindManySizes
    extends graphql.WatchQueryOptions<Query$FindManySizes> {
  WatchOptions$Query$FindManySizes({
    String? operationName,
    Variables$Query$FindManySizes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindManySizes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindManySizes,
        );
}

class FetchMoreOptions$Query$FindManySizes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindManySizes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindManySizes? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindManySizes,
        );
}

extension ClientExtension$Query$FindManySizes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindManySizes>> query$FindManySizes(
          [Options$Query$FindManySizes? options]) async =>
      await this.query(options ?? Options$Query$FindManySizes());
  graphql.ObservableQuery<Query$FindManySizes> watchQuery$FindManySizes(
          [WatchOptions$Query$FindManySizes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindManySizes());
  void writeQuery$FindManySizes({
    required Query$FindManySizes data,
    Variables$Query$FindManySizes? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindManySizes),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindManySizes? readQuery$FindManySizes({
    Variables$Query$FindManySizes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFindManySizes),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindManySizes.fromJson(result);
  }
}

class Query$FindManySizes$findManySizes {
  Query$FindManySizes$findManySizes({
    required this.id,
    required this.size,
    this.$__typename = 'Sizes',
  });

  factory Query$FindManySizes$findManySizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$FindManySizes$findManySizes(
      id: (l$id as int),
      size: (l$size as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$size = size;
    _resultData['size'] = l$size;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManySizes$findManySizes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManySizes$findManySizes
    on Query$FindManySizes$findManySizes {
  CopyWith$Query$FindManySizes$findManySizes<Query$FindManySizes$findManySizes>
      get copyWith => CopyWith$Query$FindManySizes$findManySizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManySizes$findManySizes<TRes> {
  factory CopyWith$Query$FindManySizes$findManySizes(
    Query$FindManySizes$findManySizes instance,
    TRes Function(Query$FindManySizes$findManySizes) then,
  ) = _CopyWithImpl$Query$FindManySizes$findManySizes;

  factory CopyWith$Query$FindManySizes$findManySizes.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManySizes$findManySizes;

  TRes call({
    int? id,
    String? size,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManySizes$findManySizes<TRes>
    implements CopyWith$Query$FindManySizes$findManySizes<TRes> {
  _CopyWithImpl$Query$FindManySizes$findManySizes(
    this._instance,
    this._then,
  );

  final Query$FindManySizes$findManySizes _instance;

  final TRes Function(Query$FindManySizes$findManySizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManySizes$findManySizes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        size: size == _undefined || size == null
            ? _instance.size
            : (size as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManySizes$findManySizes<TRes>
    implements CopyWith$Query$FindManySizes$findManySizes<TRes> {
  _CopyWithStubImpl$Query$FindManySizes$findManySizes(this._res);

  TRes _res;

  call({
    int? id,
    String? size,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneSizes {
  factory Variables$Mutation$CreateOneSizes(
          {required Input$SizesCreateInput data}) =>
      Variables$Mutation$CreateOneSizes._({
        r'data': data,
      });

  Variables$Mutation$CreateOneSizes._(this._$data);

  factory Variables$Mutation$CreateOneSizes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SizesCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneSizes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesCreateInput get data => (_$data['data'] as Input$SizesCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneSizes<Variables$Mutation$CreateOneSizes>
      get copyWith => CopyWith$Variables$Mutation$CreateOneSizes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneSizes) ||
        runtimeType != other.runtimeType) {
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
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneSizes<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneSizes(
    Variables$Mutation$CreateOneSizes instance,
    TRes Function(Variables$Mutation$CreateOneSizes) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneSizes;

  factory CopyWith$Variables$Mutation$CreateOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneSizes;

  TRes call({Input$SizesCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneSizes<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSizes<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneSizes(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneSizes _instance;

  final TRes Function(Variables$Mutation$CreateOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneSizes._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SizesCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneSizes<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSizes<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneSizes(this._res);

  TRes _res;

  call({Input$SizesCreateInput? data}) => _res;
}

class Mutation$CreateOneSizes {
  Mutation$CreateOneSizes({
    required this.createOneSizes,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneSizes.fromJson(Map<String, dynamic> json) {
    final l$createOneSizes = json['createOneSizes'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSizes(
      createOneSizes: Mutation$CreateOneSizes$createOneSizes.fromJson(
          (l$createOneSizes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneSizes$createOneSizes createOneSizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneSizes = createOneSizes;
    _resultData['createOneSizes'] = l$createOneSizes.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneSizes = createOneSizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneSizes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneSizes = createOneSizes;
    final lOther$createOneSizes = other.createOneSizes;
    if (l$createOneSizes != lOther$createOneSizes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneSizes on Mutation$CreateOneSizes {
  CopyWith$Mutation$CreateOneSizes<Mutation$CreateOneSizes> get copyWith =>
      CopyWith$Mutation$CreateOneSizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOneSizes<TRes> {
  factory CopyWith$Mutation$CreateOneSizes(
    Mutation$CreateOneSizes instance,
    TRes Function(Mutation$CreateOneSizes) then,
  ) = _CopyWithImpl$Mutation$CreateOneSizes;

  factory CopyWith$Mutation$CreateOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSizes;

  TRes call({
    Mutation$CreateOneSizes$createOneSizes? createOneSizes,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> get createOneSizes;
}

class _CopyWithImpl$Mutation$CreateOneSizes<TRes>
    implements CopyWith$Mutation$CreateOneSizes<TRes> {
  _CopyWithImpl$Mutation$CreateOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSizes _instance;

  final TRes Function(Mutation$CreateOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneSizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSizes(
        createOneSizes: createOneSizes == _undefined || createOneSizes == null
            ? _instance.createOneSizes
            : (createOneSizes as Mutation$CreateOneSizes$createOneSizes),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> get createOneSizes {
    final local$createOneSizes = _instance.createOneSizes;
    return CopyWith$Mutation$CreateOneSizes$createOneSizes(
        local$createOneSizes, (e) => call(createOneSizes: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneSizes<TRes>
    implements CopyWith$Mutation$CreateOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSizes(this._res);

  TRes _res;

  call({
    Mutation$CreateOneSizes$createOneSizes? createOneSizes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> get createOneSizes =>
      CopyWith$Mutation$CreateOneSizes$createOneSizes.stub(_res);
}

const documentNodeMutationCreateOneSizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneSizes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SizesCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneSizes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneSizes _parserFn$Mutation$CreateOneSizes(
        Map<String, dynamic> data) =>
    Mutation$CreateOneSizes.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneSizes = FutureOr<void> Function(
  dynamic,
  Mutation$CreateOneSizes?,
);

class Options$Mutation$CreateOneSizes
    extends graphql.MutationOptions<Mutation$CreateOneSizes> {
  Options$Mutation$CreateOneSizes({
    String? operationName,
    required Variables$Mutation$CreateOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneSizes? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneSizes>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneSizes(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneSizes,
          parserFn: _parserFn$Mutation$CreateOneSizes,
        );

  final OnMutationCompleted$Mutation$CreateOneSizes? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneSizes
    extends graphql.WatchQueryOptions<Mutation$CreateOneSizes> {
  WatchOptions$Mutation$CreateOneSizes({
    String? operationName,
    required Variables$Mutation$CreateOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneSizes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneSizes,
        );
}

extension ClientExtension$Mutation$CreateOneSizes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneSizes>> mutate$CreateOneSizes(
          Options$Mutation$CreateOneSizes options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneSizes> watchMutation$CreateOneSizes(
          WatchOptions$Mutation$CreateOneSizes options) =>
      this.watchMutation(options);
}

class Mutation$CreateOneSizes$createOneSizes {
  Mutation$CreateOneSizes$createOneSizes({
    required this.id,
    this.$__typename = 'Sizes',
  });

  factory Mutation$CreateOneSizes$createOneSizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSizes$createOneSizes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSizes$createOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneSizes$createOneSizes
    on Mutation$CreateOneSizes$createOneSizes {
  CopyWith$Mutation$CreateOneSizes$createOneSizes<
          Mutation$CreateOneSizes$createOneSizes>
      get copyWith => CopyWith$Mutation$CreateOneSizes$createOneSizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> {
  factory CopyWith$Mutation$CreateOneSizes$createOneSizes(
    Mutation$CreateOneSizes$createOneSizes instance,
    TRes Function(Mutation$CreateOneSizes$createOneSizes) then,
  ) = _CopyWithImpl$Mutation$CreateOneSizes$createOneSizes;

  factory CopyWith$Mutation$CreateOneSizes$createOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSizes$createOneSizes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneSizes$createOneSizes<TRes>
    implements CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> {
  _CopyWithImpl$Mutation$CreateOneSizes$createOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSizes$createOneSizes _instance;

  final TRes Function(Mutation$CreateOneSizes$createOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSizes$createOneSizes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneSizes$createOneSizes<TRes>
    implements CopyWith$Mutation$CreateOneSizes$createOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSizes$createOneSizes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneSizes {
  factory Variables$Mutation$UpdateOneSizes({
    required Input$SizesUpdateInput data,
    required Input$SizesWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneSizes._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneSizes._(this._$data);

  factory Variables$Mutation$UpdateOneSizes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SizesUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] =
        Input$SizesWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneSizes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesUpdateInput get data => (_$data['data'] as Input$SizesUpdateInput);
  Input$SizesWhereUniqueInput get where =>
      (_$data['where'] as Input$SizesWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneSizes<Variables$Mutation$UpdateOneSizes>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneSizes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneSizes<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneSizes(
    Variables$Mutation$UpdateOneSizes instance,
    TRes Function(Variables$Mutation$UpdateOneSizes) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneSizes;

  factory CopyWith$Variables$Mutation$UpdateOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneSizes;

  TRes call({
    Input$SizesUpdateInput? data,
    Input$SizesWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneSizes<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSizes<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneSizes(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneSizes _instance;

  final TRes Function(Variables$Mutation$UpdateOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneSizes._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SizesUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$SizesWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneSizes<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSizes<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneSizes(this._res);

  TRes _res;

  call({
    Input$SizesUpdateInput? data,
    Input$SizesWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneSizes {
  Mutation$UpdateOneSizes({
    this.updateOneSizes,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneSizes.fromJson(Map<String, dynamic> json) {
    final l$updateOneSizes = json['updateOneSizes'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSizes(
      updateOneSizes: l$updateOneSizes == null
          ? null
          : Mutation$UpdateOneSizes$updateOneSizes.fromJson(
              (l$updateOneSizes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneSizes$updateOneSizes? updateOneSizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneSizes = updateOneSizes;
    _resultData['updateOneSizes'] = l$updateOneSizes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneSizes = updateOneSizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneSizes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneSizes = updateOneSizes;
    final lOther$updateOneSizes = other.updateOneSizes;
    if (l$updateOneSizes != lOther$updateOneSizes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneSizes on Mutation$UpdateOneSizes {
  CopyWith$Mutation$UpdateOneSizes<Mutation$UpdateOneSizes> get copyWith =>
      CopyWith$Mutation$UpdateOneSizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOneSizes<TRes> {
  factory CopyWith$Mutation$UpdateOneSizes(
    Mutation$UpdateOneSizes instance,
    TRes Function(Mutation$UpdateOneSizes) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSizes;

  factory CopyWith$Mutation$UpdateOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSizes;

  TRes call({
    Mutation$UpdateOneSizes$updateOneSizes? updateOneSizes,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> get updateOneSizes;
}

class _CopyWithImpl$Mutation$UpdateOneSizes<TRes>
    implements CopyWith$Mutation$UpdateOneSizes<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSizes _instance;

  final TRes Function(Mutation$UpdateOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneSizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSizes(
        updateOneSizes: updateOneSizes == _undefined
            ? _instance.updateOneSizes
            : (updateOneSizes as Mutation$UpdateOneSizes$updateOneSizes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> get updateOneSizes {
    final local$updateOneSizes = _instance.updateOneSizes;
    return local$updateOneSizes == null
        ? CopyWith$Mutation$UpdateOneSizes$updateOneSizes.stub(_then(_instance))
        : CopyWith$Mutation$UpdateOneSizes$updateOneSizes(
            local$updateOneSizes, (e) => call(updateOneSizes: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneSizes<TRes>
    implements CopyWith$Mutation$UpdateOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSizes(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneSizes$updateOneSizes? updateOneSizes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> get updateOneSizes =>
      CopyWith$Mutation$UpdateOneSizes$updateOneSizes.stub(_res);
}

const documentNodeMutationUpdateOneSizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneSizes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SizesUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SizesWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneSizes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneSizes _parserFn$Mutation$UpdateOneSizes(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneSizes.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneSizes = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateOneSizes?,
);

class Options$Mutation$UpdateOneSizes
    extends graphql.MutationOptions<Mutation$UpdateOneSizes> {
  Options$Mutation$UpdateOneSizes({
    String? operationName,
    required Variables$Mutation$UpdateOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneSizes? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneSizes>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneSizes(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneSizes,
          parserFn: _parserFn$Mutation$UpdateOneSizes,
        );

  final OnMutationCompleted$Mutation$UpdateOneSizes? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneSizes
    extends graphql.WatchQueryOptions<Mutation$UpdateOneSizes> {
  WatchOptions$Mutation$UpdateOneSizes({
    String? operationName,
    required Variables$Mutation$UpdateOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneSizes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneSizes,
        );
}

extension ClientExtension$Mutation$UpdateOneSizes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneSizes>> mutate$UpdateOneSizes(
          Options$Mutation$UpdateOneSizes options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneSizes> watchMutation$UpdateOneSizes(
          WatchOptions$Mutation$UpdateOneSizes options) =>
      this.watchMutation(options);
}

class Mutation$UpdateOneSizes$updateOneSizes {
  Mutation$UpdateOneSizes$updateOneSizes({
    required this.id,
    this.$__typename = 'Sizes',
  });

  factory Mutation$UpdateOneSizes$updateOneSizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSizes$updateOneSizes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSizes$updateOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneSizes$updateOneSizes
    on Mutation$UpdateOneSizes$updateOneSizes {
  CopyWith$Mutation$UpdateOneSizes$updateOneSizes<
          Mutation$UpdateOneSizes$updateOneSizes>
      get copyWith => CopyWith$Mutation$UpdateOneSizes$updateOneSizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> {
  factory CopyWith$Mutation$UpdateOneSizes$updateOneSizes(
    Mutation$UpdateOneSizes$updateOneSizes instance,
    TRes Function(Mutation$UpdateOneSizes$updateOneSizes) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSizes$updateOneSizes;

  factory CopyWith$Mutation$UpdateOneSizes$updateOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSizes$updateOneSizes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneSizes$updateOneSizes<TRes>
    implements CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSizes$updateOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSizes$updateOneSizes _instance;

  final TRes Function(Mutation$UpdateOneSizes$updateOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSizes$updateOneSizes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneSizes$updateOneSizes<TRes>
    implements CopyWith$Mutation$UpdateOneSizes$updateOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSizes$updateOneSizes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneSizes {
  factory Variables$Mutation$DeleteOneSizes(
          {required Input$SizesWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneSizes._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneSizes._(this._$data);

  factory Variables$Mutation$DeleteOneSizes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$SizesWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneSizes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SizesWhereUniqueInput get where =>
      (_$data['where'] as Input$SizesWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneSizes<Variables$Mutation$DeleteOneSizes>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneSizes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneSizes<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneSizes(
    Variables$Mutation$DeleteOneSizes instance,
    TRes Function(Variables$Mutation$DeleteOneSizes) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneSizes;

  factory CopyWith$Variables$Mutation$DeleteOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneSizes;

  TRes call({Input$SizesWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneSizes<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSizes<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneSizes(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneSizes _instance;

  final TRes Function(Variables$Mutation$DeleteOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneSizes._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$SizesWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneSizes<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSizes<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneSizes(this._res);

  TRes _res;

  call({Input$SizesWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneSizes {
  Mutation$DeleteOneSizes({
    this.deleteOneSizes,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneSizes.fromJson(Map<String, dynamic> json) {
    final l$deleteOneSizes = json['deleteOneSizes'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSizes(
      deleteOneSizes: l$deleteOneSizes == null
          ? null
          : Mutation$DeleteOneSizes$deleteOneSizes.fromJson(
              (l$deleteOneSizes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneSizes$deleteOneSizes? deleteOneSizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneSizes = deleteOneSizes;
    _resultData['deleteOneSizes'] = l$deleteOneSizes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneSizes = deleteOneSizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneSizes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneSizes = deleteOneSizes;
    final lOther$deleteOneSizes = other.deleteOneSizes;
    if (l$deleteOneSizes != lOther$deleteOneSizes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneSizes on Mutation$DeleteOneSizes {
  CopyWith$Mutation$DeleteOneSizes<Mutation$DeleteOneSizes> get copyWith =>
      CopyWith$Mutation$DeleteOneSizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOneSizes<TRes> {
  factory CopyWith$Mutation$DeleteOneSizes(
    Mutation$DeleteOneSizes instance,
    TRes Function(Mutation$DeleteOneSizes) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSizes;

  factory CopyWith$Mutation$DeleteOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSizes;

  TRes call({
    Mutation$DeleteOneSizes$deleteOneSizes? deleteOneSizes,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> get deleteOneSizes;
}

class _CopyWithImpl$Mutation$DeleteOneSizes<TRes>
    implements CopyWith$Mutation$DeleteOneSizes<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSizes _instance;

  final TRes Function(Mutation$DeleteOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneSizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSizes(
        deleteOneSizes: deleteOneSizes == _undefined
            ? _instance.deleteOneSizes
            : (deleteOneSizes as Mutation$DeleteOneSizes$deleteOneSizes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> get deleteOneSizes {
    final local$deleteOneSizes = _instance.deleteOneSizes;
    return local$deleteOneSizes == null
        ? CopyWith$Mutation$DeleteOneSizes$deleteOneSizes.stub(_then(_instance))
        : CopyWith$Mutation$DeleteOneSizes$deleteOneSizes(
            local$deleteOneSizes, (e) => call(deleteOneSizes: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneSizes<TRes>
    implements CopyWith$Mutation$DeleteOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSizes(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneSizes$deleteOneSizes? deleteOneSizes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> get deleteOneSizes =>
      CopyWith$Mutation$DeleteOneSizes$deleteOneSizes.stub(_res);
}

const documentNodeMutationDeleteOneSizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneSizes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SizesWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneSizes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneSizes _parserFn$Mutation$DeleteOneSizes(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneSizes.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneSizes = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteOneSizes?,
);

class Options$Mutation$DeleteOneSizes
    extends graphql.MutationOptions<Mutation$DeleteOneSizes> {
  Options$Mutation$DeleteOneSizes({
    String? operationName,
    required Variables$Mutation$DeleteOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneSizes? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneSizes>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneSizes(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneSizes,
          parserFn: _parserFn$Mutation$DeleteOneSizes,
        );

  final OnMutationCompleted$Mutation$DeleteOneSizes? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneSizes
    extends graphql.WatchQueryOptions<Mutation$DeleteOneSizes> {
  WatchOptions$Mutation$DeleteOneSizes({
    String? operationName,
    required Variables$Mutation$DeleteOneSizes variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneSizes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneSizes,
        );
}

extension ClientExtension$Mutation$DeleteOneSizes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneSizes>> mutate$DeleteOneSizes(
          Options$Mutation$DeleteOneSizes options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneSizes> watchMutation$DeleteOneSizes(
          WatchOptions$Mutation$DeleteOneSizes options) =>
      this.watchMutation(options);
}

class Mutation$DeleteOneSizes$deleteOneSizes {
  Mutation$DeleteOneSizes$deleteOneSizes({
    required this.id,
    this.$__typename = 'Sizes',
  });

  factory Mutation$DeleteOneSizes$deleteOneSizes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSizes$deleteOneSizes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSizes$deleteOneSizes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneSizes$deleteOneSizes
    on Mutation$DeleteOneSizes$deleteOneSizes {
  CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<
          Mutation$DeleteOneSizes$deleteOneSizes>
      get copyWith => CopyWith$Mutation$DeleteOneSizes$deleteOneSizes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> {
  factory CopyWith$Mutation$DeleteOneSizes$deleteOneSizes(
    Mutation$DeleteOneSizes$deleteOneSizes instance,
    TRes Function(Mutation$DeleteOneSizes$deleteOneSizes) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSizes$deleteOneSizes;

  factory CopyWith$Mutation$DeleteOneSizes$deleteOneSizes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSizes$deleteOneSizes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneSizes$deleteOneSizes<TRes>
    implements CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSizes$deleteOneSizes(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSizes$deleteOneSizes _instance;

  final TRes Function(Mutation$DeleteOneSizes$deleteOneSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSizes$deleteOneSizes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneSizes$deleteOneSizes<TRes>
    implements CopyWith$Mutation$DeleteOneSizes$deleteOneSizes<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSizes$deleteOneSizes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindManyColors {
  factory Variables$Query$FindManyColors({int? take}) =>
      Variables$Query$FindManyColors._({
        if (take != null) r'take': take,
      });

  Variables$Query$FindManyColors._(this._$data);

  factory Variables$Query$FindManyColors.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    return Variables$Query$FindManyColors._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get take => (_$data['take'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindManyColors<Variables$Query$FindManyColors>
      get copyWith => CopyWith$Variables$Query$FindManyColors(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindManyColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (_$data.containsKey('take') != other._$data.containsKey('take')) {
      return false;
    }
    if (l$take != lOther$take) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$take = take;
    return Object.hashAll([_$data.containsKey('take') ? l$take : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindManyColors<TRes> {
  factory CopyWith$Variables$Query$FindManyColors(
    Variables$Query$FindManyColors instance,
    TRes Function(Variables$Query$FindManyColors) then,
  ) = _CopyWithImpl$Variables$Query$FindManyColors;

  factory CopyWith$Variables$Query$FindManyColors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindManyColors;

  TRes call({int? take});
}

class _CopyWithImpl$Variables$Query$FindManyColors<TRes>
    implements CopyWith$Variables$Query$FindManyColors<TRes> {
  _CopyWithImpl$Variables$Query$FindManyColors(
    this._instance,
    this._then,
  );

  final Variables$Query$FindManyColors _instance;

  final TRes Function(Variables$Query$FindManyColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? take = _undefined}) =>
      _then(Variables$Query$FindManyColors._({
        ..._instance._$data,
        if (take != _undefined) 'take': (take as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindManyColors<TRes>
    implements CopyWith$Variables$Query$FindManyColors<TRes> {
  _CopyWithStubImpl$Variables$Query$FindManyColors(this._res);

  TRes _res;

  call({int? take}) => _res;
}

class Query$FindManyColors {
  Query$FindManyColors({
    required this.findManyColors,
    this.$__typename = 'Query',
  });

  factory Query$FindManyColors.fromJson(Map<String, dynamic> json) {
    final l$findManyColors = json['findManyColors'];
    final l$$__typename = json['__typename'];
    return Query$FindManyColors(
      findManyColors: (l$findManyColors as List<dynamic>)
          .map((e) => Query$FindManyColors$findManyColors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindManyColors$findManyColors> findManyColors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManyColors = findManyColors;
    _resultData['findManyColors'] =
        l$findManyColors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManyColors = findManyColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManyColors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyColors) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManyColors = findManyColors;
    final lOther$findManyColors = other.findManyColors;
    if (l$findManyColors.length != lOther$findManyColors.length) {
      return false;
    }
    for (int i = 0; i < l$findManyColors.length; i++) {
      final l$findManyColors$entry = l$findManyColors[i];
      final lOther$findManyColors$entry = lOther$findManyColors[i];
      if (l$findManyColors$entry != lOther$findManyColors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyColors on Query$FindManyColors {
  CopyWith$Query$FindManyColors<Query$FindManyColors> get copyWith =>
      CopyWith$Query$FindManyColors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindManyColors<TRes> {
  factory CopyWith$Query$FindManyColors(
    Query$FindManyColors instance,
    TRes Function(Query$FindManyColors) then,
  ) = _CopyWithImpl$Query$FindManyColors;

  factory CopyWith$Query$FindManyColors.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManyColors;

  TRes call({
    List<Query$FindManyColors$findManyColors>? findManyColors,
    String? $__typename,
  });
  TRes findManyColors(
      Iterable<Query$FindManyColors$findManyColors> Function(
              Iterable<
                  CopyWith$Query$FindManyColors$findManyColors<
                      Query$FindManyColors$findManyColors>>)
          _fn);
}

class _CopyWithImpl$Query$FindManyColors<TRes>
    implements CopyWith$Query$FindManyColors<TRes> {
  _CopyWithImpl$Query$FindManyColors(
    this._instance,
    this._then,
  );

  final Query$FindManyColors _instance;

  final TRes Function(Query$FindManyColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManyColors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyColors(
        findManyColors: findManyColors == _undefined || findManyColors == null
            ? _instance.findManyColors
            : (findManyColors as List<Query$FindManyColors$findManyColors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManyColors(
          Iterable<Query$FindManyColors$findManyColors> Function(
                  Iterable<
                      CopyWith$Query$FindManyColors$findManyColors<
                          Query$FindManyColors$findManyColors>>)
              _fn) =>
      call(
          findManyColors: _fn(_instance.findManyColors
              .map((e) => CopyWith$Query$FindManyColors$findManyColors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindManyColors<TRes>
    implements CopyWith$Query$FindManyColors<TRes> {
  _CopyWithStubImpl$Query$FindManyColors(this._res);

  TRes _res;

  call({
    List<Query$FindManyColors$findManyColors>? findManyColors,
    String? $__typename,
  }) =>
      _res;
  findManyColors(_fn) => _res;
}

const documentNodeQueryFindManyColors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindManyColors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'take')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManyColors'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: VariableNode(name: NameNode(value: 'take')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$FindManyColors _parserFn$Query$FindManyColors(
        Map<String, dynamic> data) =>
    Query$FindManyColors.fromJson(data);

class Options$Query$FindManyColors
    extends graphql.QueryOptions<Query$FindManyColors> {
  Options$Query$FindManyColors({
    String? operationName,
    Variables$Query$FindManyColors? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFindManyColors,
          parserFn: _parserFn$Query$FindManyColors,
        );
}

class WatchOptions$Query$FindManyColors
    extends graphql.WatchQueryOptions<Query$FindManyColors> {
  WatchOptions$Query$FindManyColors({
    String? operationName,
    Variables$Query$FindManyColors? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFindManyColors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FindManyColors,
        );
}

class FetchMoreOptions$Query$FindManyColors extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FindManyColors({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FindManyColors? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFindManyColors,
        );
}

extension ClientExtension$Query$FindManyColors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FindManyColors>> query$FindManyColors(
          [Options$Query$FindManyColors? options]) async =>
      await this.query(options ?? Options$Query$FindManyColors());
  graphql.ObservableQuery<Query$FindManyColors> watchQuery$FindManyColors(
          [WatchOptions$Query$FindManyColors? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FindManyColors());
  void writeQuery$FindManyColors({
    required Query$FindManyColors data,
    Variables$Query$FindManyColors? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFindManyColors),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FindManyColors? readQuery$FindManyColors({
    Variables$Query$FindManyColors? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFindManyColors),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FindManyColors.fromJson(result);
  }
}

class Query$FindManyColors$findManyColors {
  Query$FindManyColors$findManyColors({
    required this.id,
    required this.color,
    this.$__typename = 'Colors',
  });

  factory Query$FindManyColors$findManyColors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$FindManyColors$findManyColors(
      id: (l$id as int),
      color: (l$color as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindManyColors$findManyColors) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindManyColors$findManyColors
    on Query$FindManyColors$findManyColors {
  CopyWith$Query$FindManyColors$findManyColors<
          Query$FindManyColors$findManyColors>
      get copyWith => CopyWith$Query$FindManyColors$findManyColors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindManyColors$findManyColors<TRes> {
  factory CopyWith$Query$FindManyColors$findManyColors(
    Query$FindManyColors$findManyColors instance,
    TRes Function(Query$FindManyColors$findManyColors) then,
  ) = _CopyWithImpl$Query$FindManyColors$findManyColors;

  factory CopyWith$Query$FindManyColors$findManyColors.stub(TRes res) =
      _CopyWithStubImpl$Query$FindManyColors$findManyColors;

  TRes call({
    int? id,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindManyColors$findManyColors<TRes>
    implements CopyWith$Query$FindManyColors$findManyColors<TRes> {
  _CopyWithImpl$Query$FindManyColors$findManyColors(
    this._instance,
    this._then,
  );

  final Query$FindManyColors$findManyColors _instance;

  final TRes Function(Query$FindManyColors$findManyColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindManyColors$findManyColors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindManyColors$findManyColors<TRes>
    implements CopyWith$Query$FindManyColors$findManyColors<TRes> {
  _CopyWithStubImpl$Query$FindManyColors$findManyColors(this._res);

  TRes _res;

  call({
    int? id,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneColors {
  factory Variables$Mutation$UpdateOneColors({
    required Input$ColorsUpdateInput data,
    required Input$ColorsWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneColors._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneColors._(this._$data);

  factory Variables$Mutation$UpdateOneColors.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$ColorsUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$ColorsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneColors._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsUpdateInput get data =>
      (_$data['data'] as Input$ColorsUpdateInput);
  Input$ColorsWhereUniqueInput get where =>
      (_$data['where'] as Input$ColorsWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneColors<
          Variables$Mutation$UpdateOneColors>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneColors(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneColors<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneColors(
    Variables$Mutation$UpdateOneColors instance,
    TRes Function(Variables$Mutation$UpdateOneColors) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneColors;

  factory CopyWith$Variables$Mutation$UpdateOneColors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneColors;

  TRes call({
    Input$ColorsUpdateInput? data,
    Input$ColorsWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneColors<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneColors<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneColors(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneColors _instance;

  final TRes Function(Variables$Mutation$UpdateOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneColors._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ColorsUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$ColorsWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneColors<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneColors<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneColors(this._res);

  TRes _res;

  call({
    Input$ColorsUpdateInput? data,
    Input$ColorsWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneColors {
  Mutation$UpdateOneColors({
    this.updateOneColors,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneColors.fromJson(Map<String, dynamic> json) {
    final l$updateOneColors = json['updateOneColors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneColors(
      updateOneColors: l$updateOneColors == null
          ? null
          : Mutation$UpdateOneColors$updateOneColors.fromJson(
              (l$updateOneColors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneColors$updateOneColors? updateOneColors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneColors = updateOneColors;
    _resultData['updateOneColors'] = l$updateOneColors?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneColors = updateOneColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneColors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneColors = updateOneColors;
    final lOther$updateOneColors = other.updateOneColors;
    if (l$updateOneColors != lOther$updateOneColors) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneColors
    on Mutation$UpdateOneColors {
  CopyWith$Mutation$UpdateOneColors<Mutation$UpdateOneColors> get copyWith =>
      CopyWith$Mutation$UpdateOneColors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOneColors<TRes> {
  factory CopyWith$Mutation$UpdateOneColors(
    Mutation$UpdateOneColors instance,
    TRes Function(Mutation$UpdateOneColors) then,
  ) = _CopyWithImpl$Mutation$UpdateOneColors;

  factory CopyWith$Mutation$UpdateOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneColors;

  TRes call({
    Mutation$UpdateOneColors$updateOneColors? updateOneColors,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> get updateOneColors;
}

class _CopyWithImpl$Mutation$UpdateOneColors<TRes>
    implements CopyWith$Mutation$UpdateOneColors<TRes> {
  _CopyWithImpl$Mutation$UpdateOneColors(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneColors _instance;

  final TRes Function(Mutation$UpdateOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneColors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneColors(
        updateOneColors: updateOneColors == _undefined
            ? _instance.updateOneColors
            : (updateOneColors as Mutation$UpdateOneColors$updateOneColors?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> get updateOneColors {
    final local$updateOneColors = _instance.updateOneColors;
    return local$updateOneColors == null
        ? CopyWith$Mutation$UpdateOneColors$updateOneColors.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneColors$updateOneColors(
            local$updateOneColors, (e) => call(updateOneColors: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneColors<TRes>
    implements CopyWith$Mutation$UpdateOneColors<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneColors(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneColors$updateOneColors? updateOneColors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> get updateOneColors =>
      CopyWith$Mutation$UpdateOneColors$updateOneColors.stub(_res);
}

const documentNodeMutationUpdateOneColors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneColors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ColorsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ColorsWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneColors'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneColors _parserFn$Mutation$UpdateOneColors(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneColors.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneColors = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateOneColors?,
);

class Options$Mutation$UpdateOneColors
    extends graphql.MutationOptions<Mutation$UpdateOneColors> {
  Options$Mutation$UpdateOneColors({
    String? operationName,
    required Variables$Mutation$UpdateOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneColors? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneColors>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneColors(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneColors,
          parserFn: _parserFn$Mutation$UpdateOneColors,
        );

  final OnMutationCompleted$Mutation$UpdateOneColors? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneColors
    extends graphql.WatchQueryOptions<Mutation$UpdateOneColors> {
  WatchOptions$Mutation$UpdateOneColors({
    String? operationName,
    required Variables$Mutation$UpdateOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneColors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneColors,
        );
}

extension ClientExtension$Mutation$UpdateOneColors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneColors>> mutate$UpdateOneColors(
          Options$Mutation$UpdateOneColors options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneColors>
      watchMutation$UpdateOneColors(
              WatchOptions$Mutation$UpdateOneColors options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneColors$updateOneColors {
  Mutation$UpdateOneColors$updateOneColors({
    required this.id,
    this.$__typename = 'Colors',
  });

  factory Mutation$UpdateOneColors$updateOneColors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneColors$updateOneColors(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneColors$updateOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneColors$updateOneColors
    on Mutation$UpdateOneColors$updateOneColors {
  CopyWith$Mutation$UpdateOneColors$updateOneColors<
          Mutation$UpdateOneColors$updateOneColors>
      get copyWith => CopyWith$Mutation$UpdateOneColors$updateOneColors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> {
  factory CopyWith$Mutation$UpdateOneColors$updateOneColors(
    Mutation$UpdateOneColors$updateOneColors instance,
    TRes Function(Mutation$UpdateOneColors$updateOneColors) then,
  ) = _CopyWithImpl$Mutation$UpdateOneColors$updateOneColors;

  factory CopyWith$Mutation$UpdateOneColors$updateOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneColors$updateOneColors;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneColors$updateOneColors<TRes>
    implements CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> {
  _CopyWithImpl$Mutation$UpdateOneColors$updateOneColors(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneColors$updateOneColors _instance;

  final TRes Function(Mutation$UpdateOneColors$updateOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneColors$updateOneColors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneColors$updateOneColors<TRes>
    implements CopyWith$Mutation$UpdateOneColors$updateOneColors<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneColors$updateOneColors(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneColors {
  factory Variables$Mutation$CreateOneColors(
          {required Input$ColorsCreateInput data}) =>
      Variables$Mutation$CreateOneColors._({
        r'data': data,
      });

  Variables$Mutation$CreateOneColors._(this._$data);

  factory Variables$Mutation$CreateOneColors.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$ColorsCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneColors._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsCreateInput get data =>
      (_$data['data'] as Input$ColorsCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneColors<
          Variables$Mutation$CreateOneColors>
      get copyWith => CopyWith$Variables$Mutation$CreateOneColors(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneColors) ||
        runtimeType != other.runtimeType) {
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
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneColors<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneColors(
    Variables$Mutation$CreateOneColors instance,
    TRes Function(Variables$Mutation$CreateOneColors) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneColors;

  factory CopyWith$Variables$Mutation$CreateOneColors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneColors;

  TRes call({Input$ColorsCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneColors<TRes>
    implements CopyWith$Variables$Mutation$CreateOneColors<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneColors(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneColors _instance;

  final TRes Function(Variables$Mutation$CreateOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneColors._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ColorsCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneColors<TRes>
    implements CopyWith$Variables$Mutation$CreateOneColors<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneColors(this._res);

  TRes _res;

  call({Input$ColorsCreateInput? data}) => _res;
}

class Mutation$CreateOneColors {
  Mutation$CreateOneColors({
    required this.createOneColors,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneColors.fromJson(Map<String, dynamic> json) {
    final l$createOneColors = json['createOneColors'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneColors(
      createOneColors: Mutation$CreateOneColors$createOneColors.fromJson(
          (l$createOneColors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneColors$createOneColors createOneColors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneColors = createOneColors;
    _resultData['createOneColors'] = l$createOneColors.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneColors = createOneColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneColors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneColors = createOneColors;
    final lOther$createOneColors = other.createOneColors;
    if (l$createOneColors != lOther$createOneColors) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneColors
    on Mutation$CreateOneColors {
  CopyWith$Mutation$CreateOneColors<Mutation$CreateOneColors> get copyWith =>
      CopyWith$Mutation$CreateOneColors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOneColors<TRes> {
  factory CopyWith$Mutation$CreateOneColors(
    Mutation$CreateOneColors instance,
    TRes Function(Mutation$CreateOneColors) then,
  ) = _CopyWithImpl$Mutation$CreateOneColors;

  factory CopyWith$Mutation$CreateOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneColors;

  TRes call({
    Mutation$CreateOneColors$createOneColors? createOneColors,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneColors$createOneColors<TRes> get createOneColors;
}

class _CopyWithImpl$Mutation$CreateOneColors<TRes>
    implements CopyWith$Mutation$CreateOneColors<TRes> {
  _CopyWithImpl$Mutation$CreateOneColors(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneColors _instance;

  final TRes Function(Mutation$CreateOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneColors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneColors(
        createOneColors:
            createOneColors == _undefined || createOneColors == null
                ? _instance.createOneColors
                : (createOneColors as Mutation$CreateOneColors$createOneColors),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneColors$createOneColors<TRes> get createOneColors {
    final local$createOneColors = _instance.createOneColors;
    return CopyWith$Mutation$CreateOneColors$createOneColors(
        local$createOneColors, (e) => call(createOneColors: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneColors<TRes>
    implements CopyWith$Mutation$CreateOneColors<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneColors(this._res);

  TRes _res;

  call({
    Mutation$CreateOneColors$createOneColors? createOneColors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneColors$createOneColors<TRes> get createOneColors =>
      CopyWith$Mutation$CreateOneColors$createOneColors.stub(_res);
}

const documentNodeMutationCreateOneColors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneColors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ColorsCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneColors'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneColors _parserFn$Mutation$CreateOneColors(
        Map<String, dynamic> data) =>
    Mutation$CreateOneColors.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneColors = FutureOr<void> Function(
  dynamic,
  Mutation$CreateOneColors?,
);

class Options$Mutation$CreateOneColors
    extends graphql.MutationOptions<Mutation$CreateOneColors> {
  Options$Mutation$CreateOneColors({
    String? operationName,
    required Variables$Mutation$CreateOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneColors? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneColors>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneColors(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneColors,
          parserFn: _parserFn$Mutation$CreateOneColors,
        );

  final OnMutationCompleted$Mutation$CreateOneColors? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneColors
    extends graphql.WatchQueryOptions<Mutation$CreateOneColors> {
  WatchOptions$Mutation$CreateOneColors({
    String? operationName,
    required Variables$Mutation$CreateOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneColors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneColors,
        );
}

extension ClientExtension$Mutation$CreateOneColors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneColors>> mutate$CreateOneColors(
          Options$Mutation$CreateOneColors options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneColors>
      watchMutation$CreateOneColors(
              WatchOptions$Mutation$CreateOneColors options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneColors$createOneColors {
  Mutation$CreateOneColors$createOneColors({
    required this.id,
    this.$__typename = 'Colors',
  });

  factory Mutation$CreateOneColors$createOneColors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneColors$createOneColors(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneColors$createOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneColors$createOneColors
    on Mutation$CreateOneColors$createOneColors {
  CopyWith$Mutation$CreateOneColors$createOneColors<
          Mutation$CreateOneColors$createOneColors>
      get copyWith => CopyWith$Mutation$CreateOneColors$createOneColors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneColors$createOneColors<TRes> {
  factory CopyWith$Mutation$CreateOneColors$createOneColors(
    Mutation$CreateOneColors$createOneColors instance,
    TRes Function(Mutation$CreateOneColors$createOneColors) then,
  ) = _CopyWithImpl$Mutation$CreateOneColors$createOneColors;

  factory CopyWith$Mutation$CreateOneColors$createOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneColors$createOneColors;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneColors$createOneColors<TRes>
    implements CopyWith$Mutation$CreateOneColors$createOneColors<TRes> {
  _CopyWithImpl$Mutation$CreateOneColors$createOneColors(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneColors$createOneColors _instance;

  final TRes Function(Mutation$CreateOneColors$createOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneColors$createOneColors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneColors$createOneColors<TRes>
    implements CopyWith$Mutation$CreateOneColors$createOneColors<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneColors$createOneColors(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneColors {
  factory Variables$Mutation$DeleteOneColors(
          {required Input$ColorsWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneColors._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneColors._(this._$data);

  factory Variables$Mutation$DeleteOneColors.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ColorsWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneColors._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ColorsWhereUniqueInput get where =>
      (_$data['where'] as Input$ColorsWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneColors<
          Variables$Mutation$DeleteOneColors>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneColors(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneColors<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneColors(
    Variables$Mutation$DeleteOneColors instance,
    TRes Function(Variables$Mutation$DeleteOneColors) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneColors;

  factory CopyWith$Variables$Mutation$DeleteOneColors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneColors;

  TRes call({Input$ColorsWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneColors<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneColors<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneColors(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneColors _instance;

  final TRes Function(Variables$Mutation$DeleteOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneColors._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ColorsWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneColors<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneColors<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneColors(this._res);

  TRes _res;

  call({Input$ColorsWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneColors {
  Mutation$DeleteOneColors({
    this.deleteOneColors,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneColors.fromJson(Map<String, dynamic> json) {
    final l$deleteOneColors = json['deleteOneColors'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneColors(
      deleteOneColors: l$deleteOneColors == null
          ? null
          : Mutation$DeleteOneColors$deleteOneColors.fromJson(
              (l$deleteOneColors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneColors$deleteOneColors? deleteOneColors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneColors = deleteOneColors;
    _resultData['deleteOneColors'] = l$deleteOneColors?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneColors = deleteOneColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneColors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneColors = deleteOneColors;
    final lOther$deleteOneColors = other.deleteOneColors;
    if (l$deleteOneColors != lOther$deleteOneColors) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneColors
    on Mutation$DeleteOneColors {
  CopyWith$Mutation$DeleteOneColors<Mutation$DeleteOneColors> get copyWith =>
      CopyWith$Mutation$DeleteOneColors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOneColors<TRes> {
  factory CopyWith$Mutation$DeleteOneColors(
    Mutation$DeleteOneColors instance,
    TRes Function(Mutation$DeleteOneColors) then,
  ) = _CopyWithImpl$Mutation$DeleteOneColors;

  factory CopyWith$Mutation$DeleteOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneColors;

  TRes call({
    Mutation$DeleteOneColors$deleteOneColors? deleteOneColors,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> get deleteOneColors;
}

class _CopyWithImpl$Mutation$DeleteOneColors<TRes>
    implements CopyWith$Mutation$DeleteOneColors<TRes> {
  _CopyWithImpl$Mutation$DeleteOneColors(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneColors _instance;

  final TRes Function(Mutation$DeleteOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneColors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneColors(
        deleteOneColors: deleteOneColors == _undefined
            ? _instance.deleteOneColors
            : (deleteOneColors as Mutation$DeleteOneColors$deleteOneColors?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> get deleteOneColors {
    final local$deleteOneColors = _instance.deleteOneColors;
    return local$deleteOneColors == null
        ? CopyWith$Mutation$DeleteOneColors$deleteOneColors.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneColors$deleteOneColors(
            local$deleteOneColors, (e) => call(deleteOneColors: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneColors<TRes>
    implements CopyWith$Mutation$DeleteOneColors<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneColors(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneColors$deleteOneColors? deleteOneColors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> get deleteOneColors =>
      CopyWith$Mutation$DeleteOneColors$deleteOneColors.stub(_res);
}

const documentNodeMutationDeleteOneColors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneColors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ColorsWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneColors'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneColors _parserFn$Mutation$DeleteOneColors(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneColors.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneColors = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteOneColors?,
);

class Options$Mutation$DeleteOneColors
    extends graphql.MutationOptions<Mutation$DeleteOneColors> {
  Options$Mutation$DeleteOneColors({
    String? operationName,
    required Variables$Mutation$DeleteOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneColors? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneColors>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneColors(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneColors,
          parserFn: _parserFn$Mutation$DeleteOneColors,
        );

  final OnMutationCompleted$Mutation$DeleteOneColors? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneColors
    extends graphql.WatchQueryOptions<Mutation$DeleteOneColors> {
  WatchOptions$Mutation$DeleteOneColors({
    String? operationName,
    required Variables$Mutation$DeleteOneColors variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneColors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneColors,
        );
}

extension ClientExtension$Mutation$DeleteOneColors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneColors>> mutate$DeleteOneColors(
          Options$Mutation$DeleteOneColors options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneColors>
      watchMutation$DeleteOneColors(
              WatchOptions$Mutation$DeleteOneColors options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneColors$deleteOneColors {
  Mutation$DeleteOneColors$deleteOneColors({
    required this.id,
    this.$__typename = 'Colors',
  });

  factory Mutation$DeleteOneColors$deleteOneColors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneColors$deleteOneColors(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneColors$deleteOneColors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneColors$deleteOneColors
    on Mutation$DeleteOneColors$deleteOneColors {
  CopyWith$Mutation$DeleteOneColors$deleteOneColors<
          Mutation$DeleteOneColors$deleteOneColors>
      get copyWith => CopyWith$Mutation$DeleteOneColors$deleteOneColors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> {
  factory CopyWith$Mutation$DeleteOneColors$deleteOneColors(
    Mutation$DeleteOneColors$deleteOneColors instance,
    TRes Function(Mutation$DeleteOneColors$deleteOneColors) then,
  ) = _CopyWithImpl$Mutation$DeleteOneColors$deleteOneColors;

  factory CopyWith$Mutation$DeleteOneColors$deleteOneColors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneColors$deleteOneColors;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneColors$deleteOneColors<TRes>
    implements CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> {
  _CopyWithImpl$Mutation$DeleteOneColors$deleteOneColors(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneColors$deleteOneColors _instance;

  final TRes Function(Mutation$DeleteOneColors$deleteOneColors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneColors$deleteOneColors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneColors$deleteOneColors<TRes>
    implements CopyWith$Mutation$DeleteOneColors$deleteOneColors<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneColors$deleteOneColors(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneProductFamily {
  factory Variables$Mutation$CreateOneProductFamily(
          {required Input$ProductFamilyCreateInput data}) =>
      Variables$Mutation$CreateOneProductFamily._({
        r'data': data,
      });

  Variables$Mutation$CreateOneProductFamily._(this._$data);

  factory Variables$Mutation$CreateOneProductFamily.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ProductFamilyCreateInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneProductFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyCreateInput get data =>
      (_$data['data'] as Input$ProductFamilyCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneProductFamily<
          Variables$Mutation$CreateOneProductFamily>
      get copyWith => CopyWith$Variables$Mutation$CreateOneProductFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneProductFamily) ||
        runtimeType != other.runtimeType) {
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
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOneProductFamily<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneProductFamily(
    Variables$Mutation$CreateOneProductFamily instance,
    TRes Function(Variables$Mutation$CreateOneProductFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneProductFamily;

  factory CopyWith$Variables$Mutation$CreateOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneProductFamily;

  TRes call({Input$ProductFamilyCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProductFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneProductFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneProductFamily _instance;

  final TRes Function(Variables$Mutation$CreateOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneProductFamily._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductFamilyCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$CreateOneProductFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneProductFamily(this._res);

  TRes _res;

  call({Input$ProductFamilyCreateInput? data}) => _res;
}

class Mutation$CreateOneProductFamily {
  Mutation$CreateOneProductFamily({
    required this.createOneProductFamily,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneProductFamily.fromJson(Map<String, dynamic> json) {
    final l$createOneProductFamily = json['createOneProductFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProductFamily(
      createOneProductFamily:
          Mutation$CreateOneProductFamily$createOneProductFamily.fromJson(
              (l$createOneProductFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneProductFamily$createOneProductFamily
      createOneProductFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneProductFamily = createOneProductFamily;
    _resultData['createOneProductFamily'] = l$createOneProductFamily.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneProductFamily = createOneProductFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneProductFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneProductFamily = createOneProductFamily;
    final lOther$createOneProductFamily = other.createOneProductFamily;
    if (l$createOneProductFamily != lOther$createOneProductFamily) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProductFamily
    on Mutation$CreateOneProductFamily {
  CopyWith$Mutation$CreateOneProductFamily<Mutation$CreateOneProductFamily>
      get copyWith => CopyWith$Mutation$CreateOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProductFamily<TRes> {
  factory CopyWith$Mutation$CreateOneProductFamily(
    Mutation$CreateOneProductFamily instance,
    TRes Function(Mutation$CreateOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$CreateOneProductFamily;

  factory CopyWith$Mutation$CreateOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProductFamily;

  TRes call({
    Mutation$CreateOneProductFamily$createOneProductFamily?
        createOneProductFamily,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<TRes>
      get createOneProductFamily;
}

class _CopyWithImpl$Mutation$CreateOneProductFamily<TRes>
    implements CopyWith$Mutation$CreateOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$CreateOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProductFamily _instance;

  final TRes Function(Mutation$CreateOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneProductFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProductFamily(
        createOneProductFamily: createOneProductFamily == _undefined ||
                createOneProductFamily == null
            ? _instance.createOneProductFamily
            : (createOneProductFamily
                as Mutation$CreateOneProductFamily$createOneProductFamily),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<TRes>
      get createOneProductFamily {
    final local$createOneProductFamily = _instance.createOneProductFamily;
    return CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily(
        local$createOneProductFamily, (e) => call(createOneProductFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneProductFamily<TRes>
    implements CopyWith$Mutation$CreateOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProductFamily(this._res);

  TRes _res;

  call({
    Mutation$CreateOneProductFamily$createOneProductFamily?
        createOneProductFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<TRes>
      get createOneProductFamily =>
          CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily.stub(
              _res);
}

const documentNodeMutationCreateOneProductFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneProductFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFamilyCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneProductFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOneProductFamily _parserFn$Mutation$CreateOneProductFamily(
        Map<String, dynamic> data) =>
    Mutation$CreateOneProductFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneProductFamily = FutureOr<void>
    Function(
  dynamic,
  Mutation$CreateOneProductFamily?,
);

class Options$Mutation$CreateOneProductFamily
    extends graphql.MutationOptions<Mutation$CreateOneProductFamily> {
  Options$Mutation$CreateOneProductFamily({
    String? operationName,
    required Variables$Mutation$CreateOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneProductFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneProductFamily>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOneProductFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneProductFamily,
          parserFn: _parserFn$Mutation$CreateOneProductFamily,
        );

  final OnMutationCompleted$Mutation$CreateOneProductFamily?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneProductFamily
    extends graphql.WatchQueryOptions<Mutation$CreateOneProductFamily> {
  WatchOptions$Mutation$CreateOneProductFamily({
    String? operationName,
    required Variables$Mutation$CreateOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateOneProductFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneProductFamily,
        );
}

extension ClientExtension$Mutation$CreateOneProductFamily
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneProductFamily>>
      mutate$CreateOneProductFamily(
              Options$Mutation$CreateOneProductFamily options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneProductFamily>
      watchMutation$CreateOneProductFamily(
              WatchOptions$Mutation$CreateOneProductFamily options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneProductFamily$createOneProductFamily {
  Mutation$CreateOneProductFamily$createOneProductFamily({
    required this.id,
    this.$__typename = 'ProductFamily',
  });

  factory Mutation$CreateOneProductFamily$createOneProductFamily.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProductFamily$createOneProductFamily(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProductFamily$createOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneProductFamily$createOneProductFamily
    on Mutation$CreateOneProductFamily$createOneProductFamily {
  CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<
          Mutation$CreateOneProductFamily$createOneProductFamily>
      get copyWith =>
          CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<
    TRes> {
  factory CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily(
    Mutation$CreateOneProductFamily$createOneProductFamily instance,
    TRes Function(Mutation$CreateOneProductFamily$createOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$CreateOneProductFamily$createOneProductFamily;

  factory CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProductFamily$createOneProductFamily;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneProductFamily$createOneProductFamily<TRes>
    implements
        CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$CreateOneProductFamily$createOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProductFamily$createOneProductFamily _instance;

  final TRes Function(Mutation$CreateOneProductFamily$createOneProductFamily)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProductFamily$createOneProductFamily(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneProductFamily$createOneProductFamily<
        TRes>
    implements
        CopyWith$Mutation$CreateOneProductFamily$createOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProductFamily$createOneProductFamily(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteOneProductFamily {
  factory Variables$Mutation$DeleteOneProductFamily(
          {required Input$ProductFamilyWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneProductFamily._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneProductFamily._(this._$data);

  factory Variables$Mutation$DeleteOneProductFamily.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$ProductFamilyWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneProductFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductFamilyWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneProductFamily<
          Variables$Mutation$DeleteOneProductFamily>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneProductFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteOneProductFamily<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneProductFamily(
    Variables$Mutation$DeleteOneProductFamily instance,
    TRes Function(Variables$Mutation$DeleteOneProductFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneProductFamily;

  factory CopyWith$Variables$Mutation$DeleteOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneProductFamily;

  TRes call({Input$ProductFamilyWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProductFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneProductFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneProductFamily _instance;

  final TRes Function(Variables$Mutation$DeleteOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneProductFamily._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$ProductFamilyWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneProductFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneProductFamily(this._res);

  TRes _res;

  call({Input$ProductFamilyWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneProductFamily {
  Mutation$DeleteOneProductFamily({
    this.deleteOneProductFamily,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneProductFamily.fromJson(Map<String, dynamic> json) {
    final l$deleteOneProductFamily = json['deleteOneProductFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProductFamily(
      deleteOneProductFamily: l$deleteOneProductFamily == null
          ? null
          : Mutation$DeleteOneProductFamily$deleteOneProductFamily.fromJson(
              (l$deleteOneProductFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneProductFamily$deleteOneProductFamily?
      deleteOneProductFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneProductFamily = deleteOneProductFamily;
    _resultData['deleteOneProductFamily'] = l$deleteOneProductFamily?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneProductFamily = deleteOneProductFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneProductFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneProductFamily = deleteOneProductFamily;
    final lOther$deleteOneProductFamily = other.deleteOneProductFamily;
    if (l$deleteOneProductFamily != lOther$deleteOneProductFamily) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProductFamily
    on Mutation$DeleteOneProductFamily {
  CopyWith$Mutation$DeleteOneProductFamily<Mutation$DeleteOneProductFamily>
      get copyWith => CopyWith$Mutation$DeleteOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProductFamily<TRes> {
  factory CopyWith$Mutation$DeleteOneProductFamily(
    Mutation$DeleteOneProductFamily instance,
    TRes Function(Mutation$DeleteOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProductFamily;

  factory CopyWith$Mutation$DeleteOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProductFamily;

  TRes call({
    Mutation$DeleteOneProductFamily$deleteOneProductFamily?
        deleteOneProductFamily,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes>
      get deleteOneProductFamily;
}

class _CopyWithImpl$Mutation$DeleteOneProductFamily<TRes>
    implements CopyWith$Mutation$DeleteOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProductFamily _instance;

  final TRes Function(Mutation$DeleteOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneProductFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProductFamily(
        deleteOneProductFamily: deleteOneProductFamily == _undefined
            ? _instance.deleteOneProductFamily
            : (deleteOneProductFamily
                as Mutation$DeleteOneProductFamily$deleteOneProductFamily?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes>
      get deleteOneProductFamily {
    final local$deleteOneProductFamily = _instance.deleteOneProductFamily;
    return local$deleteOneProductFamily == null
        ? CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily(
            local$deleteOneProductFamily,
            (e) => call(deleteOneProductFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneProductFamily<TRes>
    implements CopyWith$Mutation$DeleteOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProductFamily(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneProductFamily$deleteOneProductFamily?
        deleteOneProductFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes>
      get deleteOneProductFamily =>
          CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily.stub(
              _res);
}

const documentNodeMutationDeleteOneProductFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneProductFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFamilyWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneProductFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteOneProductFamily _parserFn$Mutation$DeleteOneProductFamily(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneProductFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneProductFamily = FutureOr<void>
    Function(
  dynamic,
  Mutation$DeleteOneProductFamily?,
);

class Options$Mutation$DeleteOneProductFamily
    extends graphql.MutationOptions<Mutation$DeleteOneProductFamily> {
  Options$Mutation$DeleteOneProductFamily({
    String? operationName,
    required Variables$Mutation$DeleteOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneProductFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneProductFamily>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOneProductFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneProductFamily,
          parserFn: _parserFn$Mutation$DeleteOneProductFamily,
        );

  final OnMutationCompleted$Mutation$DeleteOneProductFamily?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneProductFamily
    extends graphql.WatchQueryOptions<Mutation$DeleteOneProductFamily> {
  WatchOptions$Mutation$DeleteOneProductFamily({
    String? operationName,
    required Variables$Mutation$DeleteOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteOneProductFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneProductFamily,
        );
}

extension ClientExtension$Mutation$DeleteOneProductFamily
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneProductFamily>>
      mutate$DeleteOneProductFamily(
              Options$Mutation$DeleteOneProductFamily options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneProductFamily>
      watchMutation$DeleteOneProductFamily(
              WatchOptions$Mutation$DeleteOneProductFamily options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneProductFamily$deleteOneProductFamily {
  Mutation$DeleteOneProductFamily$deleteOneProductFamily({
    required this.id,
    this.$__typename = 'ProductFamily',
  });

  factory Mutation$DeleteOneProductFamily$deleteOneProductFamily.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneProductFamily$deleteOneProductFamily(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneProductFamily$deleteOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteOneProductFamily$deleteOneProductFamily
    on Mutation$DeleteOneProductFamily$deleteOneProductFamily {
  CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<
          Mutation$DeleteOneProductFamily$deleteOneProductFamily>
      get copyWith =>
          CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<
    TRes> {
  factory CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily(
    Mutation$DeleteOneProductFamily$deleteOneProductFamily instance,
    TRes Function(Mutation$DeleteOneProductFamily$deleteOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily;

  factory CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes>
    implements
        CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneProductFamily$deleteOneProductFamily _instance;

  final TRes Function(Mutation$DeleteOneProductFamily$deleteOneProductFamily)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneProductFamily$deleteOneProductFamily(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily<
        TRes>
    implements
        CopyWith$Mutation$DeleteOneProductFamily$deleteOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneProductFamily$deleteOneProductFamily(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneProductFamily {
  factory Variables$Mutation$UpdateOneProductFamily({
    required Input$ProductFamilyUpdateInput data,
    required Input$ProductFamilyWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneProductFamily._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneProductFamily._(this._$data);

  factory Variables$Mutation$UpdateOneProductFamily.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$ProductFamilyUpdateInput.fromJson(
        (l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$ProductFamilyWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneProductFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyUpdateInput get data =>
      (_$data['data'] as Input$ProductFamilyUpdateInput);
  Input$ProductFamilyWhereUniqueInput get where =>
      (_$data['where'] as Input$ProductFamilyWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneProductFamily<
          Variables$Mutation$UpdateOneProductFamily>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneProductFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$where = where;
    return Object.hashAll([
      l$data,
      l$where,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOneProductFamily<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneProductFamily(
    Variables$Mutation$UpdateOneProductFamily instance,
    TRes Function(Variables$Mutation$UpdateOneProductFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneProductFamily;

  factory CopyWith$Variables$Mutation$UpdateOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneProductFamily;

  TRes call({
    Input$ProductFamilyUpdateInput? data,
    Input$ProductFamilyWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProductFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneProductFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneProductFamily _instance;

  final TRes Function(Variables$Mutation$UpdateOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneProductFamily._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$ProductFamilyUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$ProductFamilyWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneProductFamily<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneProductFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneProductFamily(this._res);

  TRes _res;

  call({
    Input$ProductFamilyUpdateInput? data,
    Input$ProductFamilyWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneProductFamily {
  Mutation$UpdateOneProductFamily({
    this.updateOneProductFamily,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneProductFamily.fromJson(Map<String, dynamic> json) {
    final l$updateOneProductFamily = json['updateOneProductFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProductFamily(
      updateOneProductFamily: l$updateOneProductFamily == null
          ? null
          : Mutation$UpdateOneProductFamily$updateOneProductFamily.fromJson(
              (l$updateOneProductFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneProductFamily$updateOneProductFamily?
      updateOneProductFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneProductFamily = updateOneProductFamily;
    _resultData['updateOneProductFamily'] = l$updateOneProductFamily?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneProductFamily = updateOneProductFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneProductFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneProductFamily = updateOneProductFamily;
    final lOther$updateOneProductFamily = other.updateOneProductFamily;
    if (l$updateOneProductFamily != lOther$updateOneProductFamily) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProductFamily
    on Mutation$UpdateOneProductFamily {
  CopyWith$Mutation$UpdateOneProductFamily<Mutation$UpdateOneProductFamily>
      get copyWith => CopyWith$Mutation$UpdateOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProductFamily<TRes> {
  factory CopyWith$Mutation$UpdateOneProductFamily(
    Mutation$UpdateOneProductFamily instance,
    TRes Function(Mutation$UpdateOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProductFamily;

  factory CopyWith$Mutation$UpdateOneProductFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProductFamily;

  TRes call({
    Mutation$UpdateOneProductFamily$updateOneProductFamily?
        updateOneProductFamily,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes>
      get updateOneProductFamily;
}

class _CopyWithImpl$Mutation$UpdateOneProductFamily<TRes>
    implements CopyWith$Mutation$UpdateOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProductFamily _instance;

  final TRes Function(Mutation$UpdateOneProductFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneProductFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProductFamily(
        updateOneProductFamily: updateOneProductFamily == _undefined
            ? _instance.updateOneProductFamily
            : (updateOneProductFamily
                as Mutation$UpdateOneProductFamily$updateOneProductFamily?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes>
      get updateOneProductFamily {
    final local$updateOneProductFamily = _instance.updateOneProductFamily;
    return local$updateOneProductFamily == null
        ? CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily(
            local$updateOneProductFamily,
            (e) => call(updateOneProductFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneProductFamily<TRes>
    implements CopyWith$Mutation$UpdateOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProductFamily(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneProductFamily$updateOneProductFamily?
        updateOneProductFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes>
      get updateOneProductFamily =>
          CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily.stub(
              _res);
}

const documentNodeMutationUpdateOneProductFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneProductFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFamilyUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFamilyWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneProductFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateOneProductFamily _parserFn$Mutation$UpdateOneProductFamily(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneProductFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneProductFamily = FutureOr<void>
    Function(
  dynamic,
  Mutation$UpdateOneProductFamily?,
);

class Options$Mutation$UpdateOneProductFamily
    extends graphql.MutationOptions<Mutation$UpdateOneProductFamily> {
  Options$Mutation$UpdateOneProductFamily({
    String? operationName,
    required Variables$Mutation$UpdateOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneProductFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneProductFamily>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOneProductFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneProductFamily,
          parserFn: _parserFn$Mutation$UpdateOneProductFamily,
        );

  final OnMutationCompleted$Mutation$UpdateOneProductFamily?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneProductFamily
    extends graphql.WatchQueryOptions<Mutation$UpdateOneProductFamily> {
  WatchOptions$Mutation$UpdateOneProductFamily({
    String? operationName,
    required Variables$Mutation$UpdateOneProductFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationUpdateOneProductFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneProductFamily,
        );
}

extension ClientExtension$Mutation$UpdateOneProductFamily
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneProductFamily>>
      mutate$UpdateOneProductFamily(
              Options$Mutation$UpdateOneProductFamily options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneProductFamily>
      watchMutation$UpdateOneProductFamily(
              WatchOptions$Mutation$UpdateOneProductFamily options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneProductFamily$updateOneProductFamily {
  Mutation$UpdateOneProductFamily$updateOneProductFamily({
    required this.id,
    this.$__typename = 'ProductFamily',
  });

  factory Mutation$UpdateOneProductFamily$updateOneProductFamily.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneProductFamily$updateOneProductFamily(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneProductFamily$updateOneProductFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOneProductFamily$updateOneProductFamily
    on Mutation$UpdateOneProductFamily$updateOneProductFamily {
  CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<
          Mutation$UpdateOneProductFamily$updateOneProductFamily>
      get copyWith =>
          CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<
    TRes> {
  factory CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily(
    Mutation$UpdateOneProductFamily$updateOneProductFamily instance,
    TRes Function(Mutation$UpdateOneProductFamily$updateOneProductFamily) then,
  ) = _CopyWithImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily;

  factory CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes>
    implements
        CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes> {
  _CopyWithImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneProductFamily$updateOneProductFamily _instance;

  final TRes Function(Mutation$UpdateOneProductFamily$updateOneProductFamily)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneProductFamily$updateOneProductFamily(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily<
        TRes>
    implements
        CopyWith$Mutation$UpdateOneProductFamily$updateOneProductFamily<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneProductFamily$updateOneProductFamily(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ProductFamilies {
  factory Variables$Query$ProductFamilies(
          {Input$ProductFamilyWhereInput? where}) =>
      Variables$Query$ProductFamilies._({
        if (where != null) r'where': where,
      });

  Variables$Query$ProductFamilies._(this._$data);

  factory Variables$Query$ProductFamilies.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ProductFamilyWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$ProductFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductFamilyWhereInput? get where =>
      (_$data['where'] as Input$ProductFamilyWhereInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$ProductFamilies<Variables$Query$ProductFamilies>
      get copyWith => CopyWith$Variables$Query$ProductFamilies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ProductFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$ProductFamilies<TRes> {
  factory CopyWith$Variables$Query$ProductFamilies(
    Variables$Query$ProductFamilies instance,
    TRes Function(Variables$Query$ProductFamilies) then,
  ) = _CopyWithImpl$Variables$Query$ProductFamilies;

  factory CopyWith$Variables$Query$ProductFamilies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProductFamilies;

  TRes call({Input$ProductFamilyWhereInput? where});
}

class _CopyWithImpl$Variables$Query$ProductFamilies<TRes>
    implements CopyWith$Variables$Query$ProductFamilies<TRes> {
  _CopyWithImpl$Variables$Query$ProductFamilies(
    this._instance,
    this._then,
  );

  final Variables$Query$ProductFamilies _instance;

  final TRes Function(Variables$Query$ProductFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$ProductFamilies._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$ProductFamilyWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ProductFamilies<TRes>
    implements CopyWith$Variables$Query$ProductFamilies<TRes> {
  _CopyWithStubImpl$Variables$Query$ProductFamilies(this._res);

  TRes _res;

  call({Input$ProductFamilyWhereInput? where}) => _res;
}

class Query$ProductFamilies {
  Query$ProductFamilies({
    required this.productFamilies,
    this.$__typename = 'Query',
  });

  factory Query$ProductFamilies.fromJson(Map<String, dynamic> json) {
    final l$productFamilies = json['productFamilies'];
    final l$$__typename = json['__typename'];
    return Query$ProductFamilies(
      productFamilies: (l$productFamilies as List<dynamic>)
          .map((e) => Query$ProductFamilies$productFamilies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProductFamilies$productFamilies> productFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productFamilies = productFamilies;
    _resultData['productFamilies'] =
        l$productFamilies.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productFamilies = productFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$productFamilies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProductFamilies) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$productFamilies = productFamilies;
    final lOther$productFamilies = other.productFamilies;
    if (l$productFamilies.length != lOther$productFamilies.length) {
      return false;
    }
    for (int i = 0; i < l$productFamilies.length; i++) {
      final l$productFamilies$entry = l$productFamilies[i];
      final lOther$productFamilies$entry = lOther$productFamilies[i];
      if (l$productFamilies$entry != lOther$productFamilies$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ProductFamilies on Query$ProductFamilies {
  CopyWith$Query$ProductFamilies<Query$ProductFamilies> get copyWith =>
      CopyWith$Query$ProductFamilies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProductFamilies<TRes> {
  factory CopyWith$Query$ProductFamilies(
    Query$ProductFamilies instance,
    TRes Function(Query$ProductFamilies) then,
  ) = _CopyWithImpl$Query$ProductFamilies;

  factory CopyWith$Query$ProductFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductFamilies;

  TRes call({
    List<Query$ProductFamilies$productFamilies>? productFamilies,
    String? $__typename,
  });
  TRes productFamilies(
      Iterable<Query$ProductFamilies$productFamilies> Function(
              Iterable<
                  CopyWith$Query$ProductFamilies$productFamilies<
                      Query$ProductFamilies$productFamilies>>)
          _fn);
}

class _CopyWithImpl$Query$ProductFamilies<TRes>
    implements CopyWith$Query$ProductFamilies<TRes> {
  _CopyWithImpl$Query$ProductFamilies(
    this._instance,
    this._then,
  );

  final Query$ProductFamilies _instance;

  final TRes Function(Query$ProductFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productFamilies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductFamilies(
        productFamilies: productFamilies == _undefined ||
                productFamilies == null
            ? _instance.productFamilies
            : (productFamilies as List<Query$ProductFamilies$productFamilies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes productFamilies(
          Iterable<Query$ProductFamilies$productFamilies> Function(
                  Iterable<
                      CopyWith$Query$ProductFamilies$productFamilies<
                          Query$ProductFamilies$productFamilies>>)
              _fn) =>
      call(
          productFamilies: _fn(_instance.productFamilies
              .map((e) => CopyWith$Query$ProductFamilies$productFamilies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ProductFamilies<TRes>
    implements CopyWith$Query$ProductFamilies<TRes> {
  _CopyWithStubImpl$Query$ProductFamilies(this._res);

  TRes _res;

  call({
    List<Query$ProductFamilies$productFamilies>? productFamilies,
    String? $__typename,
  }) =>
      _res;
  productFamilies(_fn) => _res;
}

const documentNodeQueryProductFamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProductFamilies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductFamilyWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'productFamilies'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$ProductFamilies _parserFn$Query$ProductFamilies(
        Map<String, dynamic> data) =>
    Query$ProductFamilies.fromJson(data);

class Options$Query$ProductFamilies
    extends graphql.QueryOptions<Query$ProductFamilies> {
  Options$Query$ProductFamilies({
    String? operationName,
    Variables$Query$ProductFamilies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryProductFamilies,
          parserFn: _parserFn$Query$ProductFamilies,
        );
}

class WatchOptions$Query$ProductFamilies
    extends graphql.WatchQueryOptions<Query$ProductFamilies> {
  WatchOptions$Query$ProductFamilies({
    String? operationName,
    Variables$Query$ProductFamilies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryProductFamilies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProductFamilies,
        );
}

class FetchMoreOptions$Query$ProductFamilies extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProductFamilies({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ProductFamilies? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryProductFamilies,
        );
}

extension ClientExtension$Query$ProductFamilies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProductFamilies>> query$ProductFamilies(
          [Options$Query$ProductFamilies? options]) async =>
      await this.query(options ?? Options$Query$ProductFamilies());
  graphql.ObservableQuery<Query$ProductFamilies> watchQuery$ProductFamilies(
          [WatchOptions$Query$ProductFamilies? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ProductFamilies());
  void writeQuery$ProductFamilies({
    required Query$ProductFamilies data,
    Variables$Query$ProductFamilies? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryProductFamilies),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProductFamilies? readQuery$ProductFamilies({
    Variables$Query$ProductFamilies? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryProductFamilies),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProductFamilies.fromJson(result);
  }
}

class Query$ProductFamilies$productFamilies {
  Query$ProductFamilies$productFamilies({
    required this.id,
    required this.name,
    this.$__typename = 'ProductFamily',
  });

  factory Query$ProductFamilies$productFamilies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$ProductFamilies$productFamilies(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProductFamilies$productFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ProductFamilies$productFamilies
    on Query$ProductFamilies$productFamilies {
  CopyWith$Query$ProductFamilies$productFamilies<
          Query$ProductFamilies$productFamilies>
      get copyWith => CopyWith$Query$ProductFamilies$productFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductFamilies$productFamilies<TRes> {
  factory CopyWith$Query$ProductFamilies$productFamilies(
    Query$ProductFamilies$productFamilies instance,
    TRes Function(Query$ProductFamilies$productFamilies) then,
  ) = _CopyWithImpl$Query$ProductFamilies$productFamilies;

  factory CopyWith$Query$ProductFamilies$productFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductFamilies$productFamilies;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProductFamilies$productFamilies<TRes>
    implements CopyWith$Query$ProductFamilies$productFamilies<TRes> {
  _CopyWithImpl$Query$ProductFamilies$productFamilies(
    this._instance,
    this._then,
  );

  final Query$ProductFamilies$productFamilies _instance;

  final TRes Function(Query$ProductFamilies$productFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductFamilies$productFamilies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProductFamilies$productFamilies<TRes>
    implements CopyWith$Query$ProductFamilies$productFamilies<TRes> {
  _CopyWithStubImpl$Query$ProductFamilies$productFamilies(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
