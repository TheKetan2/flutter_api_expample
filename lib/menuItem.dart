import "package:flutter/material.dart";

class CustomMenuItemWidget extends StatefulWidget {
  @override
  _CustomMenuItemWidgetState createState() => _CustomMenuItemWidgetState();
}

class _CustomMenuItemWidgetState extends State<CustomMenuItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 100.0,
            // margin: EdgeInsets.all(20.0),
            color: Colors.green[200],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 0,
                  ),
                  child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Card 1"),
                        Expanded(
                          child: Container(),
                        ),
                        Row(children: [
                          PopupMenuButton(itemBuilder: (BuildContext context) {
                            return null;
                          }),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          )
                        ])
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Chip(
                            label: Text("doing"),
                            backgroundColor: Colors.blue[500]),
                        Expanded(
                          child: Container(),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pink[100],
                          child: Text('AB'),
                        ),
                      ]),
                ),
              ],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
