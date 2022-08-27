
class SearchWrapper{
  final List<AttributeWrapper> _searchParameters;

  SearchWrapper(this._searchParameters);

  List<AttributeWrapper> get searchParameters => _searchParameters;
}

class LoadWrapper{
  int limit;
  int offset;

  LoadWrapper(this.limit, this.offset);
}

class AttributeWrapper{

  final Enum _attributeName;

  final String _attributeValue;

  AttributeWrapper(this._attributeName,this._attributeValue);

  String get attributeName => _attributeName.toString();
  String get attributeValue => _attributeValue;

}