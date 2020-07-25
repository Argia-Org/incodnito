import 'package:flutter/material.dart';
import 'package:incodnito/ui/pages/editprofile.dart';
import 'package:incodnito/ui/widgets/ToggleBar.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int indexy = 0;
  List<Widget> grimg() {
    for (int i = 0; i < 12; i++) {
      posts.add(
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/dp.jpeg'),
            ),
          ),
        ),
      );
    }
    return posts;
  }

  List<Widget> grimg1() {
    for (int i = 0; i < 12; i++) {
      savedposts.add(
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/250'),
            ),
          ),
        ),
      );
    }
    return savedposts;
  }

  List<Widget> posts = [];
  List<Widget> savedposts = [];

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.grey,
            primary: true,
            floating: true,
            snap: false,
            pinned: false,
            centerTitle: true,
            title: Text(
              "Incodnito",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            // flexibleSpace: FlexibleSpaceBar(        //palce to add any image if we decide
            //   title: Text(
            //     'hii',
            //     style: TextStyle(color: Colors.black),
            //   ),
            //   background: Image.network(
            //     "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: _height * 0.40,
                          width: _width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bg.jpg'),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.18,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            mainAxisSpacing: _width * 0.020,
                            crossAxisSpacing: _height * 0.009,
                            children: indexy == 0 ? grimg() : grimg1(),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: _height * 0.23,
                      left: _width * 0.05,
                      right: _width * 0.05,
                      child: SizedBox(
                        height: _height * 0.35,
                        child: ListView(
                          padding: EdgeInsets.all(16),
                          children: [
                            Container(
                              height: _height * 0.30,
                              width: _width * 0.80,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 210, top: 10),
                                    child: Material(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      elevation: 8.0,
                                      child: GestureDetector(
                                        child: Container(
                                          height: _height * 0.05,
                                          width: _width * 0.20,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(30),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Edit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Editprofile(),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Mr Nobody',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'I live in nunya',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Following',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '200',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Followers',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '200',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ToggleWidget(
                                        minWidth:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        cornerRadius: 20,
                                        activeBgColor: Colors.blue,
                                        activeTextColor: Colors.black,
                                        inactiveBgColor: Colors.grey,
                                        inactiveTextColor: Colors.white,
                                        labels: ['Posts', 'Saved Posts'],
                                        onToggle: (index) {
                                          setState(() {
                                            indexy = index;
                                          });
                                        }),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: _height * 0.35,
                              width: _width * 0.03,
                            ),
                            Container(
                              height: _height * 0.30,
                              width: _width * 0.80,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Karma Points ',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Other info',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    Positioned(
                      top: _height * 0.03,
                      left: _width * 0.30,
                      right: _width * 0.30,
                      child: Container(
                        height: _height * 0.20,
                        width: _width * 0.20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage('assets/images/dp.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO:Add a post
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
