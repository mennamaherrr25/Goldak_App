import 'package:goldak/features/gold/data/model/gold_model.dart';


abstract class GoldStates {}

class GoldInitialState extends GoldStates {}

class GoldLoadingState extends GoldStates {}

class GoldLoadedState extends GoldStates {
  GoldModel goldModel;
  GoldLoadedState({required this.goldModel});
}

class GoldFailureState extends GoldStates {
  final String errMsg;
  GoldFailureState({required this.errMsg});
}
