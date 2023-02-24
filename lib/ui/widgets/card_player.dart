// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/professional_page.dart';

class CardPlayer extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String category;
  const CardPlayer({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfessionalPage(),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 90,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  category,
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
