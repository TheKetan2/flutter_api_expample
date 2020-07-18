import 'package:flutter/material.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:stack_flutter_exp/bottom_fade_button.dart';
import 'package:stack_flutter_exp/card_list_example.dart';
import 'package:stack_flutter_exp/country_picket.dart';
import 'package:stack_flutter_exp/json_parse.dart';
import 'package:stack_flutter_exp/menuItem.dart';
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
  runApp(CustomMenuItemWidget());
}

class MyApp extends StatelessWidget {
  final GlobalKey _containerKey = GlobalKey();
  final GlobalKey _listKey = GlobalKey();

  void getSize() {
    RenderBox containerSize = _containerKey.currentContext.findRenderObject();
    RenderBox listSize = _containerKey.currentContext.findRenderObject();

    print(containerSize.size.height);
    print("list:" + listSize.size.width.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Text("")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                key: _containerKey,
                width: double.infinity,
                color: Colors.yellow,
                height: 100,
                child: ListView(
                  // shrinkWrap: true,
                  key: _listKey,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 30,
                      color: Colors.red,
                      margin: EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: getSize,
                child: Text("Get Size"),
              ),
            ],
          ),

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
        ));
  }
}
