import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Container1 extends StatefulWidget {


  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 450,
          ),

          AnimatedButton(
            onPress: () {},
            height: 55,
            width: 140,
            text: 'Let\'s X',
            textStyle: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins-SemiBold'),
            isReverse: true,
            selectedTextColor: Colors.pinkAccent,
            transitionType: TransitionType.LEFT_TO_RIGHT,
            //textStyle: submitTextStyle,
            backgroundColor: Colors.grey,
            borderColor: Colors.purple,
            borderRadius: 50,
            borderWidth: 2,
          ),
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
    );
  }
}
