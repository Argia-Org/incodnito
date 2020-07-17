import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final ImageProvider img;
  final Function funn;
  const RoundIconButton({@required this.img, @required this.funn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: img,
            fit: BoxFit.fill,
          ),
          // color: Colors.white,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(50),
          // ),
          shape: BoxShape.circle,
        ),
      ),
      onTap: funn,
    );
  }
}
