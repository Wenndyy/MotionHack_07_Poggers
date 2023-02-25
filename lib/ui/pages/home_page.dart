import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/game_cubit.dart';
import 'package:poggers/cubit/profesional_cubit.dart';
import 'package:poggers/models/game_model.dart';
import 'package:poggers/models/profesional_model.dart';
import 'package:poggers/ui/widgets/category_item.dart';

import '../../shared/theme.dart';
import '../widgets/card_live.dart';
import '../widgets/card_player.dart';
import '../widgets/card_popular_course.dart';
import '../widgets/slider_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GameCubit>().fetchData();
    context.read<ProfesionalCubit>().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget categoryGame(List<GameModel> games) {
      return Row(
        children: games.map(
          (GameModel game) {
            return CategoryItem(game);
          },
        ).toList(),
      );
    }

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
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2.9,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 6, right: 18, left: 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Hi, Adam Melvin',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Let's Improve Your Performance",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            // backgroundImage: AssetImage('img/profile.jpg')
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        width: 360,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 180),
                    height: MediaQuery.of(context).size.height * 2.9,
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 31,
                    ),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Games',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        BlocConsumer<GameCubit, GameState>(
                          listener: (context, state) {
                            if (state is GameFailed) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: blackColor,
                                  content: Text(state.error),
                                ),
                              );
                            }
                          },
                          builder: (context, state) {
                            if (state is GameSuccess) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    categoryGame(state.game),
                                  ],
                                ),
                              );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 16,
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
                          style: blackTextStyle.copyWith(
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
                          style: blackTextStyle.copyWith(
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
                          style: blackTextStyle.copyWith(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
