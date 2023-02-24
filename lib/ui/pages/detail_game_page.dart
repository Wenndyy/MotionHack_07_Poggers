import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/widgets/card_live.dart';
import 'package:poggers/ui/widgets/card_player.dart';
import 'package:poggers/ui/widgets/card_popular_course.dart';
import 'package:poggers/ui/widgets/slider_card.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

class DetailGamePage extends StatelessWidget {
  const DetailGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2.9,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 276,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_mobilelegend.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 276,
                    decoration: BoxDecoration(
                      color: blueColor.withOpacity(0.7),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 21,
                    left: 21,
                    top: 50,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.navigate_before_rounded,
                              size: 30,
                              color: bgColor,
                            ),
                          ),
                          SizedBox(
                            width: 78,
                          ),
                          Container(
                            width: 112,
                            height: 88,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bg_ml.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Mobile Legend: Bang Bang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '“A warrior\'s duty, is to bring victory”',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 220),
                    height: MediaQuery.of(context).size.height * 2.5,
                    padding: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 31,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: bgColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tournament',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        CarouselCard(imgList: imgList),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Professional Player',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                CardPlayer(
                                  imgUrl: 'assets/player1.png',
                                  title: 'Oura',
                                  category: 'MLBB',
                                ),
                                CardPlayer(
                                  imgUrl: 'assets/player2.png',
                                  title: 'RRQ R7',
                                  category: 'MLBB',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),

                        // Live Streams
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Live Streams',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        SizedBox(
                          height: 175,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                CardLive(
                                  view: '1.2K',
                                  title: 'Push Rank [MLBB]',
                                  imgUrl: 'assets/live1.png',
                                  imgPlayer: 'assets/player1.png',
                                  player: 'RRQ R7',
                                ),
                                CardLive(
                                  view: '1.2K',
                                  title: 'Push Rank [MLBB]',
                                  imgUrl: 'assets/live1.png',
                                  imgPlayer: 'assets/player1.png',
                                  player: 'RRQ R7',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),

                        // Popular Course
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Popular Course',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        CardPopularCourse(),
                        CardPopularCourse(),
                        CardPopularCourse(),
                        CardPopularCourse(),
                        CardPopularCourse(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
