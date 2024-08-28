import 'package:businista/homepage.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key); // Correct the constructor syntax
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Use Future.delayed to navigate after a delay
    Future.delayed(Duration(seconds: 6), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homepage(),),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 160),
              //color: Colors.amber,
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage("images/name.png")),
            ),
            //Container(height: MediaQuery.of(context).size.height / 60),
            // CircularProgressIndicator(
            //   valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
            // ),

            WidgetAnimator(
    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(),
    atRestEffect: WidgetRestingEffects.rotate(),
    child: Container(
      //color: Colors.amber,
      height: 100,
      width: 80,
      //alignment: Alignment.center,
      child: Image(image: AssetImage("images/reload.png")),
    )
  )
          ],
        ),
      ),
    );
  }
}










