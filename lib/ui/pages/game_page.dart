import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/widgets/custom_card_game.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
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
                SizedBox(
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
              padding: EdgeInsets.only(
                top: 24,
                right: 20,
                left: 24,
              ),
              height: 500,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                children: const [
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  ),
                  CustomCardGame(
                    title: "MLBB",
                    imgUrl: 'assets/mlbb.png',
                    download: 281.3,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
