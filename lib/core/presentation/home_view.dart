import 'package:flutter/material.dart';
import 'package:goldak/core/constants/app_colors.dart';
import 'package:goldak/core/constants/app_strings.dart';
import 'package:goldak/core/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4,),
            CustomButton(
              buttonColor: AppColors.goldColor,
              text: AppStrings.gold,
            ),
            Spacer(flex: 1,),
            CustomButton(
              buttonColor: AppColors.silverColor,
              text: AppStrings.silver,
            ),
            Spacer(flex: 4,),
          ],
        ),
      ),
    );
  }
}
