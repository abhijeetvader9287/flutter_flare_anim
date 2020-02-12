import 'package:flare_flutter/flare.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _animation = "2";

  void doAnimate(String anim) {
    setState(() {
      _animation = anim;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          //flare actor
          Expanded(
            child: FlareActor(
              "images/Control_face_test.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: _animation,
            ),
          ),
          //animations
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text("Move"),
                onPressed: () {
                  doAnimate("1");
                },
              ),


            ],
          ),

        ],
      ),
    );
  }
}
