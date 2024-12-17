import 'dart:io';

import 'package:common/logging/logging.dart';
import 'package:common/network/api_failure.dart';
import 'package:common/network/error_response.dart';
import 'package:dio/dio.dart';

extension ErrorMapper on Exception {
  ApiFailure mapToFailure() {
    ErrorType errorType = ErrorType.serverError;
    if (this is DioException) {
      errorType = _mapToErrorType((this as DioException));
      ErrorResponse? errorResponse;
      if ((this as DioException).response?.data != null) {
        try {
          errorResponse =
              ErrorResponse.fromJson((this as DioException).response?.data);
        } catch (e) {
          logger.e("Server error");
        }
      }
      return ApiFailure(
          message: null, errorType: errorType, errorResponse: errorResponse);
    } else {
      return const ApiFailure(
        message: null,
        errorType: ErrorType.serverError,
      );
    }
  }

  _mapToErrorType(DioException dioException) {
    ErrorType errorType = ErrorType.serverError;
    if (dioException.error is SocketException) {
      errorType = ErrorType.connectionError;
    } else {
      switch (dioException.response?.statusCode) {
        case 400 || 404:
          errorType = ErrorType.notFound;
          break;
        case 401:
          errorType = ErrorType.unauthorized;
          break;
        case 500 || 502:
          errorType = ErrorType.serverError;
          break;
      }
    }
    return errorType;
  }
}
