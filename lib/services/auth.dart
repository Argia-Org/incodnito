import 'package:dio/dio.dart';
import 'package:incodnito/utils/serverdata.dart';

class Auth {
  Dio dio = new Dio();
  Response response;

  Auth() {
    dio.options.baseUrl = kbaseUrl + "/auth";
  }

  Future<String> login(String email, String password) async {
    FormData formData = new FormData.fromMap({
      "username": email,
      "password": password,
    });
    response = await dio.post("/info", data: formData);
    if (response.statusCode == 200) return response.data.toString();
    return null;
  }
}
