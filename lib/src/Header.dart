import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 100.0,
          ),
          Icon(Icons.favorite_rounded,
            color:Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text('Freelancer',
          //style:GoogleFonts.nunito(color: Colors.white,fontSize: 18.0),
          ),
          SizedBox(
            width: 40.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderNav(
                selected: true,
                text: 'Home',
              ),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(
                selected: false,
                text: 'Find a team',
              ),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(
                selected: false,
                text: 'Publish a project',
              ),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(
                selected: false,
                text: 'About',
              ),
            ],
          ),
          SizedBox(
            width: 250.0,
          ),
          Row(
            //mainAxisAlignment: ,
            children: [
              Text('Sign up',
              //style: ,
                ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 20.0,
                width: 1.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Log In',
                //style: ,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  HeaderNav({
    required this.selected, //required eklendl
    required this.text,  //same

});
    @override
    _HeaderNavState createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //widget.text,
        //style
        widget.selected
          ?SizedBox(
          height: 5.0,
        )
          :SizedBox(),

        widget.selected
            ?SizedBox(
              height: 5.0,
        )
            :SizedBox(),

        widget.selected
            ?CircleAvatar(
              backgroundColor: Colors.black,
              radius: 2.0,
        )
            :SizedBox(),



      ],
    );
  }
}
