// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'error_model/error_model.dart';

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

      case DioErrorType.badResponse:
        message = ErrorModel.fromJson(dioError.response?.data as Map<String, dynamic>).statusMessage!;
        break;

      case DioErrorType.unknown:
        message = 'Unexpected error occurred';
        break;
    }
    message = 'Something went wrong';
  }

  late String message;

  @override
  List<Object> get props => [message];
}
