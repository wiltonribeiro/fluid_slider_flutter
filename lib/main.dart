import 'package:flutter/material.dart';
import 'package:fluid_slider_flutter/view/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fluid Slider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home()
    );
  }

}