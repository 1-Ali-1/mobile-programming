// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:flutter_assignment/widgets/button_nav_bar.dart';
import 'package:provider/provider.dart';

class navBar extends StatelessWidget {
  const navBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        color:Color.fromRGBO(26, 70, 81,1),
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
