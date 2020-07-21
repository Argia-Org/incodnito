import 'dart:math';

import 'package:flutter/material.dart';
import 'package:incodnito/ui/widgets/profilePicture.dart';
import 'package:like_button/like_button.dart';

class PostDetails extends StatefulWidget {
  final List data;
  PostDetails({Key key, this.data}) : super(key: key);

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.aspectRatio * 50,
            top: MediaQuery.of(context).size.aspectRatio * 50),
        height: MediaQuery.of(context).size.height / 1.3,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.aspectRatio * 50,
                  bottom: MediaQuery.of(context).size.aspectRatio * 50),
              child: Row(
                children: [
                  ProfilePicture(widget.data[0]),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.data[1])
                ],
              )),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Container(
                      height: MediaQuery.of(context).size.aspectRatio * 400,
                      width: MediaQuery.of(context).size.aspectRatio * 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Transform.rotate(
                                angle: -45 * pi / 180,
                                child: showButtons(Icons.label, '', null)),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LikeButton(
                                    onTap: null,
                                    isLiked: false,
                                    animationDuration: Duration(seconds: 2),
                                    size: MediaQuery.of(context)
                                            .size
                                            .aspectRatio *
                                        50,
                                    circleColor: CircleColor(
                                        start: Colors.red, end: Colors.red),
                                    bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red,
                                    ),
                                    likeBuilder: (isLiked) {
                                      return Icon(
                                        isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isLiked
                                            ? Colors.red
                                            : Colors.black87,
                                        size: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            50,
                                      );
                                    },
                                  ),
                                  Text(
                                    '70',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ]),
                            showButtons(Icons.remove_red_eye, '200', null),
                            showButtons(Icons.comment, '36', null)
                          ]))),
              Container(
                height: MediaQuery.of(context).size.aspectRatio * 800,
                width: MediaQuery.of(context).size.aspectRatio * 600,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                              'https://cdn.pixabay.com/photo/2017/11/10/05/48/user-2935527_960_720.png')
                          .image),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.aspectRatio * 80,
                      ),
                      child: Container(
                          height: MediaQuery.of(context).size.aspectRatio * 100,
                          width: MediaQuery.of(context).size.aspectRatio * 500,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 10, top: 10),
                              hintText: "How's the post!?",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.black54,
                                ),
                                onPressed: null,
                              ),
                            ),
                            controller: commentController,
                          )))),
              Container(
                  height: MediaQuery.of(context).size.aspectRatio * 100,
                  width: MediaQuery.of(context).size.aspectRatio * 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: IconButton(icon: Icon(Icons.share), onPressed: null))
            ],
          )
        ]));
  }

  Widget showButtons(IconData icon, String number, Function onPress) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          padding: EdgeInsets.only(bottom: 30),
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.aspectRatio * 50),
          icon: Icon(icon),
          onPressed: onPress,
          iconSize: MediaQuery.of(context).size.aspectRatio * 50,
        ),
        icon != Icons.label
            ? (Text(
                number,
                style: TextStyle(fontSize: 10),
              ))
            : Container()
      ],
    );
  }
}
