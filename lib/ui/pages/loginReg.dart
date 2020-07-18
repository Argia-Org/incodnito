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
  TextEditingController _emailL;
  TextEditingController _passwordL;
  TextEditingController _emailR;
  TextEditingController _passwordR;
  TextEditingController _name;
  TextEditingController _confirmPassword;

  int ind = 0;
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _emailL = TextEditingController(text: "");
    _passwordL = TextEditingController(text: "");
    _emailR = TextEditingController(text: "");
    _passwordR = TextEditingController(text: "");
    _name = TextEditingController(text: "");
    _confirmPassword = TextEditingController(text: "");
  }

  @override
  void dispose() {
    _emailL.dispose();
    _passwordL.dispose();
    _emailR.dispose();
    _passwordR.dispose();
    _name.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

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
            child: TextFormField(
              controller: _emailL,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Enter Email',
              ),
              validator: (value) {
                Pattern pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regex = new RegExp(pattern);
                if (value.trim().isEmpty) {
                  // setState(() {});   TODO: add a loading functionality
                  return 'Email can\'t be empty';
                } else if (!regex.hasMatch(value.trim()))
                  return 'Enter Valid Email';
                return null;
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomTextfield(
            icon: Icon(Icons.lock),
            child: TextFormField(
              controller: _passwordL,
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Enter Password',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  // setState(() {}); TODO: add a loading functionality
                  return 'Password can\'t be empty';
                }
                return null;
              },
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
              //below function is for validation
              // if (_formkey1.currentState.validate()) {
              //   // If the form is valid, display a Snackbar.   //For validation
              //   Scaffold.of(context)
              //       .showSnackBar(SnackBar(content: Text('Processing Data')));
              // }
              // ;

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
        formKey: _formkey1,
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
              child: TextFormField(
                controller: _name,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Full Name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    // setState(() {}); TODO: add a loading functionality
                    return 'Name can\'t be empty';
                  }
                  return null;
                },
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
              child: TextFormField(
                controller: _emailR,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
                validator: (value) {
                  Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = new RegExp(pattern);
                  if (value.trim().isEmpty) {
                    // setState(() {});   TODO: add a loading functionality
                    return 'Email can\'t be empty';
                  } else if (!regex.hasMatch(value.trim()))
                    return 'Enter Valid Email';
                  return null;
                },
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
              child: TextFormField(
                controller: _passwordR,
                obscureText: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    // setState(() {}); TODO: add a loading functionality
                    return 'Password can\'t be empty';
                  }
                  return null;
                },
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
              child: TextFormField(
                controller: _confirmPassword,
                obscureText: true,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    // setState(() {});
                    return 'Password can\'t be empty';
                  } else if (_confirmPassword != _passwordR) {
                    return 'Passwords doesn\'t match';
                  }
                  return null;
                },
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
              //below function is for validation
              // if (_formkey2.currentState.validate()) {
              //   // If the form is valid, display a Snackbar.   //For validation
              //   Scaffold.of(context)
              //       .showSnackBar(SnackBar(content: Text('Processing Data')));
              // }
              // ;

              //TODO:add backend and navigate
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ],
        formKey: _formkey2,
        or: Container(),
        socialMedia: Container(),
      );
    }
  }
}
