import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/widgets/card_live.dart';
import 'package:poggers/ui/widgets/card_player.dart';
import 'package:poggers/ui/widgets/card_popular_course.dart';
import 'package:poggers/ui/widgets/slider_card.dart';

import '../../cubit/profesional_cubit.dart';
import '../../models/profesional_model.dart';

class DetailGamePage extends StatefulWidget {
  const DetailGamePage({super.key});

  @override
  State<DetailGamePage> createState() => _DetailGamePageState();
}

class _DetailGamePageState extends State<DetailGamePage> {
  @override
  void initState() {
    context.read<ProfesionalCubit>().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget profesionalCard(List<ProfesionalModel> pro) {
      return Row(
        children: pro.map(
          (ProfesionalModel pro) {
            return CardPlayer(pro);
          },
        ).toList(),
      );
    }

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
                  padding: const EdgeInsets.only(
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
                          const SizedBox(
                            width: 78,
                          ),
                          Container(
                            width: 112,
                            height: 88,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/bg_ml.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Mobile Legend: Bang Bang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
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
                    margin: const EdgeInsets.only(top: 220),
                    height: MediaQuery.of(context).size.height * 2.5,
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
                          'Tournament',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const CarouselCard(),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Professional Player',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child:
                              BlocConsumer<ProfesionalCubit, ProfesionalState>(
                            listener: (context, state) {
                              if (state is ProfesionalFailed) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: blackColor,
                                    content: Text(state.error),
                                  ),
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state is ProfesionalSuccess) {
                                return ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Row(
                                      children: [
                                        profesionalCard(state.profesional),
                                      ],
                                    ),
                                  ],
                                );
                              }
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),

                        // Live Streams
                        const SizedBox(
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
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),

                        // Popular Course
                        const SizedBox(
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
                        const CardPopularCourse(),
                        const CardPopularCourse(),
                        const CardPopularCourse(),
                        const CardPopularCourse(),
                        const CardPopularCourse(),
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
