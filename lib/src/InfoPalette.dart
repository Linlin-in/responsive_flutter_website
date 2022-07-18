import 'package:flutter/material.dart';
class InfoPalette extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;

  InfoPalette({
    required this.title,
    required this.icon,
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          //style
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: 200.0,
          child: Text(
            text,
            //style:
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Learn More',
          //style
        ),
        Container(
          width: 90.0,
          height: 1.5,
          color: Colors.black26,
        ),

      ],
    );
  }
}
