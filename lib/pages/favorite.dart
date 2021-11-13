// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorite',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
