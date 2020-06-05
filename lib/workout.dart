import "package:flutter/material.dart";
import './submit.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  String name, sets, rep, pmg, smg;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Create Workouts'),
            centerTitle: true,
          ),
          body: Container(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Scaffold(
                    body: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: 'Exercise Name'),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration:
                        InputDecoration(hintText: 'Primary Muscle Group'),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        pmg = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration:
                        InputDecoration(hintText: 'Secondary Muscle Group'),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        smg = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Reps'),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        rep = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Sets'),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        sets = value;
                      });
                    },
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                RaisedButton(
                                  color: Colors.cyan[200],
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 80.0,
                                    vertical: 20.0,
                                  ),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onPressed: () {
                                    //String name, sets, rep, pmg, smg;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Submit(
                                          name: name,
                                          sets: sets,
                                          rep: rep,
                                          pmg: pmg,
                                          smg: smg,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ]),
                        ]),
                  ))
                ]))),
          ),
        ),
      ),
    );
  }
}
