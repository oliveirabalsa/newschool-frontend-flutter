import 'package:dio/dio.dart';

class LoginDio {
  final Dio dio = Dio();
  
  suaRequisicao({…parametros}) async {
    Response response = await dio.get({URL_DA_SUA_API});
    return response.data;
  }
}