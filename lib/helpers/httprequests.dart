import 'package:atapp/helpers/constants.dart';
import 'package:http/http.dart' as http;

Future<http.Response> exec_Request(String endPoint, Object Body, String method,
    {Map<String, String>? Headers, bool AddToken = false}) async {
  var response;

  try {
    if (method.toUpperCase() == "POST")
      response = await http.post(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers,
          body: Body);
    else if (method.toUpperCase() == "GET")
      response = await http.get(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers);
    else if (method.toUpperCase() == "HEAD")
      response = await http.head(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers);
    else if (method.toUpperCase() == "DELETE")
      response = await http.delete(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers,
          body: Body);
    else if (method.toUpperCase() == "PATCH")
      response = await http.patch(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers,
          body: Body);
    else if (method.toUpperCase() == "PUT")
      response = await http.put(
          Uri.parse(Constants.BaseUrl + Constants.ResourcePath + endPoint),
          headers: Headers,
          body: Body);
  } catch (e) {
    print(e);
  }
  return response;
}
