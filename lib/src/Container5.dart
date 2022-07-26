import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Container5 extends StatefulWidget {
  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      width: 1536.0,
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Image(image: AssetImage(
                "assets/images/indir.jpg",
              ),),
              SizedBox(
                height: 10,
              ),
              Image(image: AssetImage(
                "assets/images/indir.jpg",
              ),),
            ],
          ),
          Image(image: AssetImage(
            "assets/images/indir.jpg",
          ),),
          Text(
            'Life at X',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins-SemiBold',
                fontSize: 25),
          ),




        ],
      ),
    );
  }
}
