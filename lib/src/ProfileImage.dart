import 'package:flutter/material.dart';
class ProfileImage extends StatelessWidget {
  final double top;
  final double left;
  final double diameter;
  final double image;

  const ProfileImage({
    required Key key, //required ekkendi
    required this.top,
    required this.diameter,
    required this.image,
    required this.left,
}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        /*child: ClipRRect(
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(300.0),
        ),*/
      ),
    );
  }
}
