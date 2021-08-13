import 'dart:async';
import 'package:flutter/material.dart';
import 'package:scheduling/AlgoApp.dart';

import 'HomePage.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black45,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Image.asset(
              "assets/imagetext.png",
              width: 140.0,
              height: 140.0,
            ),
          ),
          Text(
            "Schedulo",
            style: TextStyle(
                fontSize: 30.0, color: Colors.white, fontFamily: "Satisfy"),
          ),
          SizedBox(height: 20.0,),
          Center(
            child: SizedBox(
                height: 30.0,
                width: 30.0,
                child:
                CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    strokeWidth: 5.0)
            ),
          ),
        ]),
      ),
    );
  }
}
