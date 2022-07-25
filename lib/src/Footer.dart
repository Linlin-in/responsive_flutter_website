import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1536,
      height: 350,
      color: Colors.pink[900],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset('assets/images/indir.jpg'),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text('SOCIAL'),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Instagram'),
                        Icon(FontAwesomeIcons.instagram),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('LinkedIn'),
                        Icon(FontAwesomeIcons.linkedinIn),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Facebook'),
                        Icon(FontAwesomeIcons.facebook),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('Twitter'),
                        Icon(FontAwesomeIcons.twitter),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Column(
                children: <Widget>[
                  Text('LEGAL'),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                      child: Text('Terms&Privacy'),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
              ),
              Column(
                children: <Widget>[
                  Text('LEGAL'),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Text('Terms&Privacy'),
                  ),
                ],
              ),

              //Container(),
              //Container(),
              //Container(),
            ],
          ),
        ],
      ),
    );
  }
}
