abstract class BaseException implements Exception {
  final String? message;

  BaseException(this.message);
}

class RemoteException extends BaseException {
  final int? status;

  RemoteException({String? message, this.status}) : super(message);
}

class LocalException extends BaseException {
  LocalException({String? message}) : super(message);
}
