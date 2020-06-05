import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _StartHomeState createState() => _StartHomeState();
}

class _StartHomeState extends State<Home> {
  // EventsList events;
  int number = 0;

  @override
  // void initState() {
  //   super.initState();
  //   events = EventsList();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("RefreshIndicator Example"),
      ),
      resizeToAvoidBottomPadding: false,
      body: RefreshIndicator(
        onRefresh: resfreshEventList,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              // HomeTopBar(),
              // events,
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Text(number.toString()),
                ),
              ),
              Divider(),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Text(number.toString()),
                ),
              ),
              Divider(),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Text(number.toString()),
                ),
              ),
              Divider(),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Text(number.toString()),
                ),
              ),
              Divider(),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: Text(number.toString()),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Future<Null> resfreshEventList() async {
    await Future.delayed(Duration(seconds: 2));

    // setState(() {
    //   events = EventsList();
    // });
    setState(() {
      number = number + 1;
    });
    print("Refresh Pressed");
    return null;
  }
}
