// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/livestream_page.dart';

class CardLive extends StatelessWidget {
  final String view;
  final String title;
  final String player;
  final String imgUrl;
  final String imgPlayer;
  const CardLive({
    Key? key,
    required this.view,
    required this.title,
    required this.player,
    required this.imgUrl,
    required this.imgPlayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => StreamingPage()));
      },
      child: Container(
        height: 168,
        width: 217,
        margin: EdgeInsets.only(
          right: 10,
          left: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, .9), //(x,y)
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 217,
              height: 116,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgUrl),
                ),
              ),
              child: Align(
                alignment: Alignment(-.9, -.8),
                child: Container(
                  height: 20,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: bgColor.withOpacity(0.75),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.visibility,
                        size: 14,
                        color: blueColor,
                      ),
                      Text(
                        view,
                        style: blueTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(
                          imgPlayer,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        player,
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
