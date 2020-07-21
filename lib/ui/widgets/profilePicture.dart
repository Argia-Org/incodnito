import 'package:flutter/material.dart';

class ProfilePicture extends StatefulWidget {
  final String profilePic;
  ProfilePicture(this.profilePic);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: widget.profilePic != null
          ? Image.network(widget.profilePic).image
          : Image.network(
                  'https://cdn.pixabay.com/photo/2017/11/10/05/48/user-2935527_960_720.png')
              .image,
    );
  }
}
