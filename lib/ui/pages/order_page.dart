import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/auth_cubit.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/videocall_page.dart';

import '../../cubit/page_cubit.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff5A78A3),
              Color(0xff15253C),
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(children: [
            const SizedBox(
              height: 70,
            ),
            Row(
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
                  width: 80,
                ),
                Text(
                  "Your Orders",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 53,
            ),
            Container(
              height: 110.53,
              width: 350,
              padding: const EdgeInsets.only(
                top: 23,
                left: 24,
                right: 16,
                bottom: 23,
              ),
              margin: const EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/order1.png',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course : Laning Phase',
                        style: blueTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'EVOS Oura',
                            style: greyTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled_rounded,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '30m',
                                style: greyTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.my_library_books_rounded,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '4 Lesson',
                                style: greyTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.navigate_next_rounded,
                    size: 40,
                    color: blueColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 110.53,
              width: 350,
              padding: const EdgeInsets.only(
                top: 23,
                left: 24,
                right: 16,
                bottom: 23,
              ),
              margin: const EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/order2.png',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tournament MLBB',
                        style: blueTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'PARTI 2023',
                            style: greyTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled_rounded,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'October',
                                style: greyTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.navigate_next_rounded,
                    size: 40,
                    color: blueColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    (MaterialPageRoute(
                      builder: (context) => VideoCall(),
                    )));
              },
              child: Container(
                height: 110.53,
                width: 350,
                padding: const EdgeInsets.only(
                  top: 23,
                  left: 24,
                  right: 16,
                  bottom: 23,
                ),
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/order3.png',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VC : Q&A Gameplay ',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'PARTI 2023',
                              style: greyTextStyle.copyWith(
                                fontSize: 13,
                                fontWeight: medium,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time_filled_rounded,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '30 Jan, 15:30',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: medium,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.navigate_next_rounded,
                      size: 40,
                      color: blueColor,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
