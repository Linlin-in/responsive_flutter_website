import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  String sample = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras condimentum vel lectus eget auctor. Aliquam eu tincidunt nibh. Duis non convallis lorem. Nam sit amet commodo est. Nulla facilisi. Duis et nulla a mauris facilisis consequat id ac odio. Aliquam aliquam lorem vel ipsum auctor aliquam. Nam lacinia, ex quis fermentum aliquet, metus sem pulvinar nisl, non rutrum mauris nulla eleifend arcu. Curabitur posuere aliquam dignissim. Suspendisse venenatis velit ut eros rhoncus molestie. Sed a interdum nibh. Suspendisse a maximus odio.';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Expanded(
                child: Image.asset('assets/images/indir.jpg'),
                flex: 2,
              ),
              Expanded(
                child: Text(
                    sample,
                    overflow: TextOverflow.clip),
                flex: 1,
              ),
              Spacer(
                flex: 1,
              ),

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
