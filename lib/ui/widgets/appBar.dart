import 'package:flutter/material.dart';
import 'package:incodnito/utils/uidata.dart';

// ignore: top_level_function_literal_block
final appBar = (context) {
  return AppBar(
    backgroundColor: kappBarColor,
    centerTitle: true,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.vertical(
    //     bottom: Radius.circular(10),
    //   ),
    // ),
    // iconTheme: new IconThemeData(
    //   color: Colors.white,
    // ),
    title: Text(
      kappName,
      style: TextStyle(
        color: kappBarTextColor,
      ),
    ),
  );
};
