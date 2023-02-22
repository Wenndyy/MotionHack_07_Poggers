import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/login_page.dart';
import 'package:poggers/ui/pages/splash2_page.dart';
import 'package:poggers/ui/widgets/custom_button.dart';

class Splash1Page extends StatelessWidget {
  const Splash1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
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
            const SizedBox(
              height: 100,
            ),
            Text(
              'Improve Your\nGaming Skills FASTER',
              style: whiteTextStyle.copyWith(
                color: whiteColor,
                fontSize: 31,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'We have almost everything you\ncan learn anytime from\nanywhere.',
              style: whiteTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              width: 114,
              height: 40,
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
                      builder: (context) => Splash2Page(),
                    ),
                  );
                },
                child: Text(
                  'Next >',
                  style: blueTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 257,
                width: 387,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/splash1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
