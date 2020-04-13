import 'package:dio/dio.dart';

class DioManger {
  static final int timeout = 60000;

  static Dio _dio;

  static Dio getDioInstance() {
    var options = BaseOptions(
      baseUrl: "https://gank.io/api",
      connectTimeout: timeout,
      receiveTimeout: timeout,
    );

    var dio = Dio(options);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      print(
          "\n================================= 请求数据 =================================");
      print("method = ${options.method.toString()}");
      print("url = ${options.uri.toString()}");
      print("headers = ${options.headers}");
      print("params = ${options.queryParameters}");
    }, onResponse: (Response response) {
      print(
          "\n================================= 响应数据开始 =================================");
      print("code = ${response.statusCode}");
      print("data = ${response.data}");
      print(
          "================================= 响应数据结束 =================================\n");
    }, onError: (DioError e) {
      print(
          "\n=================================错误响应数据 =================================");
      print("type = ${e.type}");
      print("message = ${e.message}");
      print("stackTrace = ${e.toString()}");
      print("\n");
    }));
    return dio;
  }

  static Dio dioInstance() {
    if (_dio == null) {
      _dio = getDioInstance();
    }
    return _dio;
  }
}
