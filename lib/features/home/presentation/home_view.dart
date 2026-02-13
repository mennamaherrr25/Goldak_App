import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldak/core/constants/app_colors.dart';
import 'package:goldak/core/constants/app_strings.dart';
import 'package:goldak/core/widgets/custom_button.dart';
import 'package:goldak/features/silver/data/repo/silver_repo.dart';
import 'package:goldak/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldak/features/silver/presentation/views/silver_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 4),
              CustomButton(
                buttonColor: AppColors.goldColor,
                text: AppStrings.gold,
                onPressed: () {
                  // BlocProvider.of<SilverCubit>(context).getSilver();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SilverView()),
                  // );
                },
              ),
              Spacer(flex: 1),
              CustomButton(
                buttonColor: AppColors.silverColor,
                text: AppStrings.silver,
                onPressed: () {
                  BlocProvider.of<SilverCubit>(context).getSilver();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SilverView()),
                  );
                },
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      
    );
  }
}
