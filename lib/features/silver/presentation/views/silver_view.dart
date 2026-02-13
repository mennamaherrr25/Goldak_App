import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldak/core/constants/app_images.dart';
import 'package:goldak/core/widgets/view_body.dart';
import 'package:goldak/features/silver/data/repo/silver_repo.dart';
import 'package:goldak/features/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldak/features/silver/presentation/cubit/silver_states.dart';

class SilverView extends StatelessWidget {
  const SilverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Silver Price',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),

      body: BlocBuilder<SilverCubit, SilverStates>(
        builder: (context, state) {
          if (state is SilverLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SilverFailureState) {
            return Center(child: Text(state.errMsg));
          } else if (state is SilverLoadedState) {
            return ViewBody(
              image: AppImages.silverImage,
              price: state.silverModel.price,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
