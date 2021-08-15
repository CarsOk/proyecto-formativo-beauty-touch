import 'package:beauty_touch/Models/createAcount_Client_Post.dart';
import 'package:http/http.dart ' as http;

Future<CommentPost> registrar(Map<String, dynamic> json) async {
  final uri = Uri.parse('https://826ab093e59a.ngrok.io/clients');
  final respuesta = await http.post(uri, body: json);
  print(respuesta.body);

  if (respuesta.statusCode == 201) {
    return clientPostFromJson(respuesta.body);
  } else {
    return null;
  }
}
