import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/wp_logo.png',
            height: 250,
          ),
          Stack(
            // fit: StackFit.loose,
            overflow: Overflow.visible,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/text_bg.png',
                    height: 150,
                  ),
                  Image.asset(
                    'assets/text_bg.png',
                    height: 150,
                  ),
                ],
              ),
              Positioned(
                top: 125,
                left: 145,
                child: Image.asset(
                  'assets/text_bg.png',
                  height: 150,
                ),
              ),
            ],
          ),
        ],
      ))),
    );
  }
}
