import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://combative-hare-bedclothes.cyclic.app/api/v1/';

  late final Dio _dio;

  ApiService(this._dio);

  Future<Map<String , dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}