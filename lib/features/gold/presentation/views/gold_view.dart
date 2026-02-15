import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldak/core/constants/app_images.dart';
import 'package:goldak/core/widgets/view_body.dart';
import 'package:goldak/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:goldak/features/gold/presentation/cubit/gold_states.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gold Price',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocBuilder<GoldCubit, GoldStates>(
        builder: (context, state) {
          if (state is GoldLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GoldFailureState) {
            return Center(child: Text(state.errMsg));
          } else if (state is GoldLoadedState) {
            return ViewBody(
              image: AppImages.goldImage,
              price: state.goldModel.price,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
