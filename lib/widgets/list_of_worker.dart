// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_assignment/pages/user_view.dart';

class HorizantalList extends StatelessWidget {
  HorizantalList({Key? key, required this.worker, required this.forHero})
      : super(key: key);

  final List<Map<String, String>> worker;
  String forHero;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: worker.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserView(
                            work: worker[i]["occupation"] ?? '',
                            image: worker[i]["image"] ?? '',
                            name: worker[i]["name"] ?? '',
                            phone: worker[i]["mobile number"] ?? '',
                            iForHero: i,
                            stringForHero: forHero,
                          )));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      child: Container(
                        height: 60,
                        width: 130,
                        child: Hero(
                          tag: '$forHero$i',
                          child: Image.asset(
                            worker[i]["image"] ?? '',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.8),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text(
                            worker[i]["name"] ?? '',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontFamily: 'Kurdish'),
                          ),
                          Text(
                            worker[i]["mobile number"] ?? '',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 11,
                                fontFamily: 'Kurdish'),
                          ),
                          Text(
                            worker[i]["occupation"] ?? '',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontFamily: 'Kurdish'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
