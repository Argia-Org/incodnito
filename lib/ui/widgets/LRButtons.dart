import 'package:flutter/material.dart';
import 'package:incodnito/services/auth.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:nice_button/nice_button.dart';

class RButton extends StatelessWidget {
  const RButton({
    Key key,
    @required GlobalKey<FormState> formkey2,
    @required this.auth,
    @required TextEditingController emailR,
    @required TextEditingController name,
    @required TextEditingController passwordR,
  })  : _formkey2 = formkey2,
        _emailR = emailR,
        _name = name,
        _passwordR = passwordR,
        super(key: key);

  final GlobalKey<FormState> _formkey2;
  final Auth auth;
  final TextEditingController _emailR;
  final TextEditingController _name;
  final TextEditingController _passwordR;

  @override
  Widget build(BuildContext context) {
    return NiceButton(
      width: 255,
      elevation: 8.0,
      radius: 52.0,
      text: "Register",
      textColor: Colors.black,
      background: Colors.blue,
      onPressed: () async {
        if (_formkey2.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
          String token =
              await auth.register(_emailR.text, _name.text, _passwordR.text);
          if (token != null) Navigator.pushNamed(context, Landing.id);
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Login Error')));
        }
      },
    );
  }
}

class LButton extends StatelessWidget {
  const LButton({
    Key key,
    @required GlobalKey<FormState> formkey1,
    @required this.auth,
    @required TextEditingController emailL,
    @required TextEditingController passwordL,
  })  : _formkey1 = formkey1,
        _emailL = emailL,
        _passwordL = passwordL,
        super(key: key);

  final GlobalKey<FormState> _formkey1;
  final Auth auth;
  final TextEditingController _emailL;
  final TextEditingController _passwordL;

  @override
  Widget build(BuildContext context) {
    return NiceButton(
      width: 255,
      elevation: 8.0,
      radius: 52.0,
      text: 'Login',
      textColor: Colors.black,
      background: Colors.blue,
      onPressed: () async {
        if (_formkey1.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
          String token = await auth.login(_emailL.text, _passwordL.text);
          if (token != null) Navigator.pushNamed(context, Landing.id);
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Login Error')));
        }
      },
    );
  }
}
