import 'package:flutter/material.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:stack_flutter_exp/bottom_fade_button.dart';
import 'package:stack_flutter_exp/card_list_example.dart';
import 'package:stack_flutter_exp/country_picket.dart';
import 'package:stack_flutter_exp/json_parse.dart';
import 'package:stack_flutter_exp/random_image.dart';
import 'package:stack_flutter_exp/refreshIndicator.dart';
import 'package:stack_flutter_exp/slider_example.dart';
import 'package:stack_flutter_exp/stack_example.dart';
import 'package:stack_flutter_exp/workout.dart';
import 'package:url_launcher/url_launcher.dart';
import './flutter_api_example.dart';
import "./submit.dart";
import './change_color.dart';
import './delete_list.dart';
import './radiotilelist.dart';
import './card_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Cart_product()
      // home: Scaffold(
      //     appBar: AppBar(title: Text("List Example")),
      //     body: ListView(
      //       children: <Widget>[
      //         CardConainer(
      //           content: "lorem",
      //         ),
      //         CardConainer(
      //           content:
      //               "lorem ipsumlorem ipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum",
      //         ),
      //       ],
      //     )),
    );
  }
}

class CardConainer extends StatelessWidget {
  final String content;
  const CardConainer({
    this.content,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: new EdgeInsets.all(5.0),
      width: double.infinity,
      child: new Card(
        child: new InkWell(
          onTap: () {},
          child: new Container(
            width: double.infinity,
            padding: new EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Colors.green,
                  size: 25,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Text(
                        content,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Colors.green,
                        size: 25,
                      ),
                      Text("12:12"),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
