import 'package:common/network/error_response.dart';

class ApiFailure {
  final String? message;
  final ErrorResponse? errorResponse;
  final ErrorType? errorType;

  const ApiFailure({
     this.message,
     this.errorResponse,
     this.errorType,
  });



}

enum ErrorType { connectionError, notFound, serverError, unauthorized }
