import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/auth_cubit.dart';
import 'package:poggers/shared/theme.dart';

import '../../cubit/page_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is AuthSuccess) {
              return Container(
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
                        alignment: const Alignment(0.6, 0.8),
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
                      state.user.username,
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
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
                                  '${state.user.saldo} USD',
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
                                  state.user.username,
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
                                  state.user.email,
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
                                Image.asset('assets/order.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Order',
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
                          BlocConsumer<AuthCubit, AuthState>(
                            listener: (context, state) {
                              if (state is AuthFailed) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: blueColor,
                                    content: Text(state.error),
                                  ),
                                );
                              } else if (state is AuthInitial) {
                                context.read<PageCubit>().setPage(1);
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-in', (route) => false);
                              }
                            },
                            builder: (context, state) {
                              if (state is AuthLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return GestureDetector(
                                onTap: () {
                                  context.read<AuthCubit>().signOut();
                                },
                                child: Container(
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
                              );
                            },
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
