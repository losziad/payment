import 'package:flutter/material.dart';

AppBar buildAppBar({String? title}) {
  return AppBar(
    leading: const Center(
      child:  Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    elevation: 0.0,
    centerTitle: true,
    title:  Text(
      title??'',
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}