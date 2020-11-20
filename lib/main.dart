import 'package:flutter/material.dart';
import 'package:sheetsreplica/home/home.dart';
import 'package:sheetsreplica/splashscreen/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomePage(),
    );
  }
}
