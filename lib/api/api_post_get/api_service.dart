import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = 'https://api.restful-api.dev/objects';

  Future<void> sendData() async {
    final Map<String, dynamic> data = {
      "name": "Apple MacBook Pro 27",
      "data": {
        "year": 2024,
        "price": 2849.99,
        "CPU model": "Intel Core i9",
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
    } else {
      print('Failed to send data. Status code: ${response.statusCode}');
    }
  }

  Future<List<dynamic>> fetchData() async {
    final getResponse = await http.get(Uri.parse(url));

    if (getResponse.statusCode == 200) {
      return json.decode(getResponse.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
