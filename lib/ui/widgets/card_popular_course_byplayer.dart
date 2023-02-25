// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:poggers/shared/theme.dart';

class CardPopularCourseByPlayer extends StatelessWidget {
  final String imgCourse;
  final String title;
  final int price;
  const CardPopularCourseByPlayer({
    Key? key,
    required this.imgCourse,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.53,
      width: 350,
      padding: EdgeInsets.only(
        top: 21,
        left: 24,
        right: 16,
        bottom: 21,
      ),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEAEEF4),
      ),
      child: Row(
        children: [
          Container(
            height: 63.16,
            width: 64,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imgCourse,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
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
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
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
              SizedBox(
                height: 4,
              ),
              Container(
                width: 36,
                height: 20,
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: blueColor,
                ),
                child: Text(
                  'Free',
                  style: whiteTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              )
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
