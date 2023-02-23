// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';

class CustomCardGame extends StatelessWidget {
  final String title;
  final String imgUrl;
  final double download;
  const CustomCardGame({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.download,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 250,
      margin: EdgeInsets.only(
        right: 4,
        bottom: 10,
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
          width: 182,
          height: 150,
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
    );
  }
}
