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
import './rounded_button.dart';
import './staggerredexample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StaggeredExample());
  }
}
