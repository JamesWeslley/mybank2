import 'package:http/http.dart';

void findAll() async {
  final url = Uri.https(
    'f12814adeeca.ngrok.io',//https criado pelo ngrok
    'transactions',
  );
  final Response response = await get(url);
  print(response.body);
}
