import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              textAlign: TextAlign.left,
              onChanged: (value) {},
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Status'),
              textAlign: TextAlign.left,
              onChanged: (value) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
