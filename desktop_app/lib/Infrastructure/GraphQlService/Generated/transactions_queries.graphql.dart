import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

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
