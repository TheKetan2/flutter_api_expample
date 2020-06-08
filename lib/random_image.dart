import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class RandomImage extends StatefulWidget {
  @override
  _RandomImageState createState() => _RandomImageState();
}

class _RandomImageState extends State<RandomImage> {
  static String imageUrl = 'https://source.unsplash.com/random/400x200';
  Future _imgFuture = http.get(imageUrl);
  bool on = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Hello')),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            FutureBuilder(
              future: _imgFuture,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Oops, there was an error');
                } else if (snapshot.hasData) {
                  print(snapshot);
                  return Image.network(imageUrl);
                } else {
                  return Text('No value yet');
                }
              },
            ),
            RaisedButton(
              child: Text('Change Image!'),
              onPressed: () {
                setState(() {
                  imageUrl =
                      "https://source.unsplash.com/random/400x200?v=${DateTime.now().millisecondsSinceEpoch}";
                });
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
