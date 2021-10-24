import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/widgets/navBar.dart';
import 'package:flutter_assignment/widgets/app_bar.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:flutter_assignment/widgets/row_text.dart';
import 'package:flutter_assignment/widgets/worker.dart';
import 'package:provider/provider.dart';

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
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          BannerCarousel(
            margin: EdgeInsets.symmetric(horizontal: 0.0),
            height: 160,
            activeColor: Colors.white,
            disableColor: Colors.grey,
            indicatorBottom: false,
            banners: listBanners,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.80,

              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  rowText(text: 'Best of Month'),
                  const SizedBox(
                    height: 10,
                  ),
                  workers(),
                  const SizedBox(
                    height: 15,
                  ),
                  rowText(text: 'Latest'),
                  const SizedBox(
                    height: 15,
                  ),
                  workers(),
                  const SizedBox(
                    height: 15,
                  ),
                  rowText(text: 'Featured'),
                  const SizedBox(
                    height: 15,
                  ),
                  workers(),
                ],
              ),
            ),
          ),
          navBar(i: i)
        ],
      ),
    );
  }
}
