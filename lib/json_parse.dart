import "package:flutter/material.dart";
import "dart:convert";

import "package:http/http.dart" as http;

import 'package:html/parser.dart' as parse;
import 'package:html/dom.dart' as dom;

class JsonMultyParse extends StatefulWidget {
  @override
  _JsonMultyParseState createState() => _JsonMultyParseState();
}

class _JsonMultyParseState extends State<JsonMultyParse> {
  final String apiURL = 'https://jsonplaceholder.typicode.com/users';
  final String tikTok = "https://www.tiktok.com/@babajackson2020";

  List<dynamic> users = [];
  void fetchJSONData() async {
    var jsonResponse = await http.get(apiURL);

    http.Response response =
        await http.get('https://www.tiktok.com/@babajackson2020');
    dom.Document document = parse.parse(response.body);
    final elements = document.getElementsByClassName('jsx-581822467');
    print(elements);

    if (jsonResponse.statusCode == 200) {
      final jsonItems =
          json.decode(jsonResponse.body).cast<Map<String, dynamic>>();
      // print(jsonItems[0]["address"]["street"]);
      setState(() {
        users = jsonItems;
      });

      // for (dynamic user in users) {
      //   print(user["address"]["street"]);
      // }
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: fetchJSONData,
                  child: Text("Fetch Data"),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              users[index]["address"]["street"],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
