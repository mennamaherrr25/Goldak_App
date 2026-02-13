import 'package:dartz/dartz.dart';
import 'package:goldak/core/networking/api_constants.dart';
import 'package:goldak/core/networking/dio_helper.dart';
import 'package:goldak/features/silver/data/models/silver_model.dart';

class SilverRepo {
 static Future<Either<String, SilverModel>> getSilver() async {
    try {
      final res = await DioHelper.getData(
        endPoint: ApiConstants.silverEndPoint,
      );

      return right(SilverModel.fromjson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
