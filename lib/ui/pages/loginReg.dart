import 'package:flutter/material.dart';
import 'package:incodnito/services/auth.dart';
import 'package:incodnito/ui/widgets/LRButtons.dart';
import 'package:incodnito/ui/widgets/custtextfield.dart';
import 'package:incodnito/ui/widgets/loginregWidget.dart';
import 'package:incodnito/ui/widgets/roundButton.dart';

class LoginReg extends StatefulWidget {
  static const String id = 'LoginReg';
  LoginReg({Key key}) : super(key: key);

  @override
  _LoginRegState createState() => _LoginRegState();
}

class _LoginRegState extends State<LoginReg> {
  Auth auth = new Auth();
  TextEditingController _emailL;
  TextEditingController _passwordL;
  TextEditingController _emailR;
  TextEditingController _passwordR;
  TextEditingController _name;
  TextEditingController _confirmPassword;
  bool passwordHidden1;
  bool passwordHidden2;
  bool passwordHidden3;

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
    passwordHidden1 = true;
    passwordHidden2 = true;
    passwordHidden3 = true;
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
              keyboardType: TextInputType.emailAddress,
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
            child2: SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomTextfield(
            icon: Icon(Icons.lock),
            child: TextFormField(
              controller: _passwordL,
              obscureText: passwordHidden1,
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
            child2: GestureDetector(
              child: Icon(
                passwordHidden1 ? Icons.visibility_off : Icons.visibility,
                color: Colors.black54,
              ),
              onTap: () {
                setState(() {
                  passwordHidden1 = !passwordHidden1;
                });
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          LButton(
              formkey1: _formkey1,
              auth: auth,
              emailL: _emailL,
              passwordL: _passwordL),
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
                  hintText: 'Enter Username',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    // setState(() {}); TODO: add a loading functionality
                    return 'Username can\'t be empty';
                  }
                  return null;
                },
              ),
              child2: SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
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
                keyboardType: TextInputType.emailAddress,
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
              child2: SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
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
                obscureText: passwordHidden2,
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
              child2: GestureDetector(
                child: Icon(
                  passwordHidden2 ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black54,
                ),
                onTap: () {
                  setState(() {
                    passwordHidden2 = !passwordHidden2;
                  });
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
                obscureText: passwordHidden3,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    // setState(() {});
                    return 'Password can\'t be empty';
                  } else if (_confirmPassword.text != _passwordR.text) {
                    return 'Passwords doesn\'t match';
                  }
                  return null;
                },
              ),
              child2: GestureDetector(
                child: Icon(
                  passwordHidden3 ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black54,
                ),
                onTap: () {
                  setState(() {
                    passwordHidden3 = !passwordHidden3;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
          ),
          RButton(
              formkey2: _formkey2,
              auth: auth,
              emailR: _emailR,
              name: _name,
              passwordR: _passwordR),
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
