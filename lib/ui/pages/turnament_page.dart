import 'dart:async';

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class TurnamentPage extends StatelessWidget {
  const TurnamentPage({super.key});

  final String _buttonText = " Register \$5";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2,
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
                            width: 70,
                          ),
                          Text(
                            'Tournament MLBB',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 120),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 2,
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 10,
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
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              height: 215,
                              child: Center(
                                child: SizedBox(
                                    height: 210,
                                    width: 340,
                                    child: Image.asset('assets/banner1.png')),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        const Text(
                          'PARTI 2023',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff31578E)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Turnamen Mobile Legends - By HIMATIF',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'PARTI 2022, organized by Himpunan Mahasiswa Informatika UMS.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        const Text(
                          'Terms and Condition',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          ' - Match Day : 22 - 23 October 2022\n - Registration closes : October 19, 2022 \n - Technical Meeting :  October 21, 2022 \n - Venues : Online \n - Open 64 Slots \n - Free Skins \n - All Tiers/Ranks \n - Custom Draft Pick Mode \n - Single Elimination BO1 |\n    Bronze Match BO3 |   BO5 Grandfinals',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        const Text(
                          'Prize',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Prize Pool Rp. 4,000,000 + Medal + E-Certificate +\nTeam Profile on the Tourney Info Website \n*Prizes may change according to the number of \n  participants',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 19, left: 19, top: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 54,
                                              height: 54,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/turnamen_ml.png'),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Tournament Mobile Legend',
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
                                          'Description',
                                          style: blueTextStyle.copyWith(
                                            fontSize: 13,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'PARTI 2022, organized by Himpunan Mahasiswa Informatika UMS. ',
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
                                              'October 2023',
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
                                              'According to conditions',
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Subtotal',
                                                    style:
                                                        blueTextStyle.copyWith(
                                                      fontSize: 12,
                                                      fontWeight: medium,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$ 5',
                                                    style:
                                                        greyTextStyle.copyWith(
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Admin Fee',
                                                    style:
                                                        blueTextStyle.copyWith(
                                                      fontSize: 12,
                                                      fontWeight: medium,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$ 0.50',
                                                    style:
                                                        greyTextStyle.copyWith(
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Other',
                                                    style:
                                                        blueTextStyle.copyWith(
                                                      fontSize: 12,
                                                      fontWeight: medium,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$ 0.25',
                                                    style:
                                                        greyTextStyle.copyWith(
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Total',
                                                    style:
                                                        blueTextStyle.copyWith(
                                                      fontSize: 12,
                                                      fontWeight: medium,
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$ 5.75',
                                                    style:
                                                        blueTextStyle.copyWith(
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
                                                    fixedSize:
                                                        Size(150, 35.66)),
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
                                                      builder: (BuildContext
                                                          context) {
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
                                                                style:
                                                                    blueTextStyle
                                                                        .copyWith(
                                                                  fontWeight:
                                                                      semiBold,
                                                                  fontSize: 20,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          content: Text(
                                                            "Thank you for buying this product, check the orde section in the profile",
                                                            style:
                                                                blackTextStyle
                                                                    .copyWith(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  semiBold,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
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
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 160,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '\$10',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Register \$5',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
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
