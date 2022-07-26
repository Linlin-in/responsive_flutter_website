import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container3 extends StatefulWidget {


  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
