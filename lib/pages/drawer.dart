// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color.fromRGBO(26, 70, 81, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/imgs/man.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
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
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 20,
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 20,
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 20,
                  child: FaIcon(
                    FontAwesomeIcons.snapchat,
                    size: 30,
                    color: Colors.white,
                  ),
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
