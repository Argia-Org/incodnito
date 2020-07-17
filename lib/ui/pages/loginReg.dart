import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/custtextfield.dart';
import 'package:incodnito/ui/widgets/loginregWidget.dart';
import 'package:incodnito/ui/widgets/roundButton.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:nice_button/nice_button.dart';

class LoginReg extends StatefulWidget {
  static const String id = 'LoginReg';
  LoginReg({Key key}) : super(key: key);

  @override
  _LoginRegState createState() => _LoginRegState();
}

class _LoginRegState extends State<LoginReg> {
  int ind = 0;
  @override
  Widget build(BuildContext context) {
    if (ind == 0) {
      //For Login
      return LoginRegModel(
        togfunc: (index) async {
          if (index == 0) {
            setState(() {});
            //TODO:show some small message saying you are in login screen
          } else {
            setState(() {
              ind = 1;
            });
          }
        },
        squareBox: [
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
        or: Container(
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
        socialMedia: Container(
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
      );
    } else {
      //For Registration
      return LoginRegModel(
        togfunc: (index) {
          if (index == 1) {
            //TODO:show some small message saying you are in login screen
          } else {
            setState(() {
              ind = 0;
            });
          }
        },
        squareBox: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          Expanded(
            child: CustomTextfield(
              icon: Icon(Icons.person),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Full Name',
                  errorText: null,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          Expanded(
            child: CustomTextfield(
              icon: Icon(Icons.mail),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  errorText: null,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          Expanded(
            child: CustomTextfield(
              icon: Icon(Icons.lock),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  errorText: null,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          Expanded(
            child: CustomTextfield(
              icon: Icon(Icons.lock),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  errorText: null,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
          ),
          NiceButton(
            width: 255,
            elevation: 8.0,
            radius: 52.0,
            text: "Register",
            textColor: Colors.black,
            background: Colors.blue,
            onPressed: () {
              //TODO:add backend and navigate
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
        or: Container(),
        socialMedia: Container(),
      );
    }
  }
}
