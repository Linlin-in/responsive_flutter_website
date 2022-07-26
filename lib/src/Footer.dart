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
      height: 288,
      color: Colors.pink[900],
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/logo.png')),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'SOCIAL',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
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
              Column(
                children: <Widget>[
                  Text(
                    'LEGAL',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    child: Text('Terms&Privacy'),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'CONTACT',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'E-mail',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: Text('herneyse@gmail.com'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                  Text(
                    ' Cihannüma, Barbaros Blv. Yıldız APT ',
                    style: TextStyle(
                        color: Colors.pink,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                  Text(
                    ' D:No:69/11, 34353 Beşiktaş/İstanbul ',
                    style: TextStyle(
                        color: Colors.pink,
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 1536,
            height: 38,
            color: Colors.pink.shade700,
            child: Center(
              child: Text('Copyright © 2022 Last Bite Games'),
            ),
          ),
        ],
      ),
    );
  }
}
