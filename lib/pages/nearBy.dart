import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/widgets/navBar.dart';
import 'package:flutter_assignment/widgets/app_bar.dart';
import 'package:flutter_assignment/provider.dart';
import 'package:flutter_assignment/widgets/row_text.dart';
import 'package:provider/provider.dart';

class NearBy extends StatelessWidget {
  NearBy({Key? key}) : super(key: key);

  List<BannerModel> listBanners = [
    BannerModel(imagePath: 'assets/imgs/img1.jpeg', id: "1"),
    BannerModel(imagePath: 'assets/imgs/img2.jpg', id: "2"),
    BannerModel(imagePath: 'assets/imgs/img3.jpeg', id: "3"),
  ];
  @override
  Widget build(BuildContext context) {
    int i = Provider.of<ChangingIndex>(context).index;

    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
                // height: MediaQuery.of(context).size.height * 0.80,

                child: Center(
              child: Text('NearBy'),
            )),
          ),
          navBar(i: i)
        ],
      ),
    );
  }

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
                      width: 150,
                      child: Image.asset(
                        'assets/imgs/dude.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 150,
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
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text('ژمارەی مۆبایل: ٠٧٥٠٢٤٠٨٩٦٩'),
                        Text('پیشە:جامجی'),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
