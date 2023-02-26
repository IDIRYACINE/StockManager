import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema2.graphql.dart';
import 'schema3.graphql.dart';

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
    List<Query$FindManyProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  });
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
        ProductModel: ProductModel == _undefined || ProductModel == null
            ? _instance.ProductModel
            : (ProductModel
                as List<Query$FindManyProducts$findManyProducts$ProductModel>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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
    List<Query$FindManyProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  }) =>
      _res;
  ProductModel(_fn) => _res;
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
    String? $__typename,
  });
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family;
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family {
    final local$family = _instance.family;
    return CopyWith$Query$FindFirstProducts$findFirstProducts$family(
        local$family, (e) => call(family: e));
  }
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
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindFirstProducts$findFirstProducts$family<TRes> get family =>
      CopyWith$Query$FindFirstProducts$findFirstProducts$family.stub(_res);
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
