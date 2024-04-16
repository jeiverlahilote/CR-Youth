import 'dart:convert';
import 'package:app1/tim.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future getTeams() async {
    var response = await http.get(Uri.https('balldonlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);
    @override
    Widget build(BuildContext context) {
      getTeams();
      return Scaffold();
    }
  }
}
