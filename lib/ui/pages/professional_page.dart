import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poggers/ui/widgets/card_popular_course_byplayer.dart';
import 'package:poggers/ui/widgets/custom_button.dart';
import 'package:poggers/ui/widgets/expanded_text.dart';

import '../../shared/theme.dart';

class ProfessionalPage extends StatefulWidget {
  const ProfessionalPage({super.key});

  @override
  State<ProfessionalPage> createState() => _ProfessionalPageState();
}

class _ProfessionalPageState extends State<ProfessionalPage> {
  @override
  Widget build(BuildContext context) {
    Widget cardCall() {
      return Container(
        height: 252,
        width: 350,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, .9),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 19,
            ),
            Text(
              'Q&A Gameplay Performance',
              style: blueTextStyle.copyWith(
                fontSize: 13,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Gameplay is a term used to define how players interact with a Video game. It is further characterized as the way the game is played, including the rules, plot, objectives and how to conquer them, as well as the overall experience of the player.',
              style: greyTextStyle.copyWith(
                fontSize: 13,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.date_range_rounded,
                  size: 15,
                  color: blueColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Sunday, 30 January 2023',
                  style: greyTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time_filled_rounded,
                  size: 15,
                  color: blueColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '15:30 - 16:30',
                  style: greyTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: grey2Color,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/coin.png',
                  height: 20,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  '5.99 USD',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                CustomButton(
                  title: 'Pay Now',
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 19, left: 19, top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 54,
                                      height: 54,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/player1.png'),
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Evos Oura',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: grey2Color,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'Q&A Gameplay Performance',
                                  style: blueTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Gameplay is a term used to define how players interact with a Video game. It is further characterized as the way the game is played, including the rules, plot, objectives and how to conquer them, as well as the overall experience of the player.',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: regular,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range_rounded,
                                      size: 15,
                                      color: blueColor,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Sunday, 30 January 2023',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 13,
                                        fontWeight: regular,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_filled_rounded,
                                      size: 15,
                                      color: blueColor,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '15:30 - 16:30',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 13,
                                        fontWeight: regular,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: grey2Color,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Subtotal',
                                            style: blueTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          ),
                                          Text(
                                            '\$ 5',
                                            style: greyTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Admin Fee',
                                            style: blueTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          ),
                                          Text(
                                            '\$ 0.50',
                                            style: greyTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Other',
                                            style: blueTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          ),
                                          Text(
                                            '\$ 0.25',
                                            style: greyTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Total',
                                            style: blueTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: medium,
                                            ),
                                          ),
                                          Text(
                                            '\$ 5.75',
                                            style: blueTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: blueColor,
                                            fixedSize: Size(150, 35.66)),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Cancel')),
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          fixedSize: Size(150, 35.66)),
                                      onPressed: () {
                                        Timer(
                                          Duration(
                                            seconds: 3,
                                          ),
                                          () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Column(
                                                    children: [
                                                      Image.asset(
                                                        'assets/success1.png',
                                                        height: 40,
                                                        width: 40,
                                                      ),
                                                      Text(
                                                        "Success",
                                                        style: blueTextStyle
                                                            .copyWith(
                                                          fontWeight: semiBold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  content: Text(
                                                    "Thank you for buying this product, check the orde section in the profile",
                                                    style:
                                                        blackTextStyle.copyWith(
                                                      fontSize: 16,
                                                      fontWeight: semiBold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        'Pay',
                                        style: blueTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    );
                 
                  },
                  width: 83,
                  height: 32,
                  size: 14,
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2.9,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 445,
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
                  padding: const EdgeInsets.only(
                    right: 21,
                    left: 21,
                    top: 50,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          const SizedBox(
                            width: 29,
                          ),
                          Text(
                            'Mobile Legend: Bang Bang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Container(
                        height: 297,
                        width: 238,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/player-1.png'),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 400),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 2.9,
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 31,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: bgColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EVOS Oura',
                          style: blueTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Professional Player of MLBB',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Eko Julianto, also known as Oura, is a player who is in particular focus. The reason is that in Mobile Legends World Championship event his name came out as the MPV after winning the final round against RRQ.',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              'Achievment',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/medal.png',
                              height: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'MVP M1 World Championship',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Winning M1 World Championship ',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Runner Up SEAGAMES 2019',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              'Professional Player',
                              style: blueTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/call.png',
                              height: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        cardCall(),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Popular Course',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const CardPopularCourseByPlayer(
                          imgCourse: 'assets/course1.png',
                          title: 'Laning Phase',
                          price: 50,
                        ),
                        const CardPopularCourseByPlayer(
                          imgCourse: 'assets/course1.png',
                          title: 'Laning Phase',
                          price: 50,
                        ),
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
