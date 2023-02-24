import 'package:flutter/material.dart';
import 'package:poggers/ui/pages/login_page.dart';
import 'package:poggers/ui/pages/signup_page.dart';

import '../../shared/theme.dart';

class Splash2Page extends StatelessWidget {
  const Splash2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff5A78A3),
              Color(0xff15253C),
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                child: Text(
                  'Sign In',
                  style: whiteTextStyle.copyWith(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.width - 130,
                width: 387,
                child: Image.asset(
                  'assets/splash2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Easier Connect\nYourself with Pro Players',
              style: whiteTextStyle.copyWith(
                color: whiteColor,
                fontSize: 24,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Experience, great way to learn\nnew technique and strategies.',
              style: whiteTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              width: 163,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: grey2Color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: blueTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
