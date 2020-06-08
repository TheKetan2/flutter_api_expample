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
        home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text("Center RadioTile")),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(20, 124, 148, 1),
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RadioListTile(
                        value: 0,
                        title: Text("Surah"),
                        groupValue: groupValue,
                        onChanged: (v) {
                          setState(() {
                            groupValue = v;
                          });
                        },
                        activeColor: Colors.white,
                      ),
                      RadioListTile(
                        value: 1,
                        title: Text("Identicals"),
                        groupValue: groupValue,
                        onChanged: (v) {
                          setState(() {
                            groupValue = v;
                          });
                        },
                        activeColor: Colors.white,
                      )
                    ],
                  ),
                ),
                // CustomBottomSheet(),
              ],
            ),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: new Icon(Icons.add),
        ),
      ),
    ));
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        print("hi");
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: new Column(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
