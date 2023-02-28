import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> callFoodAPI() async {
  http.Response res = await http
      .get(Uri.parse("https://63f841d21dc21d5465bbbfcd.mockapi.io/Food_API_Demo"));
  dynamic map = jsonDecode(res.body.toString());
  return map;
}
