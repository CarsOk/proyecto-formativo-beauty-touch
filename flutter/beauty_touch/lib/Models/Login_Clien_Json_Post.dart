import 'package:http/http.dart' as http;

import 'Login_Client_Post.dart';

Future<List<Comment>> loggin(json) async {
  final url = Uri.parse(
    'https://1c81b612ea11.ngrok.io/comments2',
  );
  final respuesta = await http.post(url, body: json);
  print(respuesta.statusCode);

  if (respuesta.statusCode == 200) {
    return logginClientFromJson(respuesta.body);
  } else {
    return null;
  }
}
