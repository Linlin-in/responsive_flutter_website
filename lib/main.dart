import 'dart:math';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:of_of/src/Header.dart';
import 'package:of_of/src/ProfileImage.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width*0.45,//0.45 yaklaşık dafuq
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform:Matrix4.rotationZ(pi/6)
                              ..translate(-180.0,170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200.0,
                              left: 100.0,
                              child: Container(
                                height: 400.0,
                                width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Manage',
                                    //style: ,
                                    ),
                                    Text(
                                      'Project in ...',
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      width: 300.0,
                                      child: Text('Bir şeylerrrrrrrrrrrrrrrr',
                                      //style: ,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45.0,
                                          width: 230.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter email',
                                              //hintStyle
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0),
                                            ),

                                          ),
                                          onPressed: (){}, child: Container(
                                          height: 45.0,
                                          width: 100.0,
                                          child: Center(
                                            child: Text(
                                              'get inv',
                                              //style
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600.0,
                        color: Colors.pink,
                        width: MediaQuery.of(context).size.width*0.55,
                        /*child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140.0,
                              left: 90.0,
                              diameter: 200.0,
                              image: 'link', key: null,//key ekledi
                            ),
                            ProfileImage(
                              top: 140.0,
                              left: 90.0,
                              diameter: 100.0,
                              image: 'link', key: null,//key ekledi
                            ),
                            ProfileImage(
                              top: 275.0,
                              left: 280.0,
                              diameter: 280.0,
                              image: 'link', key: null,//key ekledi
                            ),
                            ProfileImage(
                              top: 360.0,
                              left: 90.0,
                              diameter: 170.0,
                              image: 'link', key: null,//key ekledi
                            ),
                            ProfileTile(
                            bla bla
                            ),

                          ],
                        ),*/
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
