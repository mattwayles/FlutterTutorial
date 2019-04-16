import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';  //DEBUGGING PACKAGE

import './pages/home.dart';


//Required main function to create top-most widget
main() {
  //debugPaintSizeEnabled = true; //UI debugging
  //debugPaintBaselinesEnabled = true; //UI Text start/end debug
  //debugPaintPointersEnabled = true; //Where the TAB event registers
   runApp(MyApp());
}

//Create a StatefulWidget, able to manipulate internal data
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Classes require 'build' method
    return MaterialApp( //Top-Level app Widget (using NAMED parameters, different from positional parameters)
    //debugShowMaterialGrid: true, //Shows positioning grid
    theme: ThemeData( //Set context theme
      brightness: Brightness.light,
      primarySwatch: Colors.deepOrange, //Define one color, and the rest are inferred
      accentColor: Colors.deepPurple
    ),
      home: HomePage(),
    );
  }
}
