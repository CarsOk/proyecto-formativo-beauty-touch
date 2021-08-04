import 'package:beauty_touch/Models/createAcount_Client_Post.dart';
import 'package:http/http.dart ' as http;

Future<CommentPost> registrar(Map<String, dynamic> json) async {
  final uri = Uri.parse('https://e978e7c13082.ngrok.io/registrator');
  final respuesta = await http.post(uri, body: json);
  print(respuesta.body);

  if (respuesta.statusCode == 201) {
    return clientPostFromJson(respuesta.body);
  } else {
    return null;
  }
}
