class LocalJsonFetchException implements Exception {
  String _message;

  LocalJsonFetchException(
      [String message = 'Sucedio un error al intentar consultar el documento json']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
