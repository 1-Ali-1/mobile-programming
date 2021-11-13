// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserView extends StatefulWidget {
  UserView(
      {Key? key, this.name, this.image, this.phone, this.work, this.iForHero})
      : super(key: key);
  String? name;
  String? phone;
  String? work;
  String? image;
  int? iForHero;

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  
  int rate = 0;
  List<Widget> stars = [];
  bool fav = false;

  Row starRate(int itemcount) {
    Color defaultColor = Colors.grey;
    // set stare then click fav
    for (int i = 1; i <= itemcount; i++) {
      stars.add((rate >= i)
          ? Icon(
              Icons.star,
              size: 40,
              color: Colors.green[800],
            )
          : Icon(
              Icons.star,
              size: 40,
              color: defaultColor,
            ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= stars.length; i++)
          InkWell(
            splashColor: Colors.green[300],
            child: stars[i - 1],
            onTap: () {
              setState(() {
                stars = [];

                rate = i;
              });
            },
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromRGBO(26, 70, 81, 1),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: const <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/imgs/map.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 30,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.27 / 2,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          stars = [];
                          fav = !fav;
                        });
                      },
                      child: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(26, 70, 81, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  bottomLeft: Radius.circular(18))),
                          child: Center(
                              child: Icon(
                            fav
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: Colors.white,
                          ))),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    child: CircleAvatar(
                        radius: 64,
                        backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                        child: Container(
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(widget.image ?? ''),
                          ),
                        )),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            widget.name ?? '',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "kurdish",
                                fontSize: 19),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            widget.phone ?? '',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "kurdish",
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            widget.work ?? '',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "kurdish",
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'ئەلبومی کارەکانم',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "kurdish",
                        fontSize: 24),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'زیاتر ببینە',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "kurdish",
                        fontSize: 17),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 92,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Container(
                          height: 90,
                          width: 110,
                          child: Image.asset(
                            'assets/imgs/atWork.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 22,
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Center(
                      child: Text(
                        'دەنگدان',
                        style: TextStyle(fontFamily: 'Kurdish', fontSize: 24),
                      ),
                    ),
                  ),
                  starRate(5),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [])),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        height: 40,
                        width: 100,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(26, 70, 81, 1),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('دەنگدان')
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 23,
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 23,
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 23,
                  child: FaIcon(
                    FontAwesomeIcons.snapchat,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(26, 70, 81, 1),
                  radius: 23,
                  child: FaIcon(
                    FontAwesomeIcons.tiktok,
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
