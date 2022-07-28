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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: Image(
                      image: AssetImage('assets/images/google.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: Image(
                      image: AssetImage('assets/images/apple.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 300,
              height: 300,
              child: Image(
                image: AssetImage('assets/images/indir.jpg'),
              ),
            ),
          ),
        ],
      ),
      height: 450.0,
      width: 1536.0,
      //color: Colors.yellow,
    );
  }
}
