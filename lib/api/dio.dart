import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule();

  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }

    print('**** Dio created');
    BaseOptions options = new BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
    );

    _dio = Dio(options);

    _dio!.interceptors.add(PrettyDioLogger(
        request: false,
        requestBody: false,
        responseBody: false,
        requestHeader: false));

    return _dio!;
  }
}
