// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Container workers() {
  return Container(
    height: 140,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Container(
                    height: 60,
                    width: 130,
                    child: Image.asset(
                      'assets/imgs/dude.webp',
                      fit: BoxFit.fill,
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
                    children: const [
                      Text(
                        'هیمن کامەران هیوا',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontFamily: 'Kurdish'),
                      ),
                      Text(
                        'ژمارەی مۆبایل: ٠٧٥٠٢٨٠٤٣٦٩',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontFamily: 'Kurdish'),
                      ),
                      Text(
                        'پیشە:جامچی',
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
          );
        }),
  );
}
