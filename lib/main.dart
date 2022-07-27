import 'package:of_of/src/Application.dart';
import 'package:of_of/src/Container1.dart';
import 'package:of_of/src/Container2.dart';
import 'package:of_of/src/Container3.dart';
import 'package:of_of/src/Container4.dart';
import 'package:of_of/src/Container5.dart';
import 'package:of_of/src/Container6.dart';
import 'package:of_of/src/Footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:of_of/src/Header.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyApp(),
      title: 'Last Bite',
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  //String string = 'Pelin';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        //width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container1(),
                        Container2(),
                        Container3(),
                        Container4(),
                        Container5(),
                        Container6(),
                        Footer(),
                      ],
                    ),
                    Header(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
    

  }
}
