// ignore_for_file: prefer_const_constructors

import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/pages/favorite.dart';
import 'package:flutter_assignment/pages/home.dart';
import 'package:flutter_assignment/pages/drawer.dart';
import 'package:flutter_assignment/widgets/navBar.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:provider/provider.dart';
import 'nearBy.dart';
import 'notification.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int i = 1;
  List<BannerModel> listBanners = [
    BannerModel(
        imagePath: 'assets/imgs/img1.jpeg', id: "1", boxFit: BoxFit.cover),
    BannerModel(
        imagePath: 'assets/imgs/img2.jpg', id: "2", boxFit: BoxFit.cover),
    BannerModel(
        imagePath: 'assets/imgs/img3.jpeg', id: "3", boxFit: BoxFit.cover),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragEnd: (dragEndDetails) {
          if (dragEndDetails.velocity.pixelsPerSecond.dx > 0) {
            Provider.of<ChangingIndex>(context, listen: false).changeDrawer(2);
          } else if (dragEndDetails.velocity.pixelsPerSecond.dx < 0) {
            Provider.of<ChangingIndex>(context, listen: false).changeDrawer(1);
          }
        },
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          extendBodyBehindAppBar: true,
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Provider.of<ChangingIndex>(context).drawerIsOpen == 2
                  ? SideDrawer()
                  : Container(),
              Container(
                color: Colors.grey[200],
                transform: Matrix4.translationValues(
                    Provider.of<ChangingIndex>(context).drawerIsOpen == 2
                        ? MediaQuery.of(context).size.width / 2 + 35
                        : 0,
                    0,
                    0),
                child: Column(
                  children: [
                    AppBar(
                      leading: Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: GestureDetector(
                            onTap: () {
                              if (Provider.of<ChangingIndex>(context,
                                          listen: false)
                                      .drawerIsOpen ==
                                  1) {
                                Provider.of<ChangingIndex>(context,
                                        listen: false)
                                    .changeDrawer(2);
                              } else {
                                Provider.of<ChangingIndex>(context,
                                        listen: false)
                                    .changeDrawer(1);
                              }
                            },
                            child: Icon(
                              Provider.of<ChangingIndex>(context)
                                          .drawerIsOpen ==
                                      2
                                  ? Icons.arrow_back
                                  : Icons.menu,
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
                    ),
                    Expanded(
                        child: Provider.of<ChangingIndex>(context).index == 1
                            ? Home()
                            : Provider.of<ChangingIndex>(context).index == 2
                                ? Favorite()
                                : Provider.of<ChangingIndex>(context).index == 3
                                    ? NearBy()
                                    : Notifi()),
                    navBar()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
