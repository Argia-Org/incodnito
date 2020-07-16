import 'package:flutter/material.dart';
import 'package:incodnito/Components/custtextfield.dart';
import 'package:incodnito/Components/roundButton.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:nice_button/nice_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<String> labels = ['Existing', 'New'];
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
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 200),
                text: ['Incodnito'],
                textStyle: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Hero(
                tag: 'toggle',
                child: ToggleSwitch(
                    minWidth: MediaQuery.of(context).size.width * 0.35,
                    cornerRadius: 20,
                    activeBgColor: Colors.blue,
                    activeTextColor: Colors.black,
                    inactiveBgColor: Colors.grey,
                    inactiveTextColor: Colors.white,
                    labels: ['Existing', 'New'],

                    // icons: [Icons.check, Icons.network_cell],
                    onToggle: (index) {
                      print('switched to: $index');
                    }),
              ),
            ),
            Container(
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
                    hinttext: 'Enter email',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextfield(
                      icon: Icon(Icons.lock), hinttext: 'Enter Password'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  NiceButton(
                    width: 255,
                    elevation: 8.0,
                    radius: 52.0,
                    text: "Login",
                    textColor: Colors.black,
                    background: Colors.blue,
                    onPressed: () {
                      //TODO:add backend and navigate
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
