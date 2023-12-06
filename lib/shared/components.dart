import 'package:flutter/material.dart';

void navigateTo(context, Widget page) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return page;
    },
  ));
}
