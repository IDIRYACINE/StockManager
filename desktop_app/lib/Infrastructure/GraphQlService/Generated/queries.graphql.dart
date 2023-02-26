import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema2.graphql.dart';
import 'schema3.graphql.dart';
import 'schema5.graphql.dart';

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
            name: NameNode(value: 'family_id'),
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
            name: NameNode(value: 'ProductModel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'size_id'),
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
    required this.buyingPrice,
    required this.description,
    required this.family_id,
    required this.name,
    required this.picture,
    required this.product_id,
    required this.reference,
    required this.sellingPrice,
    required this.ProductModel,
    this.$__typename = 'Products',
  });

  factory Mutation$CreateOneProducts$createOneProducts.fromJson(
      Map<String, dynamic> json) {
    final l$buyingPrice = json['buyingPrice'];
    final l$description = json['description'];
    final l$family_id = json['family_id'];
    final l$name = json['name'];
    final l$picture = json['picture'];
    final l$product_id = json['product_id'];
    final l$reference = json['reference'];
    final l$sellingPrice = json['sellingPrice'];
    final l$ProductModel = json['ProductModel'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProducts$createOneProducts(
      buyingPrice: (l$buyingPrice as num).toDouble(),
      description: (l$description as String),
      family_id: (l$family_id as int),
      name: (l$name as String),
      picture: (l$picture as String),
      product_id: (l$product_id as int),
      reference: (l$reference as int),
      sellingPrice: (l$sellingPrice as num).toDouble(),
      ProductModel: (l$ProductModel as List<dynamic>)
          .map((e) => Mutation$CreateOneProducts$createOneProducts$ProductModel
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double buyingPrice;

  final String description;

  final int family_id;

  final String name;

  final String picture;

  final int product_id;

  final int reference;

  final double sellingPrice;

  final List<Mutation$CreateOneProducts$createOneProducts$ProductModel>
      ProductModel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyingPrice = buyingPrice;
    _resultData['buyingPrice'] = l$buyingPrice;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$family_id = family_id;
    _resultData['family_id'] = l$family_id;
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
    final l$family_id = family_id;
    final l$name = name;
    final l$picture = picture;
    final l$product_id = product_id;
    final l$reference = reference;
    final l$sellingPrice = sellingPrice;
    final l$ProductModel = ProductModel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buyingPrice,
      l$description,
      l$family_id,
      l$name,
      l$picture,
      l$product_id,
      l$reference,
      l$sellingPrice,
      Object.hashAll(l$ProductModel.map((v) => v)),
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
    final l$family_id = family_id;
    final lOther$family_id = other.family_id;
    if (l$family_id != lOther$family_id) {
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
    double? buyingPrice,
    String? description,
    int? family_id,
    String? name,
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    List<Mutation$CreateOneProducts$createOneProducts$ProductModel>?
        ProductModel,
    String? $__typename,
  });
  TRes ProductModel(
      Iterable<Mutation$CreateOneProducts$createOneProducts$ProductModel> Function(
              Iterable<
                  CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
                      Mutation$CreateOneProducts$createOneProducts$ProductModel>>)
          _fn);
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
    Object? buyingPrice = _undefined,
    Object? description = _undefined,
    Object? family_id = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
    Object? product_id = _undefined,
    Object? reference = _undefined,
    Object? sellingPrice = _undefined,
    Object? ProductModel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProducts$createOneProducts(
        buyingPrice: buyingPrice == _undefined || buyingPrice == null
            ? _instance.buyingPrice
            : (buyingPrice as double),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        family_id: family_id == _undefined || family_id == null
            ? _instance.family_id
            : (family_id as int),
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
        ProductModel: ProductModel == _undefined || ProductModel == null
            ? _instance.ProductModel
            : (ProductModel as List<
                Mutation$CreateOneProducts$createOneProducts$ProductModel>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ProductModel(
          Iterable<Mutation$CreateOneProducts$createOneProducts$ProductModel> Function(
                  Iterable<
                      CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
                          Mutation$CreateOneProducts$createOneProducts$ProductModel>>)
              _fn) =>
      call(
          ProductModel: _fn(_instance.ProductModel.map((e) =>
              CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts<TRes>
    implements CopyWith$Mutation$CreateOneProducts$createOneProducts<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts(this._res);

  TRes _res;

  call({
    double? buyingPrice,
    String? description,
    int? family_id,
    String? name,
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    List<Mutation$CreateOneProducts$createOneProducts$ProductModel>?
        ProductModel,
    String? $__typename,
  }) =>
      _res;
  ProductModel(_fn) => _res;
}

class Mutation$CreateOneProducts$createOneProducts$ProductModel {
  Mutation$CreateOneProducts$createOneProducts$ProductModel({
    required this.color_id,
    required this.product_id,
    required this.size_id,
    required this.quantity,
    this.$__typename = 'ProductModel',
  });

  factory Mutation$CreateOneProducts$createOneProducts$ProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$color_id = json['color_id'];
    final l$product_id = json['product_id'];
    final l$size_id = json['size_id'];
    final l$quantity = json['quantity'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneProducts$createOneProducts$ProductModel(
      color_id: (l$color_id as int),
      product_id: (l$product_id as int),
      size_id: (l$size_id as int),
      quantity: (l$quantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int color_id;

  final int product_id;

  final int size_id;

  final int quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$color_id = color_id;
    _resultData['color_id'] = l$color_id;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$size_id = size_id;
    _resultData['size_id'] = l$size_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$color_id = color_id;
    final l$product_id = product_id;
    final l$size_id = size_id;
    final l$quantity = quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$color_id,
      l$product_id,
      l$size_id,
      l$quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneProducts$createOneProducts$ProductModel) ||
        runtimeType != other.runtimeType) {
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
    final l$size_id = size_id;
    final lOther$size_id = other.size_id;
    if (l$size_id != lOther$size_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Mutation$CreateOneProducts$createOneProducts$ProductModel
    on Mutation$CreateOneProducts$createOneProducts$ProductModel {
  CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
          Mutation$CreateOneProducts$createOneProducts$ProductModel>
      get copyWith =>
          CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
    TRes> {
  factory CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel(
    Mutation$CreateOneProducts$createOneProducts$ProductModel instance,
    TRes Function(Mutation$CreateOneProducts$createOneProducts$ProductModel)
        then,
  ) = _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel;

  factory CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel;

  TRes call({
    int? color_id,
    int? product_id,
    int? size_id,
    int? quantity,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel<
        TRes>
    implements
        CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
            TRes> {
  _CopyWithImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneProducts$createOneProducts$ProductModel _instance;

  final TRes Function(Mutation$CreateOneProducts$createOneProducts$ProductModel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color_id = _undefined,
    Object? product_id = _undefined,
    Object? size_id = _undefined,
    Object? quantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneProducts$createOneProducts$ProductModel(
        color_id: color_id == _undefined || color_id == null
            ? _instance.color_id
            : (color_id as int),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        size_id: size_id == _undefined || size_id == null
            ? _instance.size_id
            : (size_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel<
        TRes>
    implements
        CopyWith$Mutation$CreateOneProducts$createOneProducts$ProductModel<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateOneProducts$createOneProducts$ProductModel(
      this._res);

  TRes _res;

  call({
    int? color_id,
    int? product_id,
    int? size_id,
    int? quantity,
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

class Query$LoadAllProducts {
  Query$LoadAllProducts({
    required this.findManyProducts,
    this.$__typename = 'Query',
  });

  factory Query$LoadAllProducts.fromJson(Map<String, dynamic> json) {
    final l$findManyProducts = json['findManyProducts'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllProducts(
      findManyProducts: (l$findManyProducts as List<dynamic>)
          .map((e) => Query$LoadAllProducts$findManyProducts.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LoadAllProducts$findManyProducts> findManyProducts;

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
    if (!(other is Query$LoadAllProducts) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$LoadAllProducts on Query$LoadAllProducts {
  CopyWith$Query$LoadAllProducts<Query$LoadAllProducts> get copyWith =>
      CopyWith$Query$LoadAllProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadAllProducts<TRes> {
  factory CopyWith$Query$LoadAllProducts(
    Query$LoadAllProducts instance,
    TRes Function(Query$LoadAllProducts) then,
  ) = _CopyWithImpl$Query$LoadAllProducts;

  factory CopyWith$Query$LoadAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllProducts;

  TRes call({
    List<Query$LoadAllProducts$findManyProducts>? findManyProducts,
    String? $__typename,
  });
  TRes findManyProducts(
      Iterable<Query$LoadAllProducts$findManyProducts> Function(
              Iterable<
                  CopyWith$Query$LoadAllProducts$findManyProducts<
                      Query$LoadAllProducts$findManyProducts>>)
          _fn);
}

class _CopyWithImpl$Query$LoadAllProducts<TRes>
    implements CopyWith$Query$LoadAllProducts<TRes> {
  _CopyWithImpl$Query$LoadAllProducts(
    this._instance,
    this._then,
  );

  final Query$LoadAllProducts _instance;

  final TRes Function(Query$LoadAllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManyProducts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllProducts(
        findManyProducts:
            findManyProducts == _undefined || findManyProducts == null
                ? _instance.findManyProducts
                : (findManyProducts
                    as List<Query$LoadAllProducts$findManyProducts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManyProducts(
          Iterable<Query$LoadAllProducts$findManyProducts> Function(
                  Iterable<
                      CopyWith$Query$LoadAllProducts$findManyProducts<
                          Query$LoadAllProducts$findManyProducts>>)
              _fn) =>
      call(
          findManyProducts: _fn(_instance.findManyProducts
              .map((e) => CopyWith$Query$LoadAllProducts$findManyProducts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$LoadAllProducts<TRes>
    implements CopyWith$Query$LoadAllProducts<TRes> {
  _CopyWithStubImpl$Query$LoadAllProducts(this._res);

  TRes _res;

  call({
    List<Query$LoadAllProducts$findManyProducts>? findManyProducts,
    String? $__typename,
  }) =>
      _res;
  findManyProducts(_fn) => _res;
}

const documentNodeQueryLoadAllProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LoadAllProducts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManyProducts'),
        alias: null,
        arguments: [],
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
Query$LoadAllProducts _parserFn$Query$LoadAllProducts(
        Map<String, dynamic> data) =>
    Query$LoadAllProducts.fromJson(data);

class Options$Query$LoadAllProducts
    extends graphql.QueryOptions<Query$LoadAllProducts> {
  Options$Query$LoadAllProducts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryLoadAllProducts,
          parserFn: _parserFn$Query$LoadAllProducts,
        );
}

class WatchOptions$Query$LoadAllProducts
    extends graphql.WatchQueryOptions<Query$LoadAllProducts> {
  WatchOptions$Query$LoadAllProducts({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryLoadAllProducts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LoadAllProducts,
        );
}

class FetchMoreOptions$Query$LoadAllProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LoadAllProducts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLoadAllProducts,
        );
}

extension ClientExtension$Query$LoadAllProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LoadAllProducts>> query$LoadAllProducts(
          [Options$Query$LoadAllProducts? options]) async =>
      await this.query(options ?? Options$Query$LoadAllProducts());
  graphql.ObservableQuery<Query$LoadAllProducts> watchQuery$LoadAllProducts(
          [WatchOptions$Query$LoadAllProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LoadAllProducts());
  void writeQuery$LoadAllProducts({
    required Query$LoadAllProducts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLoadAllProducts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LoadAllProducts? readQuery$LoadAllProducts({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLoadAllProducts)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LoadAllProducts.fromJson(result);
  }
}

class Query$LoadAllProducts$findManyProducts {
  Query$LoadAllProducts$findManyProducts({
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

  factory Query$LoadAllProducts$findManyProducts.fromJson(
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
    return Query$LoadAllProducts$findManyProducts(
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
              Query$LoadAllProducts$findManyProducts$ProductModel.fromJson(
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

  final List<Query$LoadAllProducts$findManyProducts$ProductModel> ProductModel;

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
    if (!(other is Query$LoadAllProducts$findManyProducts) ||
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

extension UtilityExtension$Query$LoadAllProducts$findManyProducts
    on Query$LoadAllProducts$findManyProducts {
  CopyWith$Query$LoadAllProducts$findManyProducts<
          Query$LoadAllProducts$findManyProducts>
      get copyWith => CopyWith$Query$LoadAllProducts$findManyProducts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllProducts$findManyProducts<TRes> {
  factory CopyWith$Query$LoadAllProducts$findManyProducts(
    Query$LoadAllProducts$findManyProducts instance,
    TRes Function(Query$LoadAllProducts$findManyProducts) then,
  ) = _CopyWithImpl$Query$LoadAllProducts$findManyProducts;

  factory CopyWith$Query$LoadAllProducts$findManyProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts;

  TRes call({
    double? buyingPrice,
    String? description,
    String? name,
    String? picture,
    int? product_id,
    int? reference,
    double? sellingPrice,
    int? family_id,
    List<Query$LoadAllProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  });
  TRes ProductModel(
      Iterable<Query$LoadAllProducts$findManyProducts$ProductModel> Function(
              Iterable<
                  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<
                      Query$LoadAllProducts$findManyProducts$ProductModel>>)
          _fn);
}

class _CopyWithImpl$Query$LoadAllProducts$findManyProducts<TRes>
    implements CopyWith$Query$LoadAllProducts$findManyProducts<TRes> {
  _CopyWithImpl$Query$LoadAllProducts$findManyProducts(
    this._instance,
    this._then,
  );

  final Query$LoadAllProducts$findManyProducts _instance;

  final TRes Function(Query$LoadAllProducts$findManyProducts) _then;

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
      _then(Query$LoadAllProducts$findManyProducts(
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
                as List<Query$LoadAllProducts$findManyProducts$ProductModel>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ProductModel(
          Iterable<Query$LoadAllProducts$findManyProducts$ProductModel> Function(
                  Iterable<
                      CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<
                          Query$LoadAllProducts$findManyProducts$ProductModel>>)
              _fn) =>
      call(
          ProductModel: _fn(_instance.ProductModel.map((e) =>
              CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts<TRes>
    implements CopyWith$Query$LoadAllProducts$findManyProducts<TRes> {
  _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts(this._res);

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
    List<Query$LoadAllProducts$findManyProducts$ProductModel>? ProductModel,
    String? $__typename,
  }) =>
      _res;
  ProductModel(_fn) => _res;
}

class Query$LoadAllProducts$findManyProducts$ProductModel {
  Query$LoadAllProducts$findManyProducts$ProductModel({
    required this.size_id,
    required this.color_id,
    required this.quantity,
    required this.color,
    required this.size,
    this.$__typename = 'ProductModel',
  });

  factory Query$LoadAllProducts$findManyProducts$ProductModel.fromJson(
      Map<String, dynamic> json) {
    final l$size_id = json['size_id'];
    final l$color_id = json['color_id'];
    final l$quantity = json['quantity'];
    final l$color = json['color'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllProducts$findManyProducts$ProductModel(
      size_id: (l$size_id as int),
      color_id: (l$color_id as int),
      quantity: (l$quantity as int),
      color: Query$LoadAllProducts$findManyProducts$ProductModel$color.fromJson(
          (l$color as Map<String, dynamic>)),
      size: Query$LoadAllProducts$findManyProducts$ProductModel$size.fromJson(
          (l$size as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int size_id;

  final int color_id;

  final int quantity;

  final Query$LoadAllProducts$findManyProducts$ProductModel$color color;

  final Query$LoadAllProducts$findManyProducts$ProductModel$size size;

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
    if (!(other is Query$LoadAllProducts$findManyProducts$ProductModel) ||
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

extension UtilityExtension$Query$LoadAllProducts$findManyProducts$ProductModel
    on Query$LoadAllProducts$findManyProducts$ProductModel {
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<
          Query$LoadAllProducts$findManyProducts$ProductModel>
      get copyWith =>
          CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<
    TRes> {
  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel(
    Query$LoadAllProducts$findManyProducts$ProductModel instance,
    TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel) then,
  ) = _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel;

  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel;

  TRes call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$LoadAllProducts$findManyProducts$ProductModel$color? color,
    Query$LoadAllProducts$findManyProducts$ProductModel$size? size,
    String? $__typename,
  });
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<TRes>
      get color;
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<TRes>
      get size;
}

class _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel<TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<TRes> {
  _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel(
    this._instance,
    this._then,
  );

  final Query$LoadAllProducts$findManyProducts$ProductModel _instance;

  final TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel)
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
      _then(Query$LoadAllProducts$findManyProducts$ProductModel(
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
                as Query$LoadAllProducts$findManyProducts$ProductModel$color),
        size: size == _undefined || size == null
            ? _instance.size
            : (size
                as Query$LoadAllProducts$findManyProducts$ProductModel$size),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<TRes>
      get color {
    final local$color = _instance.color;
    return CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color(
        local$color, (e) => call(color: e));
  }

  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<TRes>
      get size {
    final local$size = _instance.size;
    return CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size(
        local$size, (e) => call(size: e));
  }
}

class _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel<
        TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel<TRes> {
  _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel(
      this._res);

  TRes _res;

  call({
    int? size_id,
    int? color_id,
    int? quantity,
    Query$LoadAllProducts$findManyProducts$ProductModel$color? color,
    Query$LoadAllProducts$findManyProducts$ProductModel$size? size,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<TRes>
      get color =>
          CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color
              .stub(_res);
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<TRes>
      get size =>
          CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size
              .stub(_res);
}

class Query$LoadAllProducts$findManyProducts$ProductModel$color {
  Query$LoadAllProducts$findManyProducts$ProductModel$color({
    required this.color,
    this.$__typename = 'Colors',
  });

  factory Query$LoadAllProducts$findManyProducts$ProductModel$color.fromJson(
      Map<String, dynamic> json) {
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllProducts$findManyProducts$ProductModel$color(
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
    if (!(other is Query$LoadAllProducts$findManyProducts$ProductModel$color) ||
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

extension UtilityExtension$Query$LoadAllProducts$findManyProducts$ProductModel$color
    on Query$LoadAllProducts$findManyProducts$ProductModel$color {
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<
          Query$LoadAllProducts$findManyProducts$ProductModel$color>
      get copyWith =>
          CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<
    TRes> {
  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color(
    Query$LoadAllProducts$findManyProducts$ProductModel$color instance,
    TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel$color)
        then,
  ) = _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color;

  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color;

  TRes call({
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<
            TRes> {
  _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color(
    this._instance,
    this._then,
  );

  final Query$LoadAllProducts$findManyProducts$ProductModel$color _instance;

  final TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel$color)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllProducts$findManyProducts$ProductModel$color(
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color<
        TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$color<
            TRes> {
  _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$color(
      this._res);

  TRes _res;

  call({
    String? color,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllProducts$findManyProducts$ProductModel$size {
  Query$LoadAllProducts$findManyProducts$ProductModel$size({
    required this.size,
    this.$__typename = 'Sizes',
  });

  factory Query$LoadAllProducts$findManyProducts$ProductModel$size.fromJson(
      Map<String, dynamic> json) {
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllProducts$findManyProducts$ProductModel$size(
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
    if (!(other is Query$LoadAllProducts$findManyProducts$ProductModel$size) ||
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

extension UtilityExtension$Query$LoadAllProducts$findManyProducts$ProductModel$size
    on Query$LoadAllProducts$findManyProducts$ProductModel$size {
  CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<
          Query$LoadAllProducts$findManyProducts$ProductModel$size>
      get copyWith =>
          CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<
    TRes> {
  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size(
    Query$LoadAllProducts$findManyProducts$ProductModel$size instance,
    TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel$size)
        then,
  ) = _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size;

  factory CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size;

  TRes call({
    String? size,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<
            TRes> {
  _CopyWithImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size(
    this._instance,
    this._then,
  );

  final Query$LoadAllProducts$findManyProducts$ProductModel$size _instance;

  final TRes Function(Query$LoadAllProducts$findManyProducts$ProductModel$size)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllProducts$findManyProducts$ProductModel$size(
        size: size == _undefined || size == null
            ? _instance.size
            : (size as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size<
        TRes>
    implements
        CopyWith$Query$LoadAllProducts$findManyProducts$ProductModel$size<
            TRes> {
  _CopyWithStubImpl$Query$LoadAllProducts$findManyProducts$ProductModel$size(
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

class Variables$Mutation$DeleteOneSellers {
  factory Variables$Mutation$DeleteOneSellers(
          {required Input$SellersWhereUniqueInput where}) =>
      Variables$Mutation$DeleteOneSellers._({
        r'where': where,
      });

  Variables$Mutation$DeleteOneSellers._(this._$data);

  factory Variables$Mutation$DeleteOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] = Input$SellersWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$DeleteOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersWhereUniqueInput get where =>
      (_$data['where'] as Input$SellersWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOneSellers<
          Variables$Mutation$DeleteOneSellers>
      get copyWith => CopyWith$Variables$Mutation$DeleteOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOneSellers(
    Variables$Mutation$DeleteOneSellers instance,
    TRes Function(Variables$Mutation$DeleteOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOneSellers;

  factory CopyWith$Variables$Mutation$DeleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers;

  TRes call({Input$SellersWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOneSellers _instance;

  final TRes Function(Variables$Mutation$DeleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Mutation$DeleteOneSellers._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$SellersWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Variables$Mutation$DeleteOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOneSellers(this._res);

  TRes _res;

  call({Input$SellersWhereUniqueInput? where}) => _res;
}

class Mutation$DeleteOneSellers {
  Mutation$DeleteOneSellers({
    this.deleteOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOneSellers.fromJson(Map<String, dynamic> json) {
    final l$deleteOneSellers = json['deleteOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSellers(
      deleteOneSellers: l$deleteOneSellers == null
          ? null
          : Mutation$DeleteOneSellers$deleteOneSellers.fromJson(
              (l$deleteOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneSellers = deleteOneSellers;
    _resultData['deleteOneSellers'] = l$deleteOneSellers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneSellers = deleteOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneSellers = deleteOneSellers;
    final lOther$deleteOneSellers = other.deleteOneSellers;
    if (l$deleteOneSellers != lOther$deleteOneSellers) {
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

extension UtilityExtension$Mutation$DeleteOneSellers
    on Mutation$DeleteOneSellers {
  CopyWith$Mutation$DeleteOneSellers<Mutation$DeleteOneSellers> get copyWith =>
      CopyWith$Mutation$DeleteOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOneSellers<TRes> {
  factory CopyWith$Mutation$DeleteOneSellers(
    Mutation$DeleteOneSellers instance,
    TRes Function(Mutation$DeleteOneSellers) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSellers;

  factory CopyWith$Mutation$DeleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSellers;

  TRes call({
    Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers;
}

class _CopyWithImpl$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSellers _instance;

  final TRes Function(Mutation$DeleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSellers(
        deleteOneSellers: deleteOneSellers == _undefined
            ? _instance.deleteOneSellers
            : (deleteOneSellers as Mutation$DeleteOneSellers$deleteOneSellers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers {
    final local$deleteOneSellers = _instance.deleteOneSellers;
    return local$deleteOneSellers == null
        ? CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
            local$deleteOneSellers, (e) => call(deleteOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSellers(this._res);

  TRes _res;

  call({
    Mutation$DeleteOneSellers$deleteOneSellers? deleteOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
      get deleteOneSellers =>
          CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(_res);
}

const documentNodeMutationDeleteOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneSellers'),
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
            name: NameNode(value: 'seller_id'),
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
Mutation$DeleteOneSellers _parserFn$Mutation$DeleteOneSellers(
        Map<String, dynamic> data) =>
    Mutation$DeleteOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$DeleteOneSellers?,
);

class Options$Mutation$DeleteOneSellers
    extends graphql.MutationOptions<Mutation$DeleteOneSellers> {
  Options$Mutation$DeleteOneSellers({
    String? operationName,
    required Variables$Mutation$DeleteOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOneSellers>? update,
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
                        : _parserFn$Mutation$DeleteOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOneSellers,
          parserFn: _parserFn$Mutation$DeleteOneSellers,
        );

  final OnMutationCompleted$Mutation$DeleteOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOneSellers
    extends graphql.WatchQueryOptions<Mutation$DeleteOneSellers> {
  WatchOptions$Mutation$DeleteOneSellers({
    String? operationName,
    required Variables$Mutation$DeleteOneSellers variables,
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
          document: documentNodeMutationDeleteOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOneSellers,
        );
}

extension ClientExtension$Mutation$DeleteOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOneSellers>>
      mutate$DeleteOneSellers(
              Options$Mutation$DeleteOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOneSellers>
      watchMutation$DeleteOneSellers(
              WatchOptions$Mutation$DeleteOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOneSellers$deleteOneSellers {
  Mutation$DeleteOneSellers$deleteOneSellers({
    required this.seller_id,
    this.$__typename = 'Sellers',
  });

  factory Mutation$DeleteOneSellers$deleteOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOneSellers$deleteOneSellers(
      seller_id: (l$seller_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOneSellers$deleteOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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

extension UtilityExtension$Mutation$DeleteOneSellers$deleteOneSellers
    on Mutation$DeleteOneSellers$deleteOneSellers {
  CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<
          Mutation$DeleteOneSellers$deleteOneSellers>
      get copyWith => CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  factory CopyWith$Mutation$DeleteOneSellers$deleteOneSellers(
    Mutation$DeleteOneSellers$deleteOneSellers instance,
    TRes Function(Mutation$DeleteOneSellers$deleteOneSellers) then,
  ) = _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers;

  factory CopyWith$Mutation$DeleteOneSellers$deleteOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers;

  TRes call({
    int? seller_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  _CopyWithImpl$Mutation$DeleteOneSellers$deleteOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOneSellers$deleteOneSellers _instance;

  final TRes Function(Mutation$DeleteOneSellers$deleteOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOneSellers$deleteOneSellers(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers<TRes>
    implements CopyWith$Mutation$DeleteOneSellers$deleteOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOneSellers$deleteOneSellers(this._res);

  TRes _res;

  call({
    int? seller_id,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllSellers {
  Query$LoadAllSellers({
    required this.findManySellers,
    this.$__typename = 'Query',
  });

  factory Query$LoadAllSellers.fromJson(Map<String, dynamic> json) {
    final l$findManySellers = json['findManySellers'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllSellers(
      findManySellers: (l$findManySellers as List<dynamic>)
          .map((e) => Query$LoadAllSellers$findManySellers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LoadAllSellers$findManySellers> findManySellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManySellers = findManySellers;
    _resultData['findManySellers'] =
        l$findManySellers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManySellers = findManySellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManySellers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllSellers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManySellers = findManySellers;
    final lOther$findManySellers = other.findManySellers;
    if (l$findManySellers.length != lOther$findManySellers.length) {
      return false;
    }
    for (int i = 0; i < l$findManySellers.length; i++) {
      final l$findManySellers$entry = l$findManySellers[i];
      final lOther$findManySellers$entry = lOther$findManySellers[i];
      if (l$findManySellers$entry != lOther$findManySellers$entry) {
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

extension UtilityExtension$Query$LoadAllSellers on Query$LoadAllSellers {
  CopyWith$Query$LoadAllSellers<Query$LoadAllSellers> get copyWith =>
      CopyWith$Query$LoadAllSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadAllSellers<TRes> {
  factory CopyWith$Query$LoadAllSellers(
    Query$LoadAllSellers instance,
    TRes Function(Query$LoadAllSellers) then,
  ) = _CopyWithImpl$Query$LoadAllSellers;

  factory CopyWith$Query$LoadAllSellers.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllSellers;

  TRes call({
    List<Query$LoadAllSellers$findManySellers>? findManySellers,
    String? $__typename,
  });
  TRes findManySellers(
      Iterable<Query$LoadAllSellers$findManySellers> Function(
              Iterable<
                  CopyWith$Query$LoadAllSellers$findManySellers<
                      Query$LoadAllSellers$findManySellers>>)
          _fn);
}

class _CopyWithImpl$Query$LoadAllSellers<TRes>
    implements CopyWith$Query$LoadAllSellers<TRes> {
  _CopyWithImpl$Query$LoadAllSellers(
    this._instance,
    this._then,
  );

  final Query$LoadAllSellers _instance;

  final TRes Function(Query$LoadAllSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManySellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllSellers(
        findManySellers: findManySellers == _undefined ||
                findManySellers == null
            ? _instance.findManySellers
            : (findManySellers as List<Query$LoadAllSellers$findManySellers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManySellers(
          Iterable<Query$LoadAllSellers$findManySellers> Function(
                  Iterable<
                      CopyWith$Query$LoadAllSellers$findManySellers<
                          Query$LoadAllSellers$findManySellers>>)
              _fn) =>
      call(
          findManySellers: _fn(_instance.findManySellers
              .map((e) => CopyWith$Query$LoadAllSellers$findManySellers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$LoadAllSellers<TRes>
    implements CopyWith$Query$LoadAllSellers<TRes> {
  _CopyWithStubImpl$Query$LoadAllSellers(this._res);

  TRes _res;

  call({
    List<Query$LoadAllSellers$findManySellers>? findManySellers,
    String? $__typename,
  }) =>
      _res;
  findManySellers(_fn) => _res;
}

const documentNodeQueryLoadAllSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LoadAllSellers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManySellers'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'seller_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_phone'),
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
Query$LoadAllSellers _parserFn$Query$LoadAllSellers(
        Map<String, dynamic> data) =>
    Query$LoadAllSellers.fromJson(data);

class Options$Query$LoadAllSellers
    extends graphql.QueryOptions<Query$LoadAllSellers> {
  Options$Query$LoadAllSellers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryLoadAllSellers,
          parserFn: _parserFn$Query$LoadAllSellers,
        );
}

class WatchOptions$Query$LoadAllSellers
    extends graphql.WatchQueryOptions<Query$LoadAllSellers> {
  WatchOptions$Query$LoadAllSellers({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryLoadAllSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LoadAllSellers,
        );
}

class FetchMoreOptions$Query$LoadAllSellers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LoadAllSellers(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLoadAllSellers,
        );
}

extension ClientExtension$Query$LoadAllSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LoadAllSellers>> query$LoadAllSellers(
          [Options$Query$LoadAllSellers? options]) async =>
      await this.query(options ?? Options$Query$LoadAllSellers());
  graphql.ObservableQuery<Query$LoadAllSellers> watchQuery$LoadAllSellers(
          [WatchOptions$Query$LoadAllSellers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LoadAllSellers());
  void writeQuery$LoadAllSellers({
    required Query$LoadAllSellers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLoadAllSellers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LoadAllSellers? readQuery$LoadAllSellers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLoadAllSellers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LoadAllSellers.fromJson(result);
  }
}

class Query$LoadAllSellers$findManySellers {
  Query$LoadAllSellers$findManySellers({
    required this.picture,
    required this.seller_id,
    required this.seller_name,
    required this.seller_phone,
    this.$__typename = 'Sellers',
  });

  factory Query$LoadAllSellers$findManySellers.fromJson(
      Map<String, dynamic> json) {
    final l$picture = json['picture'];
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$seller_phone = json['seller_phone'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllSellers$findManySellers(
      picture: (l$picture as String),
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      seller_phone: (l$seller_phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String picture;

  final int seller_id;

  final String seller_name;

  final String seller_phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    _resultData['seller_phone'] = l$seller_phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$picture,
      l$seller_id,
      l$seller_name,
      l$seller_phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllSellers$findManySellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LoadAllSellers$findManySellers
    on Query$LoadAllSellers$findManySellers {
  CopyWith$Query$LoadAllSellers$findManySellers<
          Query$LoadAllSellers$findManySellers>
      get copyWith => CopyWith$Query$LoadAllSellers$findManySellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  factory CopyWith$Query$LoadAllSellers$findManySellers(
    Query$LoadAllSellers$findManySellers instance,
    TRes Function(Query$LoadAllSellers$findManySellers) then,
  ) = _CopyWithImpl$Query$LoadAllSellers$findManySellers;

  factory CopyWith$Query$LoadAllSellers$findManySellers.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllSellers$findManySellers;

  TRes call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllSellers$findManySellers<TRes>
    implements CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  _CopyWithImpl$Query$LoadAllSellers$findManySellers(
    this._instance,
    this._then,
  );

  final Query$LoadAllSellers$findManySellers _instance;

  final TRes Function(Query$LoadAllSellers$findManySellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllSellers$findManySellers(
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        seller_phone: seller_phone == _undefined || seller_phone == null
            ? _instance.seller_phone
            : (seller_phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllSellers$findManySellers<TRes>
    implements CopyWith$Query$LoadAllSellers$findManySellers<TRes> {
  _CopyWithStubImpl$Query$LoadAllSellers$findManySellers(this._res);

  TRes _res;

  call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOneSellers {
  factory Variables$Mutation$CreateOneSellers(
          {required Input$SellersCreateInput data}) =>
      Variables$Mutation$CreateOneSellers._({
        r'data': data,
      });

  Variables$Mutation$CreateOneSellers._(this._$data);

  factory Variables$Mutation$CreateOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SellersCreateInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersCreateInput get data =>
      (_$data['data'] as Input$SellersCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOneSellers<
          Variables$Mutation$CreateOneSellers>
      get copyWith => CopyWith$Variables$Mutation$CreateOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$CreateOneSellers(
    Variables$Mutation$CreateOneSellers instance,
    TRes Function(Variables$Mutation$CreateOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOneSellers;

  factory CopyWith$Variables$Mutation$CreateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOneSellers;

  TRes call({Input$SellersCreateInput? data});
}

class _CopyWithImpl$Variables$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOneSellers _instance;

  final TRes Function(Variables$Mutation$CreateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateOneSellers._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SellersCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$CreateOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOneSellers(this._res);

  TRes _res;

  call({Input$SellersCreateInput? data}) => _res;
}

class Mutation$CreateOneSellers {
  Mutation$CreateOneSellers({
    required this.createOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOneSellers.fromJson(Map<String, dynamic> json) {
    final l$createOneSellers = json['createOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSellers(
      createOneSellers: Mutation$CreateOneSellers$createOneSellers.fromJson(
          (l$createOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOneSellers$createOneSellers createOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneSellers = createOneSellers;
    _resultData['createOneSellers'] = l$createOneSellers.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneSellers = createOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneSellers = createOneSellers;
    final lOther$createOneSellers = other.createOneSellers;
    if (l$createOneSellers != lOther$createOneSellers) {
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

extension UtilityExtension$Mutation$CreateOneSellers
    on Mutation$CreateOneSellers {
  CopyWith$Mutation$CreateOneSellers<Mutation$CreateOneSellers> get copyWith =>
      CopyWith$Mutation$CreateOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOneSellers<TRes> {
  factory CopyWith$Mutation$CreateOneSellers(
    Mutation$CreateOneSellers instance,
    TRes Function(Mutation$CreateOneSellers) then,
  ) = _CopyWithImpl$Mutation$CreateOneSellers;

  factory CopyWith$Mutation$CreateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSellers;

  TRes call({
    Mutation$CreateOneSellers$createOneSellers? createOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers;
}

class _CopyWithImpl$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers<TRes> {
  _CopyWithImpl$Mutation$CreateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSellers _instance;

  final TRes Function(Mutation$CreateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSellers(
        createOneSellers: createOneSellers == _undefined ||
                createOneSellers == null
            ? _instance.createOneSellers
            : (createOneSellers as Mutation$CreateOneSellers$createOneSellers),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers {
    final local$createOneSellers = _instance.createOneSellers;
    return CopyWith$Mutation$CreateOneSellers$createOneSellers(
        local$createOneSellers, (e) => call(createOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSellers(this._res);

  TRes _res;

  call({
    Mutation$CreateOneSellers$createOneSellers? createOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes>
      get createOneSellers =>
          CopyWith$Mutation$CreateOneSellers$createOneSellers.stub(_res);
}

const documentNodeMutationCreateOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneSellers'),
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
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seller_phone'),
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
Mutation$CreateOneSellers _parserFn$Mutation$CreateOneSellers(
        Map<String, dynamic> data) =>
    Mutation$CreateOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$CreateOneSellers?,
);

class Options$Mutation$CreateOneSellers
    extends graphql.MutationOptions<Mutation$CreateOneSellers> {
  Options$Mutation$CreateOneSellers({
    String? operationName,
    required Variables$Mutation$CreateOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOneSellers>? update,
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
                        : _parserFn$Mutation$CreateOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOneSellers,
          parserFn: _parserFn$Mutation$CreateOneSellers,
        );

  final OnMutationCompleted$Mutation$CreateOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOneSellers
    extends graphql.WatchQueryOptions<Mutation$CreateOneSellers> {
  WatchOptions$Mutation$CreateOneSellers({
    String? operationName,
    required Variables$Mutation$CreateOneSellers variables,
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
          document: documentNodeMutationCreateOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOneSellers,
        );
}

extension ClientExtension$Mutation$CreateOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOneSellers>>
      mutate$CreateOneSellers(
              Options$Mutation$CreateOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOneSellers>
      watchMutation$CreateOneSellers(
              WatchOptions$Mutation$CreateOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$CreateOneSellers$createOneSellers {
  Mutation$CreateOneSellers$createOneSellers({
    required this.picture,
    required this.seller_id,
    required this.seller_name,
    required this.seller_phone,
    this.$__typename = 'Sellers',
  });

  factory Mutation$CreateOneSellers$createOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$picture = json['picture'];
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$seller_phone = json['seller_phone'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOneSellers$createOneSellers(
      picture: (l$picture as String),
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      seller_phone: (l$seller_phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String picture;

  final int seller_id;

  final String seller_name;

  final String seller_phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$seller_phone = seller_phone;
    _resultData['seller_phone'] = l$seller_phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$seller_phone = seller_phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$picture,
      l$seller_id,
      l$seller_name,
      l$seller_phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOneSellers$createOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOneSellers$createOneSellers
    on Mutation$CreateOneSellers$createOneSellers {
  CopyWith$Mutation$CreateOneSellers$createOneSellers<
          Mutation$CreateOneSellers$createOneSellers>
      get copyWith => CopyWith$Mutation$CreateOneSellers$createOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  factory CopyWith$Mutation$CreateOneSellers$createOneSellers(
    Mutation$CreateOneSellers$createOneSellers instance,
    TRes Function(Mutation$CreateOneSellers$createOneSellers) then,
  ) = _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers;

  factory CopyWith$Mutation$CreateOneSellers$createOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers;

  TRes call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  _CopyWithImpl$Mutation$CreateOneSellers$createOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$CreateOneSellers$createOneSellers _instance;

  final TRes Function(Mutation$CreateOneSellers$createOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? seller_phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOneSellers$createOneSellers(
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        seller_phone: seller_phone == _undefined || seller_phone == null
            ? _instance.seller_phone
            : (seller_phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers<TRes>
    implements CopyWith$Mutation$CreateOneSellers$createOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$CreateOneSellers$createOneSellers(this._res);

  TRes _res;

  call({
    String? picture,
    int? seller_id,
    String? seller_name,
    String? seller_phone,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllTransactions {
  Query$LoadAllTransactions({
    required this.findManyTransactions,
    this.$__typename = 'Query',
  });

  factory Query$LoadAllTransactions.fromJson(Map<String, dynamic> json) {
    final l$findManyTransactions = json['findManyTransactions'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions(
      findManyTransactions: (l$findManyTransactions as List<dynamic>)
          .map((e) => Query$LoadAllTransactions$findManyTransactions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LoadAllTransactions$findManyTransactions>
      findManyTransactions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findManyTransactions = findManyTransactions;
    _resultData['findManyTransactions'] =
        l$findManyTransactions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findManyTransactions = findManyTransactions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findManyTransactions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findManyTransactions = findManyTransactions;
    final lOther$findManyTransactions = other.findManyTransactions;
    if (l$findManyTransactions.length != lOther$findManyTransactions.length) {
      return false;
    }
    for (int i = 0; i < l$findManyTransactions.length; i++) {
      final l$findManyTransactions$entry = l$findManyTransactions[i];
      final lOther$findManyTransactions$entry = lOther$findManyTransactions[i];
      if (l$findManyTransactions$entry != lOther$findManyTransactions$entry) {
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

extension UtilityExtension$Query$LoadAllTransactions
    on Query$LoadAllTransactions {
  CopyWith$Query$LoadAllTransactions<Query$LoadAllTransactions> get copyWith =>
      CopyWith$Query$LoadAllTransactions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadAllTransactions<TRes> {
  factory CopyWith$Query$LoadAllTransactions(
    Query$LoadAllTransactions instance,
    TRes Function(Query$LoadAllTransactions) then,
  ) = _CopyWithImpl$Query$LoadAllTransactions;

  factory CopyWith$Query$LoadAllTransactions.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions;

  TRes call({
    List<Query$LoadAllTransactions$findManyTransactions>? findManyTransactions,
    String? $__typename,
  });
  TRes findManyTransactions(
      Iterable<Query$LoadAllTransactions$findManyTransactions> Function(
              Iterable<
                  CopyWith$Query$LoadAllTransactions$findManyTransactions<
                      Query$LoadAllTransactions$findManyTransactions>>)
          _fn);
}

class _CopyWithImpl$Query$LoadAllTransactions<TRes>
    implements CopyWith$Query$LoadAllTransactions<TRes> {
  _CopyWithImpl$Query$LoadAllTransactions(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions _instance;

  final TRes Function(Query$LoadAllTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findManyTransactions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions(
        findManyTransactions:
            findManyTransactions == _undefined || findManyTransactions == null
                ? _instance.findManyTransactions
                : (findManyTransactions
                    as List<Query$LoadAllTransactions$findManyTransactions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findManyTransactions(
          Iterable<Query$LoadAllTransactions$findManyTransactions> Function(
                  Iterable<
                      CopyWith$Query$LoadAllTransactions$findManyTransactions<
                          Query$LoadAllTransactions$findManyTransactions>>)
              _fn) =>
      call(
          findManyTransactions: _fn(_instance.findManyTransactions.map(
              (e) => CopyWith$Query$LoadAllTransactions$findManyTransactions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$LoadAllTransactions<TRes>
    implements CopyWith$Query$LoadAllTransactions<TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions(this._res);

  TRes _res;

  call({
    List<Query$LoadAllTransactions$findManyTransactions>? findManyTransactions,
    String? $__typename,
  }) =>
      _res;
  findManyTransactions(_fn) => _res;
}

const documentNodeQueryLoadAllTransactions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LoadAllTransactions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findManyTransactions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
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
            name: NameNode(value: 'quantity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'remainingPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transaction_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'transaction_type_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type_name'),
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
            name: NameNode(value: 'city'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'city_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'city_name'),
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
            name: NameNode(value: 'seller'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'seller_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'seller_name'),
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
            name: NameNode(value: 'totalPayement'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'transaction_status_id'),
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
Query$LoadAllTransactions _parserFn$Query$LoadAllTransactions(
        Map<String, dynamic> data) =>
    Query$LoadAllTransactions.fromJson(data);

class Options$Query$LoadAllTransactions
    extends graphql.QueryOptions<Query$LoadAllTransactions> {
  Options$Query$LoadAllTransactions({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryLoadAllTransactions,
          parserFn: _parserFn$Query$LoadAllTransactions,
        );
}

class WatchOptions$Query$LoadAllTransactions
    extends graphql.WatchQueryOptions<Query$LoadAllTransactions> {
  WatchOptions$Query$LoadAllTransactions({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryLoadAllTransactions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LoadAllTransactions,
        );
}

class FetchMoreOptions$Query$LoadAllTransactions
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LoadAllTransactions(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLoadAllTransactions,
        );
}

extension ClientExtension$Query$LoadAllTransactions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LoadAllTransactions>>
      query$LoadAllTransactions(
              [Options$Query$LoadAllTransactions? options]) async =>
          await this.query(options ?? Options$Query$LoadAllTransactions());
  graphql.ObservableQuery<Query$LoadAllTransactions>
      watchQuery$LoadAllTransactions(
              [WatchOptions$Query$LoadAllTransactions? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$LoadAllTransactions());
  void writeQuery$LoadAllTransactions({
    required Query$LoadAllTransactions data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryLoadAllTransactions)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LoadAllTransactions? readQuery$LoadAllTransactions(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryLoadAllTransactions)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LoadAllTransactions.fromJson(result);
  }
}

class Query$LoadAllTransactions$findManyTransactions {
  Query$LoadAllTransactions$findManyTransactions({
    required this.address,
    required this.customer_name,
    required this.customer_phone,
    required this.date,
    required this.product_id,
    required this.quantity,
    required this.remainingPayement,
    required this.transaction_id,
    required this.transaction_type,
    required this.city,
    required this.seller,
    required this.totalPayement,
    required this.status,
    this.$__typename = 'Transactions',
  });

  factory Query$LoadAllTransactions$findManyTransactions.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$customer_name = json['customer_name'];
    final l$customer_phone = json['customer_phone'];
    final l$date = json['date'];
    final l$product_id = json['product_id'];
    final l$quantity = json['quantity'];
    final l$remainingPayement = json['remainingPayement'];
    final l$transaction_id = json['transaction_id'];
    final l$transaction_type = json['transaction_type'];
    final l$city = json['city'];
    final l$seller = json['seller'];
    final l$totalPayement = json['totalPayement'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions$findManyTransactions(
      address: (l$address as String),
      customer_name: (l$customer_name as String),
      customer_phone: (l$customer_phone as String),
      date: (l$date as String),
      product_id: (l$product_id as int),
      quantity: (l$quantity as int),
      remainingPayement: (l$remainingPayement as num).toDouble(),
      transaction_id: (l$transaction_id as int),
      transaction_type:
          Query$LoadAllTransactions$findManyTransactions$transaction_type
              .fromJson((l$transaction_type as Map<String, dynamic>)),
      city: Query$LoadAllTransactions$findManyTransactions$city.fromJson(
          (l$city as Map<String, dynamic>)),
      seller: Query$LoadAllTransactions$findManyTransactions$seller.fromJson(
          (l$seller as Map<String, dynamic>)),
      totalPayement: (l$totalPayement as num).toDouble(),
      status: Query$LoadAllTransactions$findManyTransactions$status.fromJson(
          (l$status as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String customer_name;

  final String customer_phone;

  final String date;

  final int product_id;

  final int quantity;

  final double remainingPayement;

  final int transaction_id;

  final Query$LoadAllTransactions$findManyTransactions$transaction_type
      transaction_type;

  final Query$LoadAllTransactions$findManyTransactions$city city;

  final Query$LoadAllTransactions$findManyTransactions$seller seller;

  final double totalPayement;

  final Query$LoadAllTransactions$findManyTransactions$status status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$customer_name = customer_name;
    _resultData['customer_name'] = l$customer_name;
    final l$customer_phone = customer_phone;
    _resultData['customer_phone'] = l$customer_phone;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$remainingPayement = remainingPayement;
    _resultData['remainingPayement'] = l$remainingPayement;
    final l$transaction_id = transaction_id;
    _resultData['transaction_id'] = l$transaction_id;
    final l$transaction_type = transaction_type;
    _resultData['transaction_type'] = l$transaction_type.toJson();
    final l$city = city;
    _resultData['city'] = l$city.toJson();
    final l$seller = seller;
    _resultData['seller'] = l$seller.toJson();
    final l$totalPayement = totalPayement;
    _resultData['totalPayement'] = l$totalPayement;
    final l$status = status;
    _resultData['status'] = l$status.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$customer_name = customer_name;
    final l$customer_phone = customer_phone;
    final l$date = date;
    final l$product_id = product_id;
    final l$quantity = quantity;
    final l$remainingPayement = remainingPayement;
    final l$transaction_id = transaction_id;
    final l$transaction_type = transaction_type;
    final l$city = city;
    final l$seller = seller;
    final l$totalPayement = totalPayement;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$customer_name,
      l$customer_phone,
      l$date,
      l$product_id,
      l$quantity,
      l$remainingPayement,
      l$transaction_id,
      l$transaction_type,
      l$city,
      l$seller,
      l$totalPayement,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllTransactions$findManyTransactions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$remainingPayement = remainingPayement;
    final lOther$remainingPayement = other.remainingPayement;
    if (l$remainingPayement != lOther$remainingPayement) {
      return false;
    }
    final l$transaction_id = transaction_id;
    final lOther$transaction_id = other.transaction_id;
    if (l$transaction_id != lOther$transaction_id) {
      return false;
    }
    final l$transaction_type = transaction_type;
    final lOther$transaction_type = other.transaction_type;
    if (l$transaction_type != lOther$transaction_type) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$seller = seller;
    final lOther$seller = other.seller;
    if (l$seller != lOther$seller) {
      return false;
    }
    final l$totalPayement = totalPayement;
    final lOther$totalPayement = other.totalPayement;
    if (l$totalPayement != lOther$totalPayement) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$LoadAllTransactions$findManyTransactions
    on Query$LoadAllTransactions$findManyTransactions {
  CopyWith$Query$LoadAllTransactions$findManyTransactions<
          Query$LoadAllTransactions$findManyTransactions>
      get copyWith => CopyWith$Query$LoadAllTransactions$findManyTransactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllTransactions$findManyTransactions<TRes> {
  factory CopyWith$Query$LoadAllTransactions$findManyTransactions(
    Query$LoadAllTransactions$findManyTransactions instance,
    TRes Function(Query$LoadAllTransactions$findManyTransactions) then,
  ) = _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions;

  factory CopyWith$Query$LoadAllTransactions$findManyTransactions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions;

  TRes call({
    String? address,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    int? transaction_id,
    Query$LoadAllTransactions$findManyTransactions$transaction_type?
        transaction_type,
    Query$LoadAllTransactions$findManyTransactions$city? city,
    Query$LoadAllTransactions$findManyTransactions$seller? seller,
    double? totalPayement,
    Query$LoadAllTransactions$findManyTransactions$status? status,
    String? $__typename,
  });
  CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<TRes>
      get transaction_type;
  CopyWith$Query$LoadAllTransactions$findManyTransactions$city<TRes> get city;
  CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<TRes>
      get seller;
  CopyWith$Query$LoadAllTransactions$findManyTransactions$status<TRes>
      get status;
}

class _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions<TRes>
    implements CopyWith$Query$LoadAllTransactions$findManyTransactions<TRes> {
  _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions$findManyTransactions _instance;

  final TRes Function(Query$LoadAllTransactions$findManyTransactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? customer_name = _undefined,
    Object? customer_phone = _undefined,
    Object? date = _undefined,
    Object? product_id = _undefined,
    Object? quantity = _undefined,
    Object? remainingPayement = _undefined,
    Object? transaction_id = _undefined,
    Object? transaction_type = _undefined,
    Object? city = _undefined,
    Object? seller = _undefined,
    Object? totalPayement = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions$findManyTransactions(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        customer_name: customer_name == _undefined || customer_name == null
            ? _instance.customer_name
            : (customer_name as String),
        customer_phone: customer_phone == _undefined || customer_phone == null
            ? _instance.customer_phone
            : (customer_phone as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        remainingPayement:
            remainingPayement == _undefined || remainingPayement == null
                ? _instance.remainingPayement
                : (remainingPayement as double),
        transaction_id: transaction_id == _undefined || transaction_id == null
            ? _instance.transaction_id
            : (transaction_id as int),
        transaction_type: transaction_type == _undefined ||
                transaction_type == null
            ? _instance.transaction_type
            : (transaction_type
                as Query$LoadAllTransactions$findManyTransactions$transaction_type),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as Query$LoadAllTransactions$findManyTransactions$city),
        seller: seller == _undefined || seller == null
            ? _instance.seller
            : (seller as Query$LoadAllTransactions$findManyTransactions$seller),
        totalPayement: totalPayement == _undefined || totalPayement == null
            ? _instance.totalPayement
            : (totalPayement as double),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Query$LoadAllTransactions$findManyTransactions$status),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<TRes>
      get transaction_type {
    final local$transaction_type = _instance.transaction_type;
    return CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type(
        local$transaction_type, (e) => call(transaction_type: e));
  }

  CopyWith$Query$LoadAllTransactions$findManyTransactions$city<TRes> get city {
    final local$city = _instance.city;
    return CopyWith$Query$LoadAllTransactions$findManyTransactions$city(
        local$city, (e) => call(city: e));
  }

  CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<TRes>
      get seller {
    final local$seller = _instance.seller;
    return CopyWith$Query$LoadAllTransactions$findManyTransactions$seller(
        local$seller, (e) => call(seller: e));
  }

  CopyWith$Query$LoadAllTransactions$findManyTransactions$status<TRes>
      get status {
    final local$status = _instance.status;
    return CopyWith$Query$LoadAllTransactions$findManyTransactions$status(
        local$status, (e) => call(status: e));
  }
}

class _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions<TRes>
    implements CopyWith$Query$LoadAllTransactions$findManyTransactions<TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions(this._res);

  TRes _res;

  call({
    String? address,
    String? customer_name,
    String? customer_phone,
    String? date,
    int? product_id,
    int? quantity,
    double? remainingPayement,
    int? transaction_id,
    Query$LoadAllTransactions$findManyTransactions$transaction_type?
        transaction_type,
    Query$LoadAllTransactions$findManyTransactions$city? city,
    Query$LoadAllTransactions$findManyTransactions$seller? seller,
    double? totalPayement,
    Query$LoadAllTransactions$findManyTransactions$status? status,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<TRes>
      get transaction_type =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type
              .stub(_res);
  CopyWith$Query$LoadAllTransactions$findManyTransactions$city<TRes> get city =>
      CopyWith$Query$LoadAllTransactions$findManyTransactions$city.stub(_res);
  CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<TRes>
      get seller =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$seller.stub(
              _res);
  CopyWith$Query$LoadAllTransactions$findManyTransactions$status<TRes>
      get status =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$status.stub(
              _res);
}

class Query$LoadAllTransactions$findManyTransactions$transaction_type {
  Query$LoadAllTransactions$findManyTransactions$transaction_type({
    required this.transaction_type_id,
    required this.type_name,
    this.$__typename = 'TransactionTypes',
  });

  factory Query$LoadAllTransactions$findManyTransactions$transaction_type.fromJson(
      Map<String, dynamic> json) {
    final l$transaction_type_id = json['transaction_type_id'];
    final l$type_name = json['type_name'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions$findManyTransactions$transaction_type(
      transaction_type_id: (l$transaction_type_id as int),
      type_name: (l$type_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int transaction_type_id;

  final String type_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transaction_type_id = transaction_type_id;
    _resultData['transaction_type_id'] = l$transaction_type_id;
    final l$type_name = type_name;
    _resultData['type_name'] = l$type_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transaction_type_id = transaction_type_id;
    final l$type_name = type_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transaction_type_id,
      l$type_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$LoadAllTransactions$findManyTransactions$transaction_type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_type_id = transaction_type_id;
    final lOther$transaction_type_id = other.transaction_type_id;
    if (l$transaction_type_id != lOther$transaction_type_id) {
      return false;
    }
    final l$type_name = type_name;
    final lOther$type_name = other.type_name;
    if (l$type_name != lOther$type_name) {
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

extension UtilityExtension$Query$LoadAllTransactions$findManyTransactions$transaction_type
    on Query$LoadAllTransactions$findManyTransactions$transaction_type {
  CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<
          Query$LoadAllTransactions$findManyTransactions$transaction_type>
      get copyWith =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<
    TRes> {
  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type(
    Query$LoadAllTransactions$findManyTransactions$transaction_type instance,
    TRes Function(
            Query$LoadAllTransactions$findManyTransactions$transaction_type)
        then,
  ) = _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type;

  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type;

  TRes call({
    int? transaction_type_id,
    String? type_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<
            TRes> {
  _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions$findManyTransactions$transaction_type
      _instance;

  final TRes Function(
      Query$LoadAllTransactions$findManyTransactions$transaction_type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_type_id = _undefined,
    Object? type_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions$findManyTransactions$transaction_type(
        transaction_type_id:
            transaction_type_id == _undefined || transaction_type_id == null
                ? _instance.transaction_type_id
                : (transaction_type_id as int),
        type_name: type_name == _undefined || type_name == null
            ? _instance.type_name
            : (type_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type<
        TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$transaction_type<
            TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$transaction_type(
      this._res);

  TRes _res;

  call({
    int? transaction_type_id,
    String? type_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllTransactions$findManyTransactions$city {
  Query$LoadAllTransactions$findManyTransactions$city({
    required this.city_id,
    required this.city_name,
    this.$__typename = 'City',
  });

  factory Query$LoadAllTransactions$findManyTransactions$city.fromJson(
      Map<String, dynamic> json) {
    final l$city_id = json['city_id'];
    final l$city_name = json['city_name'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions$findManyTransactions$city(
      city_id: (l$city_id as int),
      city_name: (l$city_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int city_id;

  final String city_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$city_name = city_name;
    _resultData['city_name'] = l$city_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city_id = city_id;
    final l$city_name = city_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city_id,
      l$city_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllTransactions$findManyTransactions$city) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LoadAllTransactions$findManyTransactions$city
    on Query$LoadAllTransactions$findManyTransactions$city {
  CopyWith$Query$LoadAllTransactions$findManyTransactions$city<
          Query$LoadAllTransactions$findManyTransactions$city>
      get copyWith =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$city(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllTransactions$findManyTransactions$city<
    TRes> {
  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$city(
    Query$LoadAllTransactions$findManyTransactions$city instance,
    TRes Function(Query$LoadAllTransactions$findManyTransactions$city) then,
  ) = _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$city;

  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$city.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$city;

  TRes call({
    int? city_id,
    String? city_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$city<TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$city<TRes> {
  _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$city(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions$findManyTransactions$city _instance;

  final TRes Function(Query$LoadAllTransactions$findManyTransactions$city)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city_id = _undefined,
    Object? city_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions$findManyTransactions$city(
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        city_name: city_name == _undefined || city_name == null
            ? _instance.city_name
            : (city_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$city<
        TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$city<TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$city(
      this._res);

  TRes _res;

  call({
    int? city_id,
    String? city_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllTransactions$findManyTransactions$seller {
  Query$LoadAllTransactions$findManyTransactions$seller({
    required this.seller_id,
    required this.seller_name,
    this.$__typename = 'Sellers',
  });

  factory Query$LoadAllTransactions$findManyTransactions$seller.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$seller_name = json['seller_name'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions$findManyTransactions$seller(
      seller_id: (l$seller_id as int),
      seller_name: (l$seller_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String seller_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$seller_name = seller_name;
    _resultData['seller_name'] = l$seller_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$seller_name = seller_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$seller_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllTransactions$findManyTransactions$seller) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
      return false;
    }
    final l$seller_name = seller_name;
    final lOther$seller_name = other.seller_name;
    if (l$seller_name != lOther$seller_name) {
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

extension UtilityExtension$Query$LoadAllTransactions$findManyTransactions$seller
    on Query$LoadAllTransactions$findManyTransactions$seller {
  CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<
          Query$LoadAllTransactions$findManyTransactions$seller>
      get copyWith =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$seller(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<
    TRes> {
  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$seller(
    Query$LoadAllTransactions$findManyTransactions$seller instance,
    TRes Function(Query$LoadAllTransactions$findManyTransactions$seller) then,
  ) = _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$seller;

  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$seller.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$seller;

  TRes call({
    int? seller_id,
    String? seller_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$seller<TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<TRes> {
  _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$seller(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions$findManyTransactions$seller _instance;

  final TRes Function(Query$LoadAllTransactions$findManyTransactions$seller)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? seller_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions$findManyTransactions$seller(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        seller_name: seller_name == _undefined || seller_name == null
            ? _instance.seller_name
            : (seller_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$seller<
        TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$seller<TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$seller(
      this._res);

  TRes _res;

  call({
    int? seller_id,
    String? seller_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$LoadAllTransactions$findManyTransactions$status {
  Query$LoadAllTransactions$findManyTransactions$status({
    required this.transaction_status_id,
    required this.name,
    this.$__typename = 'TransactionStatus',
  });

  factory Query$LoadAllTransactions$findManyTransactions$status.fromJson(
      Map<String, dynamic> json) {
    final l$transaction_status_id = json['transaction_status_id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$LoadAllTransactions$findManyTransactions$status(
      transaction_status_id: (l$transaction_status_id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int transaction_status_id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transaction_status_id = transaction_status_id;
    _resultData['transaction_status_id'] = l$transaction_status_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transaction_status_id = transaction_status_id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transaction_status_id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LoadAllTransactions$findManyTransactions$status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transaction_status_id = transaction_status_id;
    final lOther$transaction_status_id = other.transaction_status_id;
    if (l$transaction_status_id != lOther$transaction_status_id) {
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

extension UtilityExtension$Query$LoadAllTransactions$findManyTransactions$status
    on Query$LoadAllTransactions$findManyTransactions$status {
  CopyWith$Query$LoadAllTransactions$findManyTransactions$status<
          Query$LoadAllTransactions$findManyTransactions$status>
      get copyWith =>
          CopyWith$Query$LoadAllTransactions$findManyTransactions$status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LoadAllTransactions$findManyTransactions$status<
    TRes> {
  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$status(
    Query$LoadAllTransactions$findManyTransactions$status instance,
    TRes Function(Query$LoadAllTransactions$findManyTransactions$status) then,
  ) = _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$status;

  factory CopyWith$Query$LoadAllTransactions$findManyTransactions$status.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$status;

  TRes call({
    int? transaction_status_id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$status<TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$status<TRes> {
  _CopyWithImpl$Query$LoadAllTransactions$findManyTransactions$status(
    this._instance,
    this._then,
  );

  final Query$LoadAllTransactions$findManyTransactions$status _instance;

  final TRes Function(Query$LoadAllTransactions$findManyTransactions$status)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transaction_status_id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LoadAllTransactions$findManyTransactions$status(
        transaction_status_id:
            transaction_status_id == _undefined || transaction_status_id == null
                ? _instance.transaction_status_id
                : (transaction_status_id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$status<
        TRes>
    implements
        CopyWith$Query$LoadAllTransactions$findManyTransactions$status<TRes> {
  _CopyWithStubImpl$Query$LoadAllTransactions$findManyTransactions$status(
      this._res);

  TRes _res;

  call({
    int? transaction_status_id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateOneSellers {
  factory Variables$Mutation$UpdateOneSellers({
    required Input$SellersUpdateInput data,
    required Input$SellersWhereUniqueInput where,
  }) =>
      Variables$Mutation$UpdateOneSellers._({
        r'data': data,
        r'where': where,
      });

  Variables$Mutation$UpdateOneSellers._(this._$data);

  factory Variables$Mutation$UpdateOneSellers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SellersUpdateInput.fromJson((l$data as Map<String, dynamic>));
    final l$where = data['where'];
    result$data['where'] = Input$SellersWhereUniqueInput.fromJson(
        (l$where as Map<String, dynamic>));
    return Variables$Mutation$UpdateOneSellers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SellersUpdateInput get data =>
      (_$data['data'] as Input$SellersUpdateInput);
  Input$SellersWhereUniqueInput get where =>
      (_$data['where'] as Input$SellersWhereUniqueInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOneSellers<
          Variables$Mutation$UpdateOneSellers>
      get copyWith => CopyWith$Variables$Mutation$UpdateOneSellers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOneSellers) ||
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

abstract class CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOneSellers(
    Variables$Mutation$UpdateOneSellers instance,
    TRes Function(Variables$Mutation$UpdateOneSellers) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOneSellers;

  factory CopyWith$Variables$Mutation$UpdateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers;

  TRes call({
    Input$SellersUpdateInput? data,
    Input$SellersWhereUniqueInput? where,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOneSellers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOneSellers _instance;

  final TRes Function(Variables$Mutation$UpdateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOneSellers._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SellersUpdateInput),
        if (where != _undefined && where != null)
          'where': (where as Input$SellersWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Variables$Mutation$UpdateOneSellers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOneSellers(this._res);

  TRes _res;

  call({
    Input$SellersUpdateInput? data,
    Input$SellersWhereUniqueInput? where,
  }) =>
      _res;
}

class Mutation$UpdateOneSellers {
  Mutation$UpdateOneSellers({
    this.updateOneSellers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOneSellers.fromJson(Map<String, dynamic> json) {
    final l$updateOneSellers = json['updateOneSellers'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSellers(
      updateOneSellers: l$updateOneSellers == null
          ? null
          : Mutation$UpdateOneSellers$updateOneSellers.fromJson(
              (l$updateOneSellers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneSellers = updateOneSellers;
    _resultData['updateOneSellers'] = l$updateOneSellers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneSellers = updateOneSellers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneSellers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneSellers = updateOneSellers;
    final lOther$updateOneSellers = other.updateOneSellers;
    if (l$updateOneSellers != lOther$updateOneSellers) {
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

extension UtilityExtension$Mutation$UpdateOneSellers
    on Mutation$UpdateOneSellers {
  CopyWith$Mutation$UpdateOneSellers<Mutation$UpdateOneSellers> get copyWith =>
      CopyWith$Mutation$UpdateOneSellers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOneSellers<TRes> {
  factory CopyWith$Mutation$UpdateOneSellers(
    Mutation$UpdateOneSellers instance,
    TRes Function(Mutation$UpdateOneSellers) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSellers;

  factory CopyWith$Mutation$UpdateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSellers;

  TRes call({
    Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers;
}

class _CopyWithImpl$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSellers _instance;

  final TRes Function(Mutation$UpdateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneSellers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSellers(
        updateOneSellers: updateOneSellers == _undefined
            ? _instance.updateOneSellers
            : (updateOneSellers as Mutation$UpdateOneSellers$updateOneSellers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers {
    final local$updateOneSellers = _instance.updateOneSellers;
    return local$updateOneSellers == null
        ? CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
            local$updateOneSellers, (e) => call(updateOneSellers: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSellers(this._res);

  TRes _res;

  call({
    Mutation$UpdateOneSellers$updateOneSellers? updateOneSellers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes>
      get updateOneSellers =>
          CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(_res);
}

const documentNodeMutationUpdateOneSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOneSellers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SellersWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneSellers'),
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
            name: NameNode(value: 'seller_id'),
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
Mutation$UpdateOneSellers _parserFn$Mutation$UpdateOneSellers(
        Map<String, dynamic> data) =>
    Mutation$UpdateOneSellers.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOneSellers = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateOneSellers?,
);

class Options$Mutation$UpdateOneSellers
    extends graphql.MutationOptions<Mutation$UpdateOneSellers> {
  Options$Mutation$UpdateOneSellers({
    String? operationName,
    required Variables$Mutation$UpdateOneSellers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOneSellers? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOneSellers>? update,
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
                        : _parserFn$Mutation$UpdateOneSellers(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOneSellers,
          parserFn: _parserFn$Mutation$UpdateOneSellers,
        );

  final OnMutationCompleted$Mutation$UpdateOneSellers? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOneSellers
    extends graphql.WatchQueryOptions<Mutation$UpdateOneSellers> {
  WatchOptions$Mutation$UpdateOneSellers({
    String? operationName,
    required Variables$Mutation$UpdateOneSellers variables,
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
          document: documentNodeMutationUpdateOneSellers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOneSellers,
        );
}

extension ClientExtension$Mutation$UpdateOneSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOneSellers>>
      mutate$UpdateOneSellers(
              Options$Mutation$UpdateOneSellers options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOneSellers>
      watchMutation$UpdateOneSellers(
              WatchOptions$Mutation$UpdateOneSellers options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOneSellers$updateOneSellers {
  Mutation$UpdateOneSellers$updateOneSellers({
    required this.seller_id,
    this.$__typename = 'Sellers',
  });

  factory Mutation$UpdateOneSellers$updateOneSellers.fromJson(
      Map<String, dynamic> json) {
    final l$seller_id = json['seller_id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOneSellers$updateOneSellers(
      seller_id: (l$seller_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int seller_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seller_id = seller_id;
    _resultData['seller_id'] = l$seller_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seller_id = seller_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seller_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOneSellers$updateOneSellers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seller_id = seller_id;
    final lOther$seller_id = other.seller_id;
    if (l$seller_id != lOther$seller_id) {
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

extension UtilityExtension$Mutation$UpdateOneSellers$updateOneSellers
    on Mutation$UpdateOneSellers$updateOneSellers {
  CopyWith$Mutation$UpdateOneSellers$updateOneSellers<
          Mutation$UpdateOneSellers$updateOneSellers>
      get copyWith => CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  factory CopyWith$Mutation$UpdateOneSellers$updateOneSellers(
    Mutation$UpdateOneSellers$updateOneSellers instance,
    TRes Function(Mutation$UpdateOneSellers$updateOneSellers) then,
  ) = _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers;

  factory CopyWith$Mutation$UpdateOneSellers$updateOneSellers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers;

  TRes call({
    int? seller_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  _CopyWithImpl$Mutation$UpdateOneSellers$updateOneSellers(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOneSellers$updateOneSellers _instance;

  final TRes Function(Mutation$UpdateOneSellers$updateOneSellers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seller_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOneSellers$updateOneSellers(
        seller_id: seller_id == _undefined || seller_id == null
            ? _instance.seller_id
            : (seller_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers<TRes>
    implements CopyWith$Mutation$UpdateOneSellers$updateOneSellers<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOneSellers$updateOneSellers(this._res);

  TRes _res;

  call({
    int? seller_id,
    String? $__typename,
  }) =>
      _res;
}
