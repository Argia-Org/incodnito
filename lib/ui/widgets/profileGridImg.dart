import 'package:flutter/material.dart';
import 'dart:math';

Widget buildImg(String imgUrl) {
  imgUrl += '?random=' + Random().nextInt(100).toString();
  return FadeInImage.assetNetwork(
    placeholder: 'assets/images/posts.jpeg',
    image: imgUrl,
    width: 100,
    height: 100,
    // fit: BoxFit.contain,
  );
}
