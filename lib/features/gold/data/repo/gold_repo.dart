import 'package:dartz/dartz.dart';
import 'package:goldak/core/networking/api_constants.dart';
import 'package:goldak/core/networking/dio_helper.dart';
import 'package:goldak/features/gold/data/model/gold_model.dart';

class GoldRepo {
  static Future<Either<String, GoldModel>> getGold() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.goldEndpoint);

      return right(GoldModel.fromjson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
