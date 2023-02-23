// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poggers/cubit/page_cubit.dart';
import 'package:poggers/shared/theme.dart';

class CustomNavigationItem extends StatelessWidget {
  final IconData icon;
  final int index;

  const CustomNavigationItem({
    Key? key,
    required this.icon,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<PageCubit>().setPage(index);
          },
          child: Column(
            children: [
              Icon(
                icon,
                size: 24,
                color: state == index ? blueColor : greyColor,
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                width: 40,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: state == index ? blueColor : Colors.transparent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
