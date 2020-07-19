import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final bgblack = Color(0xFF0C0B0B);
    final blacktxt = Color(0xFF1E0505);
    final silv = Color(0xFFC0C0C0);

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: bgblack,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(

                            // crossAxisAlignment: CrossAxisAlignment.start,
                            //   mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/dp.jpeg',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: _height * 0.009,
                              ),
                              RaisedButton(
                                color: silv,
                                textColor: blacktxt,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Text("Edit Profile"),
                              ),
                              SizedBox(
                                height: _height * 0.009,
                              ),
                              Text(
                                "Your Points",
                                style: TextStyle(fontSize: 20, color: silv),
                              ),
                              SizedBox(
                                height: _height * 0.009,
                              ),
                              Text(
                                "Karma Symbol - 69",
                                style: TextStyle(fontSize: 16, color: silv),
                              ),
                              SizedBox(
                                height: _height * 0.02,
                              ),
                            ]),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,

                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 18.0, bottom: 20),
                                padding: const EdgeInsets.all(10.0),
                                height: _height * 0.3,
                                width: _width * 0.44,
                                decoration: myBoxDecoration(),
                                child: Column(children: [
                                  Text(
                                    "Information",
                                    style: TextStyle(fontSize: 16, color: silv),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: _height * 0.01,
                                  ),
                                ])),
                          ],
                        )
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        color: silv,
                        textColor: blacktxt,
                        onPressed: () {},
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Posts",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      FlatButton(
                        color: silv,
                        textColor: blacktxt,
                        onPressed: () {},
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Followers",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      FlatButton(
                        color: silv,
                        textColor: blacktxt,
                        onPressed: () {},
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Following",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: _width * 0.09,
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(fontSize: 20, color: silv),
                      ),
                      SizedBox(
                        width: _width * 0.16,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: bgblack,
                        ),
                        backgroundColor: silv,
                      ),
                      SizedBox(
                        width: _width * 0.11,
                      ),
                      FlatButton(
                        color: silv,
                        textColor: blacktxt,
                        onPressed: () {},
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Saved Posts",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        // padding: const EdgeInsets.all(4.0),
                        // mainAxisSpacing: _width * 0.05,
                        // crossAxisSpacing: _height * 0.05,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          Image.asset(
                            'assets/images/dp.jpeg',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
