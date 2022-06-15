import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class NetworkService {
  Future<dynamic> getData({
    required String path,
    Map<String, dynamic> queryParameters = const {},
  });
}

class DioNetworkService implements NetworkService {
  final Dio _dio;

  DioNetworkService({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }

  @override
  Future<dynamic> getData(
      {required String path,
      Map<String, dynamic> queryParameters = const {}}) async {
    try {
      Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioError catch (e) {
      log('DioError: $e');
      rethrow;
    }
  }
}
