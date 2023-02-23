import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/page_cubit.dart';
import 'package:poggers/ui/pages/login_page.dart';
import 'package:poggers/ui/pages/main_page.dart';
import 'package:poggers/ui/pages/signup_page.dart';

import 'package:poggers/ui/pages/splash1_page.dart';
import 'package:poggers/ui/pages/splash2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Splash1Page(),
          '/get-started': (context) => Splash2Page(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => LoginPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
