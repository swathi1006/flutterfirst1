import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServiceGetPost {
  final String url = 'https://api.restful-api.dev/objects';
  final String url2 ='https://api.restful-api.dev/objects/';
  var fieldvalue;

  Future<void> sendData() async {
    final Map<String, dynamic> data = {
      "name": "Apple MacBook Pro 35",
      "data": {
        "year": 2024,
        "price": 2849.99,
        "CPU model": "Intel Core i9 max",
        "Hard disk size": "1 TB"
      }
    };

    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(data);

    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Data sent successfully');
      print(response.body);
      var jsonResponse = json.decode(response.body);
       fieldvalue = jsonResponse['id'];
      print(fieldvalue);
    } else {
      print('Failed to send data. Status code: ${response.statusCode}');
    }
  }



  Future<void> fetchData() async {
    final getResponse = await http.get(Uri.parse(url2+fieldvalue));
    print(getResponse.body);

    if (getResponse.statusCode == 200) {

      return json.decode(getResponse.body);

    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
