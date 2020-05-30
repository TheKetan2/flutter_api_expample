import "package:flutter/material.dart";
import "dart:convert";
import "package:http/http.dart" as http;

class JsonMultyParse extends StatefulWidget {
  @override
  _JsonMultyParseState createState() => _JsonMultyParseState();
}

class _JsonMultyParseState extends State<JsonMultyParse> {
  final String apiURL = 'https://jsonplaceholder.typicode.com/users';
  List<dynamic> users = [];
  void fetchJSONData() async {
    var jsonResponse = await http.get(apiURL);

    if (jsonResponse.statusCode == 200) {
      final jsonItems =
          json.decode(jsonResponse.body).cast<Map<String, dynamic>>();
      print(jsonItems[0]["address"]["street"]);
      setState(() {
        users = jsonItems;
      });

      for (dynamic user in users) {
        print(user["address"]["street"]);
      }
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
