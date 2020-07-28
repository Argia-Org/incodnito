import 'package:flutter/material.dart';
import 'package:incodnito/services/auth.dart';
import 'package:incodnito/services/localdb.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:nice_button/nice_button.dart';

class RButton extends StatelessWidget {
  const RButton({
    Key key,
    @required this.formkey,
    @required this.auth,
    @required this.localDB,
    @required this.email,
    @required this.username,
    @required this.password,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final Auth auth;
  final LocalDB localDB;
  final String email;
  final String username;
  final String password;

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
        if (formkey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
          String token = await auth.register(email, username, password);
          if (token != null) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Login Success!')));
            localDB.setToken(token);
            print(localDB.getToken());
            Navigator.popAndPushNamed(context, Landing.id);
          }

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
    @required this.formkey,
    @required this.auth,
    @required this.localDB,
    @required this.email,
    @required this.password,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final Auth auth;
  final LocalDB localDB;
  final String email;
  final String password;

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
        if (formkey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
          String token = await auth.login(email, password);
          if (token != null) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Login Success!')));
            localDB.setToken(token);
            print(localDB.getToken());
            Navigator.popAndPushNamed(context, Landing.id);
          }
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Login Error')));
        }
      },
    );
  }
}
