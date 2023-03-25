// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

/// It takes a DioError object and returns a custom error message
class NetworkExceptions extends Equatable implements Exception {
  NetworkExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Request to API server was cancelled';
        break;

      case DioErrorType.connectionTimeout:
        message = 'Connection timeout with API server';
        break;

      case DioErrorType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
        break;

      case DioErrorType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;

      case DioErrorType.sendTimeout:
        message = 'Send timeout in connection with API server';
        break;

      case DioErrorType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          message = 'No Internet';
          break;
        } else {
          message = 'Unexpected error occurred';
          break;
        }

      case DioErrorType.badCertificate:
        message = 'Bad Certificate';
        break;

      case DioErrorType.unknown:
        message = 'Unexpected error occurred';
        break;
    }
    message = 'Something went wrong';
  }

  late String message;

  /// It returns a string based on the status code of the error
  ///
  /// Args:
  ///   statusCode (int): The HTTP status code of the response.
  ///
  /// Returns:
  ///   A string
  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Invalid email';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'The requested resource does not exist.';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 409:
        return 'Email already exists';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }

  @override
  List<Object> get props => [message];
}
