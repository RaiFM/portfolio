import 'dart:convert';
import 'package:http/http.dart' as http;
import 'repository_model.dart';

class ApiService {
  // static const baseUrl = 'api.github.com';

  static Future<dynamic> getRepositories() async {
    // var url = Uri.https(baseUrl, '/users/RaiFM/repos');
    // var response = await http.get(Uri.parse(url));

    // print(response);
    // var repositories = (json.decode(response.body))
    //     .map((item) => Repository.fromJson(item))
    //     .toList();

    // print(repositories);

    // return repositories;

    var repositories;
    
    final response = await http.get(
      Uri.parse('https://api.github.com/users/raifm/repos'),
    );

    if (response.statusCode == 200) {
      repositories = json.decode(response.body);
    }

    return repositories;
  }
}