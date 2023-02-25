// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:poggers/models/profesional_model.dart';

import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/professional_page.dart';

class CardPlayer extends StatelessWidget {
  final ProfesionalModel pro;

  const CardPlayer(
    this.pro, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfessionalPage(),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 90,
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
        ),
        margin: const EdgeInsets.only(
          right: 10,
          left: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
          boxShadow: const [
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
                  image: NetworkImage(
                    pro.imageProfile,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pro.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  pro.nameCategory,
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
