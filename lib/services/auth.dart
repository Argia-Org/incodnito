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

    try {
      response = await dio.post("/login/", data: formData);
      return response.data['token'].toString();
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
    }

    return null;
  }

  Future<String> register(
      String email, String username, String password) async {
    FormData formData = new FormData.fromMap({
      "email": email,
      "username": username,
      "password": password,
    });

    try {
      response = await dio.post("/register/", data: formData);
      return response.data['token'].toString();
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
    }

    return null;
  }
}
