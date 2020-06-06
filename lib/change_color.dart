import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  @override
  _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Container Color"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: color,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    child: Text("Red"),
                    onPressed: () {
                      setState(() {
                        color = Colors.red;
                      });
                    },
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text("Green"),
                    onPressed: () {
                      setState(() {
                        color = Colors.green;
                      });
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text("Blue"),
                    onPressed: () {
                      setState(() {
                        color = Colors.blue;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
