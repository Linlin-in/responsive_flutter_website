import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {


  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
