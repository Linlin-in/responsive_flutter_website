import 'dart:math';
//import 'package:google_fonts/google_fonts.dart';
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
                        //color: Colors.pink,
                        width: MediaQuery.of(context).size.width*0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140.0,
                              left: 90.0,
                              diameter: 200.0,
                              link: 'https://picsum.photos/250?image=9', key: Key(string), //key ekledi
                            ),
                            /*
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
*/
                            ProfileTile(
                                left: 50.0,
                                top: 380.0,
                                factor: 0.5,
                                subTitle: 'Sub',
                                title: 'Title',
                            ),
                            ProfileTile(
                              left: -10.0,
                              top: 140.0,
                              factor: 0.9,
                              subTitle: 'Sub',
                              title: 'Title',
                            ),
                            ProfileTile(
                              left: 380.0,
                              top: 160.0,
                              factor: 0.4,
                              subTitle: 'Sub',
                              title: 'Title',
                            ),
                            ProfileTile(
                              left: 440.0,
                              top: 270.0,
                              factor: 1.1,
                              subTitle: 'Sub',
                              title: 'Title',
                            ),
                          ],
                        ),



                      ),
                    ],
                  ),
                  Header(),
                ],
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 330.0,
                        width: 430.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'How it works',
                          //style:
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InfoPalette(
                              title: 'Community',
                                text:
                                'nasıl bir text',
                                icon: Icons.people_rounded,
                            ),
                            InfoPalette(
                              title: 'Community',
                              text:
                              'nasıl bir text',
                              icon: Icons.people_rounded,
                            ),
                            InfoPalette(
                              title: 'Community',
                              text:
                              'nasıl bir text',
                              icon: Icons.people_rounded,
                            ),
                            InfoPalette(
                              title: 'Community',
                              text:
                              'nasıl bir text',
                              icon: Icons.pie_chart_rounded,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        TextButton(
                          //style:
                            onPressed: (){},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.0,
                                vertical: 8.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Text(
                                'Explore More',
                                //style:
                              ),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 500.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250.0,
                      child: Container(
                        height: 450.0,
                        width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(400.0),
                        ),
                      ),
                    ),
                    Positioned(
                      top:20.0,
                      left:100.0,
                      child: Container(
                        height: 400.0,
                        width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://picsum.photos/250?image=9',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ProfileTile(
                        left: 80.0,
                        top: -10.0,
                        factor: 1.0,
                        subTitle: 'subbb',
                        title: 'Titttle'
                    ),
                    ProfileTile(
                        left: 620.0,
                        top: 400.0,
                        factor: 1.0,
                        subTitle: 'subbb',
                        title: 'Titttle'
                    ),
                    Positioned(
                      right: 100.0,
                      top: 150.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Easy Manage'
                                //style:
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            width: 280.0,
                            child: Text(
                              'Text',
                              //style:
                            ),
                          ),
                          SizedBox(
                            height:20.0,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              backgroundColor: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                horizontal: 50.0,
                                vertical: 20.0,
                              ),
                            ),
                            onPressed: (){},
                            child: Text(
                              'Try',
                              //style: ,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
