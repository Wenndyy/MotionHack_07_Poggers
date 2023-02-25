import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';

import '../pages/turnament_page.dart';

class CarouselCard extends StatefulWidget {
  const CarouselCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselCardState();
  }
}

class _CarouselCardState extends State<CarouselCard> {
  final List imageList = [
    {"id": 1, "image_path": 'assets/banner1.png'},
    {"id": 2, "image_path": 'assets/banner1.png'},
    {"id": 3, "image_path": 'assets/banner1.png'}
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TurnamentPage()));
            },
            child: CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            currentIndex == entry.key ? greyColor : grey2Color),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
