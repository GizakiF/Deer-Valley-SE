import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LearnHttp extends StatefulWidget {
  const LearnHttp({super.key});

  @override
  State<LearnHttp> createState() => _LearnHttpState();
}

class _LearnHttpState extends State<LearnHttp> {
  String _msg = "hello World";
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(),
          SelectableText(_msg),
          IconButton(
            onPressed: () {
              setState(() {
                if (!_toggle) {
                  _msg = "xxxxsss";
                } else {
                  // _msg = "hahaha";
                  getMessageFromAPI("Hhahah");
                }
                _toggle = !_toggle;
              });
            },
            icon: Icon(Icons.bed),
          ),
        ],
      ),
    );
  }

  void getMessageFromAPI(String name) async {
    // String url = "http://10.0.2.2:8000/connect.php";
    String url = "https://catfact.ninja/fact";

    // final Map<String, dynamic> queryParams = {"name": name, "address": "USA"};

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        setState(() {
          Map<String, dynamic> cat = jsonDecode(response.body);
          _msg = cat['fact'];
        });
      } else {
        setState(() {
          _msg = "Error: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _msg = "Request Failed: $e";
      });
    }
  }
}
