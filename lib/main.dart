import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFB0DFAC),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFB0DFAC),
          title: Text(
            'Ask Mee!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: AskMee(),
      ),
    ),
  );
}

class AskMee extends StatefulWidget {
  @override
  _AskMeeState createState() => _AskMeeState();
}

class _AskMeeState extends State<AskMee> {
  int faceNumber = 1; //initial image

  void changeFace() { //function to change the face randomly
    faceNumber = Random().nextInt(6) + 2; //file images/face1.png is the default image. Only appears when the app is restarted. So, 1 is not included in the random numbers range.
    print(faceNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
            onPressed: (){
              setState((){
                changeFace(); //calling the function
              });
            },
            child: Image(
              image: AssetImage('images/face$faceNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
