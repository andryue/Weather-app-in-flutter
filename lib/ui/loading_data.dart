import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class LoadingData extends StatefulWidget {
  @override
  _LoadingDataState createState() => _LoadingDataState();
}

class _LoadingDataState extends State<LoadingData> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          SpinKitDoubleBounce(
            size: 100.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 20.0,
          ),
        ColorizeAnimatedTextKit(
            onTap: () {
              print("Tap Event");
            },
            text: [
              "LOADING...",
            ],
            textStyle: TextStyle(
                fontSize: 40.0,
                fontFamily: "Sergueui",
                 fontWeight: FontWeight.w600
            ),
            colors: [
              Colors.blue[100],
              Colors.blue[200],
              Colors.blue[800],
              Colors.blue[900],
            ],
        )
        ]
    )
    );
  }
}
