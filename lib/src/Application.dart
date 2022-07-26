import 'package:flutter/material.dart';

class Application extends StatefulWidget {

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height*0.04),
                Text("Here to Get", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
                Text("Welcomed !", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
                SizedBox(
                  height: height*0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Full Name'),
                  validator: (value){
                      if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return "Enter a valid name";
                      }else{
                        return null;
                      }
                  },
                ),
                SizedBox(
                  height: height*0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,5}').hasMatch(value)){
                      return "Enter a valid e-mail!";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height*0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Phone'),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0,9]{1,5}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                      return "Enter a valid name";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height*0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'LinkedIn URL'),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      return "Enter a valid name";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height*0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Other Links'),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      return "Enter a valid name";
                    }else{
                      return null;
                    }
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
