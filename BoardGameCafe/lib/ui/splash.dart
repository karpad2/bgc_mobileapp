import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import '../main.dart';

class splash extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new MyApplication(),
        title: new Text(
          'Board Game Café',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/splashscreen.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.green);
  }
}
