import 'package:flutter/material.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:provider/provider.dart';

AppBar appBar(context) {
  return AppBar(
    leading: Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: GestureDetector(
          onTap: () {
            if(Provider.of<ChangingIndex>(context, listen: false).drawerIsOpen == 1){
 Provider.of<ChangingIndex>(context, listen: false).changeDrawer(1);
            }else{
 Provider.of<ChangingIndex>(context, listen: false).changeDrawer(2);
            }
           
          },
          child: const Icon(
            Icons.menu,
            size: 30,
          ),
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
