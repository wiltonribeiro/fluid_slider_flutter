import 'package:flutter/material.dart';
import 'package:fluid_slider_flutter/components/SliderBall.dart';

class Example extends StatefulWidget {
  _Example createState() => new _Example();
}

class _Example extends State<Example> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {

    return new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
              padding: EdgeInsets.all(20),
              child: new Card(
                  elevation: 5,
                  child: new Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      child: new Column(
                        children: <Widget>[
                          new Text("Add Calouries Example", style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold)),
                          new Stack(
                            children: <Widget>[
                              new Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: new AnimatedOpacity(
                                      opacity: _visible ? 1.0 : 0.0,
                                      duration: Duration(milliseconds: 200),
                                      child:  new Text(
                                        "If you know how many calouries you ate use the slider below to add them to your daily diary without search the specifc foods.",
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      )
                                  ),
                              ),
                              new Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: new Container(
                                    height: 180,
                                    child: new SliderBall(
                                        initialValue: 0,
                                        finalValue: 250,
                                        onSelectStart: (){
                                          setState(() {
                                            _visible = false;
                                          });
                                        },
                                        onSelectEnd: (value){
                                          setState(() {
                                            _visible = true;
                                          });
                                          print("This is the value retrivied by the slider: $value");
                                        },
                                    )
                                  )
                              ),
                              new Padding(
                                  padding: EdgeInsets.only(top: 150),
                                  child: new SizedBox(
                                    width: double.infinity,
                                    child: new RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        color: Color(0xFFD7E9FA),
                                        padding: EdgeInsets.all(15),
                                        onPressed: (){},
                                        child: new Text(
                                          "ADD CALORIES",
                                          style: TextStyle(
                                              color: Color(0xFF6372E6)
                                          ),
                                        )
                                    ),
                                  )
                              ),
                            ]
                          ),
                        ]),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              )
          ),
        ]
    );
  }

}