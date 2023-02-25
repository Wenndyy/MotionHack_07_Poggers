import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/auth_cubit.dart';
import 'package:poggers/ui/pages/login_page.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_teks_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
    passwordController.addListener(() {
      setState(() {});
    });
  }

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
                      color: (passwordController.text.length > 9)
                          ? greenColor
                          : greyColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    if (val == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: blueColor,
                          content: Text('Empty'),
                        ),
                      );
                    }
                    if (val != passwordController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: blueColor,
                          content: Text('No match'),
                        ),
                      );
                    }
                    return null;
                  },
                  controller: retypepasswordController,
                  decoration: InputDecoration(
                    hintText: 'Retype password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: blueColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: blueColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    if (state is AuthSuccess) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    } else if (state is AuthFailed) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: blueColor,
                          content: Text(state.error),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is AuthLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return CustomButton(
                      title: 'Sign Up',
                      onPressed: () {
                        context.read<AuthCubit>().signUp(
                            email: emailController.text,
                            password: passwordController.text,
                            username: usernameController.text);
                      },
                    );
                  },
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
                const SizedBox(
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
