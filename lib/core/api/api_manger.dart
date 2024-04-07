import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/core/constants.dart';

@singleton
class ApiManger {
  static const apiKey = '';
  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseMoviesApiUrl,
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0MDhjODg3YjdhMjAyMjQyMmYyOTM4NWZjZTQ1Yzg2NCIsInN1YiI6IjY2MGZkYjM0ZDQ4Y2VlMDE4NmJkNTU1MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.CYG0ofDQmx3BybmHJewwlFN3FgX-IlApbZ0QRgVxb2k"
        },
      ),
    );
  }
  Future<Response> getRequest(
      {required String endPoints,
      Map<String, dynamic>? queryParameters}) async {
    var response = await dio.get(
      endPoints,
      queryParameters: queryParameters,
    );

    return response;
  }

  Future<Response> postRequest(
      {required String endPoints, Map<String, dynamic>? body}) async {
    var response = await dio.post(endPoints, data: body);
    return response;
  }
}
