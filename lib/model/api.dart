import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class ApiRepository {
  final String apiToken = '69e53c5199934934b3548a7758234388';

  Future<List<dynamic>> fetchMatches() async {
    DateTime mostRecentMonday(DateTime date) =>
        DateTime(date.year, date.month, date.day - (date.weekday - 1));
    String date =
        DateFormat('yyyy-MM-dd').format(mostRecentMonday(DateTime.now()));
    String today = DateFormat('yyyy-MM-dd').format(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day + 1));
    final response = await http.get(
      Uri.parse(
          'http://api.football-data.org/v4/matches?dateFrom=$date&dateTo=$today'),
      headers: {'X-Auth-Token': apiToken},
    );

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      return result['matches'] ?? [];
    } else {
      throw Exception('Failed to load matches. Try enter the screen again');
    }
  }
}
