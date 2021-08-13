import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SplashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CPU Scheduler',
      theme: ThemeData(
        brightness: Brightness.dark,
        //primaryColor: Colors.orange,
        primaryColorDark: Colors.blue,
        accentColor: Colors.blueAccent,
        highlightColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.blue.withAlpha(0),
        ),

      ),
      home: splashscreen(),
    );
  }
}

