import 'package:flutter/material.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/main_page.dart';
import 'package:poggers/ui/pages/signup_page.dart';
import 'package:poggers/ui/widgets/custom_button.dart';
import 'package:poggers/ui/widgets/custom_teks_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget signInButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont't have an account?",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Text(
                " Sign Up",
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 36,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Join',
                      style: blackTextStyle.copyWith(
                        fontSize: 31,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      ' Poggers',
                      style: blueTextStyle.copyWith(
                        fontSize: 31,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Become a ',
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'professional player ',
                      style: blueTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'with',
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                Text(
                  'poggers',
                  style: blueTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTeksForm(
                  title: 'Email Address',
                  hintText: 'Email Address',
                  controller: emailController,
                ),
                CustomTeksForm(
                  title: 'Password',
                  hintText: 'Password',
                  obscureText: true,
                  controller: passwordController,
                ),
                CustomButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                ),
                signInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
