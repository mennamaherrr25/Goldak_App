import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:goldak/features/silver/data/models/silver_model.dart';
import 'package:goldak/features/silver/data/repo/silver_repo.dart';
import 'package:goldak/features/silver/presentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverStates> {
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());

  //late SilverModel silverModel;

  Future <void>getSilver() async {
    emit(SilverLoadingState());

    final res = await SilverRepo.getSilver();
    res.fold(
      (error) => emit(SilverFailureState(errMsg: error)),
      (silverModel) => emit(SilverLoadedState(silverModel: silverModel)),
    );
  }
}
