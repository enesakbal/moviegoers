// ignore_for_file: omit_local_variable_types, constant_identifier_names, unused_local_variable, inference_failure_on_function_invocation, prefer_single_quotes

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moviegoers/src/core/init/network/dio_client.dart';

void main() {
  late Dio dio;
  late DioClient manager;
  dotenv.testLoad(fileInput: File('.env').readAsStringSync());

  test('is working', () async {
    final dio = Dio();
    final manager = DioClient(dio);
    final response = await manager.get('/movie/top_rated');

    expect(response, isNotNull);
  });
}
