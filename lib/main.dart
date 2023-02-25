import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/auth_cubit.dart';
import 'package:poggers/cubit/game_cubit.dart';
import 'package:poggers/cubit/page_cubit.dart';
import 'package:poggers/cubit/profesional_cubit.dart';
import 'package:poggers/ui/pages/login_page.dart';
import 'package:poggers/ui/pages/main_page.dart';
import 'package:poggers/ui/pages/signup_page.dart';

import 'package:poggers/ui/pages/splash1_page.dart';
import 'package:poggers/ui/pages/splash2_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => GameCubit(),
        ),
        BlocProvider(
          create: (context) => ProfesionalCubit(),
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
