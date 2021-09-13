import 'package:flutter/material.dart';

class RoundedTriangleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperButton(),
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blueAccent,
        child: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CustomClipperButton extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.7, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.5,
        size.width * 0.7, size.height * 0.7);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
