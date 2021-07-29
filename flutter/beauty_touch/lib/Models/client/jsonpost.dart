import 'package:beauty_touch/Models/client/clientPost.dart';

import 'package:http/http.dart' as http;

Future<ClientPost> registrar(Map<String, dynamic> datos) async {
  final url = Uri.parse('https://fa1bc552e7a9.ngrok.io/user');
  final response = await http.post(url, body: datos);
  if (response.statusCode == 201) {
    return clientPostFromJson(response.body);
  } else {
    return null;
  }
}
