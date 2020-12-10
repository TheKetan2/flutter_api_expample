// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  RoundedButton({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ClipPath(
          clipper: CustomClipperButton(),
          child: Container(width: 200, height: 100, color: Colors.greenAccent),
        ),
      ),
    );
  }
}

class CustomClipperButton extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * 0.20);
    path.lineTo(0.0, size.height * 0.60);
    path.quadraticBezierTo(10, 90, 15, 100);
    path.lineTo(size.width - 20, size.height * 0.80);
    path.quadraticBezierTo(
        size.width - 10, size.height - 10, size.width, size.height);
    path.quadraticBezierTo(
        size.width - 10, size.height * 0.90, size.width - 10, 15.0);
    path.quadraticBezierTo(size.width - 12, 0.0, size.width - 30, 0.0);
    path.lineTo(15.0, 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, size.height * 0.20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
