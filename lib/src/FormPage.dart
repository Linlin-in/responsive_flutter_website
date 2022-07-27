import 'package:flutter/material.dart';
import 'package:of_of/src/Application.dart';
import 'Footer.dart';
import 'Header.dart';
class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        //width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Application(),
                        Footer(),
                      ],
                    ),
                    Header(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
