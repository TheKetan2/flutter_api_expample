import "package:flutter/material.dart";

class BottomFadeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Bottom Fade Button"),
        ),
        body: Container(
          // height: 500,
          color: Colors.amberAccent,
          child: Stack(
            children: <Widget>[
              Container(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Hello "),
                      );
                    }),
              ),
              Positioned(
                // bottom:,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(110, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(30, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: Text(
                          "BUY TICKETS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        return print("Tap");
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
