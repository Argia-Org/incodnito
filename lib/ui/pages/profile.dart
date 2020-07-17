import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: Colors.black,
        child: Padding(
            padding: const EdgeInsets.all(5.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/dp.jpeg',
                width: 100,
                height: 100,
              ),
              
              SizedBox(
                height:_height*0.009,
              ),
              
              RaisedButton(
                color : Colors.grey,
                textColor: Colors.black,
                onPressed: () {},
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: Text("Edit Profile"),
              ),
              
              SizedBox(
                height:_height*0.009,
              ),
              
              Text(
                "Your Points" ,
                style: TextStyle(fontSize:22, color:Colors.grey),
              ),
              
              SizedBox(
                height:_height*0.009,
              ),
              
              Text( 
                "Karma Symbol- 69",
                style: TextStyle(fontSize:16, color:Colors.grey),
              ),
            ],
            
          )
      ),
    );
  }
}
