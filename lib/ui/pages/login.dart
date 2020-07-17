import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/custtextfield.dart';
import 'package:incodnito/ui/widgets/roundButton.dart';
import 'package:incodnito/ui/widgets/ToggleBar.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:incodnito/ui/pages/registration.dart';
import 'package:nice_button/nice_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//here we go
class Login extends StatefulWidget {
  static const String id = 'Login';
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Hero(
              tag: 'heading',
              child: Material(
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
            ),
            Hero(
              tag: 'toggle',
              child: Material(
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
                      onToggle: (index) async {
                        print('index is $index');
                        if (index == 0) {
                          setState(() {});
                          //TODO:show some small message saying you are in login screen
                        } else if (index == 1) {
                          Navigator.pushNamed(context, Registration.id);
                        }
                      }),
                ),
              ),
            ),
            Hero(
              tag: 'squareBox',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white),
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.height * 0.50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextfield(
                        icon: Icon(Icons.mail),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            errorText: null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      CustomTextfield(
                        icon: Icon(Icons.lock),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            errorText: null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      NiceButton(
                        width: 255,
                        elevation: 8.0,
                        radius: 52.0,
                        text: 'Login',
                        textColor: Colors.black,
                        background: Colors.blue,
                        onPressed: () {
                          //TODO:add backend and navigate
                          Navigator.pushNamed(context, Landing.id);
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          //TODO:add backend and pass reset
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                    width: 100.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 100.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundIconButton(
                    img: AssetImage('assets/images/github.png'),
                    funn: () {},
                  ),
                  RoundIconButton(
                    img: AssetImage('assets/images/facebook.png'),
                    funn: () {},
                  ),
                  RoundIconButton(
                    img: AssetImage('assets/images/google.png'),
                    funn: () {},
                  ),
                  RoundIconButton(
                    img: AssetImage('assets/images/instagram.png'),
                    funn: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
