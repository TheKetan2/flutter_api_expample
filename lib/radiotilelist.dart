import 'package:flutter/material.dart';

class RadioTileCenter extends StatefulWidget {
  @override
  _RadioTileCenterState createState() => _RadioTileCenterState();
}

class _RadioTileCenterState extends State<RadioTileCenter> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Center RadioTile")),
      body: Center(
        child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RadioListTile(
                  value: 0,
                  groupValue: groupValue,
                  title: Text(
                    "Surah",
                    style: TextStyle(color: Colors.green),
                  ),
                  onChanged: (v) {
                    setState(() {
                      groupValue = v;
                    });
                  },
                  activeColor: Colors.green,
                ),
                RadioListTile(
                  value: 1,
                  groupValue: groupValue,
                  title: Text(
                    "Identicals",
                    style: TextStyle(color: Colors.green),
                  ),
                  onChanged: (v) {
                    setState(() {
                      groupValue = v;
                    });
                  },
                  activeColor: Colors.green,
                )
              ],
            )),
      ),
    ));
  }
}
