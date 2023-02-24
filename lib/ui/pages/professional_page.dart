import 'package:flutter/material.dart';
import 'package:poggers/ui/widgets/expanded_text.dart';
import 'package:readmore/readmore.dart';

import '../../shared/theme.dart';

class ProfessionalPage extends StatefulWidget {
  const ProfessionalPage({super.key});

  @override
  State<ProfessionalPage> createState() => _ProfessionalPageState();
}

class _ProfessionalPageState extends State<ProfessionalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 1000,
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
                  padding: EdgeInsets.only(
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
                          SizedBox(
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
                      SizedBox(
                        height: 36,
                      ),
                      Container(
                        height: 297,
                        width: 238,
                        decoration: BoxDecoration(
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
                    margin: EdgeInsets.only(top: 400),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 2,
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
                    child: SingleChildScrollView(
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
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Professional Player of MLBB',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
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
                          SizedBox(
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
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'assets/medal.png',
                                height: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'MVP M1 World Championship',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            'Winning M1 World Championship ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
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
