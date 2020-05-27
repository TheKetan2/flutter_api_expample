import 'package:flutter/material.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic apiData;
  String name = null;
  String widgetUrl = "";
  bool isLoading = false;
  String baseUrl = "https://api.flutter.dev/flutter/";

  String searchTerm = "iconbutton";

  _launchURL() async {
    if (await canLaunch(baseUrl + widgetUrl)) {
      await launch(baseUrl + widgetUrl);
    } else {
      throw 'Could not launch';
    }
  }

  _fetchData(String widgetName) async {
    String url = "https://api.flutter.dev/flutter/index.json";
    setState(
      () {
        name = "";
        isLoading = true;
      },
    );

    http.Response responseData = await http.get(url);
    print(jsonDecode(responseData.body));
    dynamic searchResult = jsonDecode(responseData.body).where(
      (item) {
        if (item["name"].toLowerCase() == widgetName.toLowerCase()) {
          setState(() {
            widgetUrl = item["href"];
            name = item["name"];
          });
        }
        return item["name"].toLowerCase() == widgetName.toLowerCase();
      },
    );

    print(searchResult);
    setState(
      () {
        isLoading = false;
        apiData = jsonDecode(responseData.body).where(
          (item) => item["name"].toLowerCase() == widgetName.toLowerCase(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  isLoading = true;
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
          child: name == null
              ? Center(child: Text("Search Widget"))
              : isLoading
                  ? CircularProgressIndicator()
                  : Container(
                      padding: EdgeInsets.all(
                        10.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Center(
                            //   child: Icon(
                            //     Icons.arrow_right,
                            //     size: 40,
                            //   ),
                            // ),
                            Text(
                              "Widget Name: $name \nUrl: $baseUrl$widgetUrl ",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              child: Container(
                                width: double.infinity,
                                color: Theme.of(context).primaryColor,
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "Open $name Docs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              onTap: _launchURL,
                            ),
                          ],
                        ),
                      ),
                    ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
