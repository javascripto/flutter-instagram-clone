import 'package:flutter/material.dart';
import 'package:flutter_instagram/homepage.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
