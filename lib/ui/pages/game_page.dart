import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/widgets/custom_card_game.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            width: double.infinity,
            height: 1000,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'GameVerse',
                          style: whiteTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: semiBold,
                          ),
                        ),
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
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
                    margin: EdgeInsets.only(top: 150),
                    height: 1000,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                            CustomCardGame(
                              title: "MLBB",
                              imgUrl: 'assets/mlbb.png',
                              download: '281.3 Million Downloads',
                            ),
                          ],
                        ),
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