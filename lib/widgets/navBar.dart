// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:flutter_assignment/widgets/button_nav_bar.dart';
import 'package:provider/provider.dart';

class navBar extends StatelessWidget {
  const navBar({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<ChangingIndex>(context, listen: false).changeIndex(1);
            },
            child: ButtonNavBar(
              isSelected:
                  Provider.of<ChangingIndex>(context, listen: false).index == 1,
              text: "Home",
              icon: Icons.home,
            ),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<ChangingIndex>(context, listen: false).changeIndex(2);
            },
            child: ButtonNavBar(
              isSelected:
                  Provider.of<ChangingIndex>(context, listen: false).index == 2,
              text: "Favorite",
              icon: Icons.favorite,
            ),
          ),
          GestureDetector(
              onTap: () {
                Provider.of<ChangingIndex>(context, listen: false)
                    .changeIndex(3);
              },
              child: ButtonNavBar(
                  isSelected: Provider.of<ChangingIndex>(context, listen: false)
                          .index ==
                      3,
                  text: "NearBy",
                  icon: Icons.place)),
          GestureDetector(
            onTap: () {
              Provider.of<ChangingIndex>(context, listen: false).changeIndex(4);
            },
            child: ButtonNavBar(
              isSelected:
                  Provider.of<ChangingIndex>(context, listen: false).index == 4,
              text: "Notification",
              icon: Icons.notifications,
            ),
          ),
        ],
      ),
    );
  }
}
