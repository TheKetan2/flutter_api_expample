import 'package:flutter/material.dart';
// import 'dart:convert';
// import "package:http/http.dart" as http;
// import 'package:stack_flutter_exp/bottom_fade_button.dart';
// import 'package:stack_flutter_exp/card_list_example.dart';
// import 'package:stack_flutter_exp/country_picket.dart';
// import 'package:stack_flutter_exp/json_parse.dart';
// import 'package:stack_flutter_exp/menuItem.dart';
// import 'package:stack_flutter_exp/random_image.dart';
// import 'package:stack_flutter_exp/refreshIndicator.dart';
// import 'package:stack_flutter_exp/slider_example.dart';
// import 'package:stack_flutter_exp/stack_example.dart';
// import 'package:stack_flutter_exp/workout.dart';
// import './flutter_api_example.dart';
// import "./submit.dart";
// import './change_color.dart';
// import './delete_list.dart';
// import './radiotilelist.dart';
// import './card_products.dart';

void main() {
  runApp(MyApp());
}

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network("https://picsum.photos/250?image=9"),
            Row(
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text("Add to cart"),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Add to cart"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final GlobalKey _containerKey = GlobalKey();
  final GlobalKey _listKey = GlobalKey();

  // void getSize() {
  //   RenderBox containerSize = _containerKey.currentContext.findRenderObject();
  //   RenderBox listSize = _containerKey.currentContext.findRenderObject();

  //   print(containerSize.size.height);
  //   print("list:" + listSize.size.width.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text("")),
        body: Container(
          alignment: Alignment.topCenter,
          height: 70,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 2.0, bottom: 2.0),
                        child: Text("To",
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.0, right: 10.0),
                            child: Text("Moscow, Rus"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.close,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.grey,
                          width: 15,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Radius, km"),
                          // Expanded(
                          //   child: TextField(
                          //     maxLength: 3,
                          //     decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       hintText: '0',
                          //       isDense: true,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //

          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Container(
          //       key: _containerKey,
          //       width: double.infinity,
          //       color: Colors.yellow,
          //       height: 100,
          //       child: ListView(
          //         // shrinkWrap: true,
          //         key: _listKey,
          //         scrollDirection: Axis.horizontal,
          //         children: <Widget>[
          //           Container(
          //             width: 100,
          //             height: 30,
          //             color: Colors.red,
          //             margin: EdgeInsets.all(8.0),
          //           ),
          //         ],
          //       ),
          //     ),
          //     RaisedButton(
          //       onPressed: getSize,
          //       child: Text("Get Size"),
          //     ),
          //   ],
          // ),

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
        ),
      ),
    );
  }
}
