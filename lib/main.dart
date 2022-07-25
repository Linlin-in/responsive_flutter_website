import 'dart:html';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:of_of/src/Footer.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:of_of/src/Header.dart';
import 'package:of_of/src/InfoPalette.dart';
import 'package:of_of/src/ProfileImage.dart';
import 'package:of_of/src/ProfileTile.dart';

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
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Footer(),
                  Column(
                    children: [
                      Container(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Row(
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
                             // twoColumn: constraints.maxWidth > 700,
                            );
                          },
                        ),
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.pink[50],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                            image: AssetImage('assets/images/indir.jpg'
                                //fit: BoxFit.fitHeight,

                                ),
                          ),
                        ),
                        height: 700.0,
                        width: 1536.0,
                        //color: Colors.yellow,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              height: 745,
                            ),
                            AnimatedButton(
                              onPress: () {},
                              height: 55,
                              width: 140,
                              text: 'CAREERS',
                              isReverse: true,
                              selectedTextColor: Colors.pinkAccent,
                              transitionType: TransitionType.LEFT_TO_RIGHT,
                              //textStyle: submitTextStyle,
                              backgroundColor: Colors.blue,
                              borderColor: Colors.purple,
                              borderRadius: 50,
                              borderWidth: 2,
                            ),
                          ],
                        ),

                        //width: MediaQuery.of(context).size.width,
                        width: 1536.0,
                        height: 900,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/images/indir.jpg",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.grey[350],
                      ),
                      Container(
                        height: 700.0,
                        width: 1536.0,
                        color: Colors.pink[100],
                      ),
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
    );
  }
}
