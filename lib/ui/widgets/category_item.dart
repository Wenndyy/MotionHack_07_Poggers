import 'package:flutter/material.dart';
import 'package:poggers/models/game_model.dart';
import 'package:poggers/ui/pages/detail_game_page.dart';

import '../../shared/theme.dart';

class CategoryItem extends StatelessWidget {
  final GameModel game;
  const CategoryItem(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            (MaterialPageRoute(builder: (context) => DetailGamePage())));
      },
      child: Container(
        height: 56,
        width: 56,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(game.image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(50),
          color: bgColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, .9), //(x,y)
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
