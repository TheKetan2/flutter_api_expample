import 'package:flutter/material.dart';

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  List continents = [
    {"id": 1, "continent": "North America", "country": "United States"},
    {"id": 2, "continent": "Europe", "country": "Germany"},
    {
      "id": 3,
      "continent": "Asia",
    }
  ];
  List _continents = [];

  // filtering

  @override
  void initState() {
    super.initState();

    setState(() {
      _continents = continents;
      // continents.where((element) => element["country"] != null).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Table Example"),
      ),
      body: Column(
        children: <Widget>[
          for (Map<String, dynamic> continent in _continents)
            SingleChildScrollView(
              child: Table(children: [
                if (continent["country"] != null)
                  TableRow(children: [
                    TableCell(child: Text(continent["continent"])),
                    TableCell(child: Text(continent["country"]))
                  ]),
              ]),
            ),
        ],
      ),
    ));
  }
}
