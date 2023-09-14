import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/agent_model.dart';

class AgentService {
  String apiUrl = 'https://valorant-api.com/v1/agents';

  Future<List<AgentModel>> fetchAgents() async {
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(
      Uri.parse(apiUrl),
      headers: headers,
    );

    // check data
    // ignore: avoid_print
    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];

      return data.map((item) => AgentModel.fromJson(item)).toList();
    } else {
      throw Exception('Gagal Get Agent!');
    }
  }
}
