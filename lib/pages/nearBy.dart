import 'package:flutter/material.dart';

class NearBy extends StatelessWidget {
  NearBy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'Near By',
        style: TextStyle(fontSize: 30),
      ),
    ));
  }
}
