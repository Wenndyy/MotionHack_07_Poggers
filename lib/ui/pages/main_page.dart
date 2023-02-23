import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/page_cubit.dart';
import 'package:poggers/shared/theme.dart';
import 'package:poggers/ui/pages/game_page.dart';
import 'package:poggers/ui/pages/home_page.dart';
import 'package:poggers/ui/pages/profile_page.dart';
import 'package:poggers/ui/widgets/custom_navigation_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const GamePage();
          break;
        case 1:
          return const HomePage();
          break;
        case 2:
          return const ProfilePage();
          break;

        default:
          return const MainPage();
      }
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 312,
          height: 60,
          margin:
              const EdgeInsets.only(bottom: 30, left: 39, right: 39, top: 30),
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: greyColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomNavigationItem(
                index: 0,
                icon: Icons.my_library_books_rounded,
              ),
              CustomNavigationItem(
                index: 1,
                icon: Icons.home,
              ),
              CustomNavigationItem(
                index: 2,
                icon: Icons.person,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
