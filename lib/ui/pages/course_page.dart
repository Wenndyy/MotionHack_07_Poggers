import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
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
                            'Laning Phase: Oura',
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
                    margin: const EdgeInsets.only(top: 150),
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
                                    child:
                                        Image.asset('assets/course_video.png')),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/play.png'))),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Introduction Learning',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '30 Min 10 Sec',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/kunci.png'))),
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
                              height: 22,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/stop.png'))),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Introduction Hero',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '10 Min 20 Sec',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/kunci.png'))),
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
                              height: 22,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/stop.png'))),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Increase Hero's Skills",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '15 Min 14 Sec',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/kunci.png'))),
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
                              height: 22,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/stop.png'))),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Time Management",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '40 Min 32 Sec',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/kunci.png'))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]),
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
