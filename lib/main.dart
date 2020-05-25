import 'package:flutter/material.dart';
import 'dart:convert';
import "package:http/http.dart" as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Object apiData = {};

  String searchTerm = "iconbutton";

  _fetchData(String widgetName) async {
    String url = "https://api.flutter.dev/flutter/index.json";
    http.Response responseData = await http.get(url);
    print(jsonDecode(responseData.body).length);
    Object searchResult = jsonDecode(responseData.body).where(
      (item) => item["name"].toLowerCase() == widgetName.toLowerCase(),
    );
    print(searchResult);
    setState(() {
      apiData = searchResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            hintText: "Search Widget",
            contentPadding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                print(searchTerm);
                setState(() {});
                _fetchData(searchTerm);
              },
            ),
          ),
          onChanged: (String value) {
            setState(() {
              searchTerm = value;
              // _userData = null;
            });
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(
            10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "${apiData}",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
