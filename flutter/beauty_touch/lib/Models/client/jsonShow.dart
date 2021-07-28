import 'package:beauty_touch/Models/client/clientShow.dart';
import 'package:http/http.dart' as http;

Future<ClientShow> showComment(int id) async {
  final url = Uri.parse(
    'https://fa1bc552e7a9.ngrok.io/user/$id',
  );
  final respuesta = await http.get(
    url,
  );
  print(respuesta.statusCode);

  if (respuesta.statusCode == 200) {
    return clientShowFromJson(respuesta.body);
  } else {
    return null;
  }
}
