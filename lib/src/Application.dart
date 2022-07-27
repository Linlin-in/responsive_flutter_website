import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Footer.dart';
import 'Header.dart';

class Application extends StatefulWidget {
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  bool value = false;

  @override
  Widget build(BuildContext context) {
    final double height = 800.0;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFffffff),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Container(
                  height: 700,
                  //padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Form(
                    key: formKey, //key for form
                    child: SizedBox(
                      width: 900,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.04),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Full Name'),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                return "Enter a valid name!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}')
                                      .hasMatch(value)) {
                                return "Enter a valid e-mail!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Phone'),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[+]*[(]{0,1}[0,9]{1,5}[)]{0,1}[-\s\./0-9]+$')
                                      .hasMatch(value)) {
                                return "Enter a valid phone number!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'LinkedIn URL'),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your LinkedIn URL!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Other Links'),
                            /*validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              return "Enter a valid name";
                            } else {
                              return null;
                            }
                          },*/
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Checkbox(
                                  value: value,
                                  onChanged: (value) =>
                                      setState(() => this.value = value!),
                                ),
                                Text(
                                  'Onay',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 400,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      final snackBar =
                                          SnackBar(content: Text('Applied'));
                                      _scaffoldKey.currentState!
                                          .showSnackBar(snackBar);
                                    }
                                  },
                                  child: Text('APPLY'),
                                ),
                              ]),
                          SizedBox(
                            height: height * 0.05,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ));
  }
}
