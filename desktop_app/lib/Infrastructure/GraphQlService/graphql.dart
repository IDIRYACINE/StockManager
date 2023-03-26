
import 'package:graphql/client.dart';
import 'package:stock_manager/secrets.dart' as secrets;

GraphQLClient? _graphQlClient;

GraphQLClient getGraphQlClient() {

  if(_graphQlClient != null) {
    return _graphQlClient! ;
  }

  final httpLink = HttpLink(
    secrets.serverLink,
  );

  const websockeEndpoint = secrets.websocketLink;

  final authLink = AuthLink(
    getToken: () async => secrets.authHeader,
  );

  Link link = authLink.concat(httpLink);

  final wsLink = WebSocketLink(websockeEndpoint);
  link = Link.split((request) => request.isSubscription, wsLink, link);

  _graphQlClient = GraphQLClient(
    /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
    link: link,
  );

  return _graphQlClient!;
}