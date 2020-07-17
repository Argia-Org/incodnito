import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({@required this.icon, @required this.child});
  final Icon icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: icon),
        Expanded(
          flex: 2,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            height: 30,
            child: new Theme(
              data: new ThemeData(
                primaryColor: Colors.black,
                primaryColorDark: Colors.black,
              ),
              child: child,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
        ),
      ],
    );
  }
}
