import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/ToggleBar.dart';

class LoginRegModel extends StatelessWidget {
  const LoginRegModel(
      {@required this.togfunc,
      @required this.squareBox,
      this.or,
      this.socialMedia});
  final Function togfunc;
  final List<Widget> squareBox;
  final Widget or;
  final Widget socialMedia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: 25.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              type: MaterialType.transparency,
              child: Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Center(
                  child: TypewriterAnimatedTextKit(
                    isRepeatingAnimation: false,
                    onTap: () {
                      //TODO:we can put some easter egg here
                    },
                    speed: Duration(milliseconds: 200),
                    text: ['Incodnito'],
                    textStyle: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: ToggleWidget(
                    minWidth: MediaQuery.of(context).size.width * 0.35,
                    cornerRadius: 20,
                    activeBgColor: Colors.blue,
                    activeTextColor: Colors.black,
                    inactiveBgColor: Colors.grey,
                    inactiveTextColor: Colors.white,
                    labels: ['Existing', 'New'],
                    onToggle: togfunc),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.height * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: squareBox,
                ),
              ),
            ),
            or,
            socialMedia,
          ],
        ),
      ),
    );
  }
}
