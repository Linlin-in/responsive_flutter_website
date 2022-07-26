import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:of_of/src/Container1.dart';

import 'Footer.dart';
import 'Header.dart';

class Careers extends StatefulWidget {

  @override
  State<Careers> createState() => _CareersState();
}

class _CareersState extends State<Careers> {
  @override
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
                        Container(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 200,
                                height: 450,
                              ),
                              Text('Careers'),
                            ],
                          ),
                          //width: MediaQuery.of(context).size.width,
                          width: 1536.0,
                          height: 600,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/lake.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(

                              ),
                              Container(),
                            ],
                          ),

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
      ),
    );
  }
}
