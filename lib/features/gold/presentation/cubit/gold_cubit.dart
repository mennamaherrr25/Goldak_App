import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldak/features/gold/data/repo/gold_repo.dart';
import 'package:goldak/features/gold/presentation/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());

  //late SilverModel silverModel;

  Future<void> getGold() async {
    emit(GoldLoadingState());

    final res = await GoldRepo.getGold();
    res.fold(
      (error) => emit(GoldFailureState(errMsg: error)),
      (goldModel) => emit(GoldLoadedState(goldModel: goldModel)),
    );
  }
}
