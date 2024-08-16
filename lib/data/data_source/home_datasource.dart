import 'dart:developer';

import 'package:swift_service/data/api_endpoints.dart';

import '../api_excepion.dart';
import '../api_service.dart';
import '../models/banner_model.dart/banner_model.dart';
import '../models/category_model/category_model.dart';

class GetBannerDataSource {
  final APIHelper _apiHelper;
  GetBannerDataSource(this._apiHelper);
  Future<List<BannerModel>> bannerGet() async {
    try {
      final response = await _apiHelper.request(
        url: ApiEndpoints.banner,
        method: Method.GET,
      );
      final List<dynamic> result = response.data;
      log(result.toString());
      final List<BannerModel> banners =
          result.map((e) => BannerModel.fromJson(e)).toList();

      return banners;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }

  Future<List<CategoryModel>> getCategory() async {
    try {
      final response = await _apiHelper.request(
        url: ApiEndpoints.category,
        method: Method.GET,
      );
      final List<dynamic> result = response.data;
      log(result.toString());
      final List<CategoryModel> category =
          result.map((e) => CategoryModel.fromJson(e)).toList();

      return category;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }
}