abstract class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);
}

class BadRequestException extends NetworkException {
  BadRequestException(super.message);
}

class UnauthorizedException extends NetworkException {
  UnauthorizedException(super.message);
}

class NotFoundException extends NetworkException {
  NotFoundException(super.message);
}

class ForbiddenException extends NetworkException {
  ForbiddenException(super.message);
}

class InternalServerException extends NetworkException {
  InternalServerException(super.message);
}
