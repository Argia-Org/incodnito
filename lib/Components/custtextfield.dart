import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({@required this.icon, @required this.hinttext});
  final Icon icon;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          width: 16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.50,
          height: 20,
          child: new Theme(
            data: new ThemeData(
              primaryColor: Colors.black,
              primaryColorDark: Colors.black,
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(hintText: hinttext),
            ),
          ),
        ),
      ],
    );
  }
}
