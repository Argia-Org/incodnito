import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Status'),
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.007,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                elevation: 8.0,
                child: GestureDetector(
                  child: Container(
                    height: _height * 0.05,
                    width: _width * 0.30,
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
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
