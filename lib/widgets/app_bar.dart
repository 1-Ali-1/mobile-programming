import 'package:flutter/material.dart';
  
  AppBar appBar(){
    return AppBar(
      leading: const Icon(
        Icons.menu,
        size: 30,
      ),
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
        )
      ],
      backgroundColor: Colors.teal[900],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25))),
    );
  }

