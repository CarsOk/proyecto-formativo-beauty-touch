import 'package:beauty_touch/Models/client/clientGet.dart';
import 'package:http/http.dart' as http;

Future<List<Client>> getComment() async {
  final url = Uri.parse(
    'https://fa1bc552e7a9.ngrok.io/user',
  );
  final respuesta = await http.get(
    url,
  );
  print(respuesta.statusCode);

  if (respuesta.statusCode == 200) {
    return clientFromJson(respuesta.body);
  } else {
    return null;
  }
}
