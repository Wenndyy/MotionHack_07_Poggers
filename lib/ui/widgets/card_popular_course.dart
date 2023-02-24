import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';

class CardPopularCourse extends StatelessWidget {
  const CardPopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.53,
      width: 350,
      padding: EdgeInsets.only(
        top: 23,
        left: 24,
        right: 16,
        bottom: 23,
      ),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEAEEF4),
      ),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/player1.png',
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Laning Phase',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'EVOS Oura',
                    style: greyTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '30m',
                        style: greyTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.my_library_books_rounded,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '4 Lesson',
                        style: greyTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.navigate_next_rounded,
            size: 40,
            color: blueColor,
          ),
        ],
      ),
    );
  }
}
