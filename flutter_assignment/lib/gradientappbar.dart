import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 50.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BackButton(color: Colors.white,),
          Padding(
            padding: const EdgeInsets.fromLTRB(100.0, 0.0, 160.0, 0.0),
            child: Center(
              child: new Text(
                  title,
                  style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.greenAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}