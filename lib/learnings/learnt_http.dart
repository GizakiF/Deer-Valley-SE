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
          Text(_msg),
          IconButton(
            onPressed: () {
              setState(() {
                if (!_toggle) {
                  _msg = "fadf";
                } else {
                  // _msg = "hahaha";
                  getMessageFromAPI();
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

  void getMessageFromAPI() async {
    String url = "http://10.0.2.2/flutter/api/test_api.php";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        _msg = response.body;
      });
    }
  }
}
