import "package:flutter/material.dart";
import "package:intro_slider/intro_slider.dart";
import "package:intro_slider/slide_object.dart";

class Tutorial extends StatefulWidget {
  Tutorial({Key key}) : super(key: key);

  @override
  TutorialState createState() => new TutorialState();
}

class TutorialState extends State<Tutorial> {
  List<Slide> slides = new List();
  Size screenSize;
  double buttonWidth;

  @override
  void initState() {
    super.initState();
  }

  /// When tutorial is done.
  void onDonePress() {
    // TutorialHelper.setTutorialStatus(true);
    // Navigator.push(
    //     context, new MyCustomRoute(builder: (context) => OverviewPage()));
  }

  @override
  Widget build(BuildContext context) {
    // screenSize = MediaQuery.of(context).size;
    // buttonWidth = screenSize.width / 3;
    slides.clear();

    slides.add(
      new Slide(
          title: ('OFFERS'),
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_offers'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(51, 130, 255, 1.0)),
    );
    slides.add(
      new Slide(
          title: ('AVAILABLE OFFERS'),
          maxLineTitle: 2,
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_available_offers'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(51, 130, 255, 1.0)),
    );
    slides.add(
      new Slide(
          title: ('SAVED OFFERS'),
          maxLineTitle: 2,
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_saved_offers'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(51, 130, 255, 1.0)),
    );
    slides.add(
      new Slide(
          title: ('PROFILE'),
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_profile'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(51, 160, 255, 1.0)),
    );
    slides.add(
      new Slide(
          title: ('EDIT PROFILE'),
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_edit_profile'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(51, 160, 255, 1.0)),
    );
    slides.add(
      new Slide(
          title: "CHAT",
          marginTitle: EdgeInsets.all(40),
          description: ('tutorial_chat'),
          marginDescription: EdgeInsets.only(top: 30, left: 20, right: 20),
          pathImage: 'assets/wp_logo.png',
          backgroundColor: Color.fromRGBO(132, 200, 255, 1.0)),
    );

    return MaterialApp(
      home: Scaffold(
        body: IntroSlider(
          isShowSkipBtn: true,
          slides: this.slides,
          onDonePress: this.onDonePress,
          nameNextBtn: ('next'),
          nameDoneBtn: ('done'),
          // widthDoneBtn: buttonWidth,
          isScrollable: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
