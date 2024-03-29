import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:of_of/src/Application.dart';
import 'package:of_of/src/FormPage.dart';
import 'package:of_of/src/NewPageDeneme.dart';
import 'Careers.dart';
//import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: BoxConstraints(maxWidth: 1200),
      color: Color(0xffd92958),
      height: 90.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 100.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new NewPage()));
                },
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              SizedBox(
                width: 100.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 290.0,
                  ),
                  AnimatedButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    height: 55,
                    width: 140,
                    text: 'ABOUT US',
                    isReverse: true,
                    selectedTextColor: Colors.pinkAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.yellow,
                    borderRadius: 50,
                    borderWidth: 2,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  AnimatedButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Application()),
                      );
                    },
                    height: 55,
                    width: 140,
                    text: 'GAMES',
                    isReverse: true,
                    selectedTextColor: Colors.pinkAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.yellow,
                    borderRadius: 50,
                    borderWidth: 2,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 55,
                    width: 200,
                    text: 'LIFE AT LAST BITE',
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    isReverse: true,
                    selectedTextColor: Colors.pinkAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.yellow,
                    borderRadius: 50,
                    borderWidth: 2,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  AnimatedButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Careers()),
                      );
                    },
                    height: 55,
                    width: 140,
                    text: 'CAREERS',
                    isReverse: true,
                    selectedTextColor: Colors.pinkAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.yellow,
                    borderRadius: 50,
                    borderWidth: 2,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 55,
                    width: 140,
                    text: 'CONTACT',
                    isReverse: true,
                    selectedTextColor: Colors.pinkAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.yellow,
                    borderRadius: 50,
                    borderWidth: 2,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  HeaderNav({
    required this.selected, //required eklendl
    required this.text, //same
  });

  @override
  _HeaderNavState createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //widget.text,
        //style
        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),

        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),

        widget.selected
            ? CircleAvatar(
                backgroundColor: Colors.black,
                radius: 2.0,
              )
            : SizedBox(),
      ],
    );
  }
}
