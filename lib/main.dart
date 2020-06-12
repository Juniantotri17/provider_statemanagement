import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'aplication_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        create: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AplicationColor>(
              builder: (context, applicationColor, _) =>
                  Center (child: Text("Provider State Management",
                      style: TextStyle(color: applicationColor.color),),),
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Consumer<AplicationColor>(
            builder: (context, applicationColor, _) => AnimatedContainer(
            margin: EdgeInsets.all(5),
        width: 100,
        height: 100,
        color: applicationColor.color,
        duration: Duration(milliseconds: 500),
      ),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(margin: EdgeInsets.all(5), child: Text("Y")),
          Consumer<AplicationColor>(
            builder: (context, applicationColor, _) =>
                Switch(value: applicationColor.isGreenAccent, onChanged: (newValue) {applicationColor.isGreenAccent = newValue;},),
          ),
          Container(margin: EdgeInsets.all(5), child: Text("G")),
        ],
      )
      ],
    ),)
    ,
    )
    ,
    )
    ,
    );
  }
}
