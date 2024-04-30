import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    /**angela's code line*/
    // http.Response response = await http.get(url);

    /**these are pub.dev lines*/
    // var url = Uri.https('example.com', 'whatsit/create');
    // var response =
    //     await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    // print(await http.read(Uri.https('example.com', 'foobar.txt')));

    //start of my code
    Uri url1 = Uri.https(url);
    http.Response response = await http.get(url1);
    //end of my code

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
