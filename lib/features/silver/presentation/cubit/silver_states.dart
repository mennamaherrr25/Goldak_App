import 'package:goldak/features/silver/data/models/silver_model.dart';

abstract class SilverStates {}

class SilverInitialState extends SilverStates {}

class SilverLoadingState extends SilverStates {}

class SilverLoadedState extends SilverStates {
  SilverModel silverModel;
  SilverLoadedState({required this.silverModel});
}

class SilverFailureState extends SilverStates {
  final String errMsg;
  SilverFailureState({required this.errMsg});
}
