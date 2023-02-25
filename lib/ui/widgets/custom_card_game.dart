import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/detail_game_page.dart';

class CustomCardGame extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String download;
  const CustomCardGame({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.download,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailGamePage(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 210,
        height: 200.8,
        margin: EdgeInsets.only(
          right: 8,
          left: 8,
          top: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imgUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 124.67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xff1C428E).withOpacity(.0),
                  Color(0xff0D316C),
                ],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  download.toString(),
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
