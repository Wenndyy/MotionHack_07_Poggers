import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
                height: 50,
              ),
              Text(
                "My Profile",
                style: whiteTextStyle.copyWith(
                  fontSize: 25,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              Container(
                height: 128,
                width: 128,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img-profile.png'),
                  ),
                ),
                child: Align(
                  alignment: Alignment(0.6, 0.8),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/ic_edit.png'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                'Adam Melvin',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_balance.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Your Balance',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$350 USD',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Account",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_profile.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Adam Melvin',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_email.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Adams@gmail.com',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_lock.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Change Password',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Other",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_help.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Help',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/ic_logout.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Log Out Account',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.navigate_next_rounded,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
