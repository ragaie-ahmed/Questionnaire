
import 'package:http/http.dart'as http;
class ApiServices{

  static Future<http.MultipartRequest> postData(
      {required String endPoint}) async {
    var response = http.MultipartRequest("Post", Uri.parse(endPoint));
    return response;
  }
}