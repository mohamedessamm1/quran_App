import 'package:dio/dio.dart';

/////////////App dio
class AppDioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      // baseUrl: 'https://api.alquran.cloud/v1/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getdata({
    required String url,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',
    };
    return dio.get(url);
  }

  static Future<Response> postdata({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    required String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',
    };
    return dio.post(url, data: data, queryParameters: query);
  }
}
