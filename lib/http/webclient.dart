import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';


import 'interceptors/loggin_interceptor.dart';

final Client client = HttpClientWithInterceptor.build(
  interceptors: [LoggingInterceptor()],
);

final url = Uri.https(
  'fe6c1967022d.ngrok.io', //https criado pelo ngrok
  'transactions',
);
