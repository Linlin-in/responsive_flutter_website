import 'dart:math';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:of_of/src/Header.dart';
import 'package:of_of/src/InfoPalette.dart';
import 'package:of_of/src/ProfileImage.dart';
import 'package:of_of/src/ProfileTile.dart';

void main() {
  runApp( MaterialApp(
     home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String string = 'Pelin';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 300.0,
                            ),
                            Image.asset('assets/images/indir.jpg'),
                            SizedBox(
                              width: 400.0,
                            ),
                            Text('Lorem ipsum dolor sit amet, consect.'),
                          ],
                        ),
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.green,
                      ),
                      Container(
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.orangeAccent,
                      ),
                      Container(
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Header(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
