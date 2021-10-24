import 'package:flutter/material.dart';

class rowText extends StatelessWidget {
  rowText({
    required this.text,
    Key? key,
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.teal[900]),
          ),
          const Spacer(),
          Text(
            'more',
            style: TextStyle(fontSize: 16, color: Colors.teal[900]),
          ),
        ],
      ),
    );
  }
}
