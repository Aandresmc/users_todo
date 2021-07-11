class ServerException implements Exception {
  final String message;

  ServerException([this.message]);

  @override
  String toString() => message;
}

class Failure implements Exception {
  final String message;

  Failure([this.message]);

  @override
  String toString() => message;
}
