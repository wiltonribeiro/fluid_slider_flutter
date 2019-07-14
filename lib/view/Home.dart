import 'package:flutter/material.dart';
import 'package:fluid_slider_flutter/components/Example.dart' as Example;
import 'package:fluid_slider_flutter/components/Example2.dart' as Example2;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
          child: new SingleChildScrollView(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Example.Example(),
                Example2.Example(),
              ])
          )
      )
    );
  }
}
