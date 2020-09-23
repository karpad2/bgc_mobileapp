import 'package:flutter/material.dart';
import 'ui/MyHomePage.dart';
import 'ui/splash.dart';

void main() {
  runApp(new MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  splash createState() => new splash();
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Board Game Café',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Board Game Café'),
    );
  }
}
