// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color.fromRGBO(26, 70, 81, 1),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/imgs/man.jpg',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    ' کامەران عةلى',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "kurdish",
                        fontSize: 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'ژمارەی مۆبایل: ٠٧٥٠٢٨٠٤٨٨٩',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "kurdish",
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'عێراق / هەولێر',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "kurdish",
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.login,
              color: Color.fromRGBO(26, 70, 81, 1),
              size: 24,
            ),
            title: Text(
              'چونەژوورەوە',
              style: TextStyle(
                  color: Color.fromRGBO(26, 70, 81, 1),
                  fontFamily: "kurdish",
                  fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.group,
              color: Color.fromRGBO(26, 70, 81, 1),
              size: 24,
            ),
            title: Text(
              'دەربارەی ئێمە',
              style: TextStyle(
                  color: Color.fromRGBO(26, 70, 81, 1),
                  fontFamily: "kurdish",
                  fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_pin_rounded,
              color: Color.fromRGBO(26, 70, 81, 1),
              size: 24,
            ),
            title: Text(
              'پەیوەندیکردن بە ئێمە',
              style: TextStyle(
                  color: Color.fromRGBO(26, 70, 81, 1),
                  fontFamily: "kurdish",
                  fontSize: 20),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                radius: 20,
                child: FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                radius: 20,
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                radius: 20,
                child: FaIcon(
                  FontAwesomeIcons.snapchat,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
