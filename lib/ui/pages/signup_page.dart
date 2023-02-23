import 'package:flutter/material.dart';
import 'package:poggers/ui/pages/login_page.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_teks_form.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypepasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget signInButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have account?",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Text(
                " Sign In",
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
                Text(
                  'Create Account',
                  style: blueTextStyle.copyWith(
                    fontSize: 31,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Fill the column bellow',
                  style: blackTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTeksForm(
                  title: 'Username',
                  hintText: 'Username',
                  controller: usernameController,
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
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text(
                      'The minimum password consists of 8 \ncharacters',
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.check_circle,
                      color: greyColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTeksForm(
                  title: 'Re-type Password',
                  hintText: 'Re-type Password',
                  obscureText: true,
                  controller: retypepasswordController,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  title: 'Sign Up',
                  onPressed: () {},
                  
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'By clicking continue you agree ',
                          style: blackTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          'to terms',
                          style: blueTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '& condition and privacy policy',
                      style: blueTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                signInButton(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
