import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'Careers.dart';

class Container6 extends StatefulWidget {

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      width: 1536.0,
      color: Colors.pink[100],
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 400,
          ),

          AnimatedButton(
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Careers()),
              );
            },
            height: 55,
            width: 300,
            text: 'See Open Positions',
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
    );
  }
}
