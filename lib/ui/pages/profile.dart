import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/profileGridImg.dart';
import 'package:incodnito/utils/uidata.dart';

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

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: kbgblack,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
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
                          color: ksilver,
                          textColor: kblacktxt,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text("Edit Profile"),
                        ),
                        SizedBox(
                          height: _height * 0.009,
                        ),
                        Text(
                          "Your Points",
                          style: TextStyle(fontSize: 20, color: ksilver),
                        ),
                        SizedBox(
                          height: _height * 0.009,
                        ),
                        Text(
                          "Karma Symbol - 69",
                          style: TextStyle(fontSize: 16, color: ksilver),
                        ),
                        SizedBox(
                          height: _height * 0.02,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 18.0, bottom: 20),
                          padding: const EdgeInsets.all(10.0),
                          height: _height * 0.3,
                          width: _width * 0.44,
                          decoration: myBoxDecoration(),
                          child: Column(
                            children: [
                              Text(
                                "Information",
                                style: TextStyle(fontSize: 16, color: ksilver),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: _height * 0.01,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      color: ksilver,
                      textColor: kblacktxt,
                      onPressed: () {},
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Posts",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    FlatButton(
                      color: ksilver,
                      textColor: kblacktxt,
                      onPressed: () {},
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Followers",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    FlatButton(
                      color: ksilver,
                      textColor: kblacktxt,
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
                      style: TextStyle(fontSize: 20, color: ksilver),
                    ),
                    SizedBox(
                      width: _width * 0.11,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: kbgblack,
                      ),
                      backgroundColor: ksilver,
                    ),
                    SizedBox(
                      width: _width * 0.125,
                    ),
                    FlatButton(
                      color: ksilver,
                      textColor: kblacktxt,
                      onPressed: () {},
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Saved Posts",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: _height * 0.09,
                    ),
                    Container(
                      height: _height * 0.001,
                      width: _width * 0.9,
                      color: Colors.white,
                    ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GridView.count(
                      primary: false,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      mainAxisSpacing: _width * 0.020,
                      crossAxisSpacing: _height * 0.009,
                      children: <Widget>[
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                        buildImg('https://picsum.photos/250'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
