import 'package:flutter/material.dart';

AppBar appBar(context) {
  return AppBar(
    leading: Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: const Icon(
          Icons.menu,
          size: 30,
        ),
      );
    }),
    centerTitle: true,
    title: const Icon(
      Icons.location_on,
      size: 30,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    ],
    backgroundColor: Color.fromRGBO(26, 70, 81, 1),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25))),
  );
}
