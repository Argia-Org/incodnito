import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/ToggleBar.dart';
import 'package:incodnito/ui/widgets/custtextfield.dart';
import 'package:nice_button/nice_button.dart';

class Registration extends StatefulWidget {
  static const String id = 'Registration';
  Registration({Key key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0, bottom: 25.0),
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
                    child: Text(
                      'Incodnito',
                      style: TextStyle(
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
                      initialLabel: 1,
                      minWidth: MediaQuery.of(context).size.width * 0.35,
                      cornerRadius: 20,
                      activeBgColor: Colors.blue,
                      activeTextColor: Colors.black,
                      inactiveBgColor: Colors.grey,
                      inactiveTextColor: Colors.white,
                      labels: ['Existing', 'New'],
                      onToggle: (index) {
                        if (index == 1) {
                          //TODO:show some small message saying you are in login screen
                        } else if (index == 0) {
                          Navigator.pop(context, 0);
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
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.height * 0.50,
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
