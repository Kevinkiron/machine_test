import 'dart:developer';

import 'package:swift_service/data/api_endpoints.dart';
import 'package:swift_service/data/models/structure_categorey_model.dart/structure_all_categories.dart';
import 'package:swift_service/data/models/top_rated_model/top_rated_model.dart';

import '../api_excepion.dart';
import '../api_service.dart';
import '../models/banner_model.dart/banner_model.dart';

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

  // Future<List<CategoryModel>> getCategory() async {
  //   try {
  //     final response = await _apiHelper.request(
  //       url: ApiEndpoints.category,
  //       method: Method.GET,
  //     );
  //     final List<dynamic> result = response.data;
  //     log(result.toString());
  //     final List<CategoryModel> category =
  //         result.map((e) => CategoryModel.fromJson(e)).toList();

  //     return category;
  //   } on APIException {
  //     rethrow;
  //   } catch (e) {
  //     throw APIException(
  //       message: e.toString(),
  //       statusCode: 505,
  //     );
  //   }
  // }

  Future<List<StructureAllCategories>> getAllCategory() async {
    try {
      final response = await _apiHelper.request(
        url: ApiEndpoints.structureCategory,
        method: Method.GET,
      );
      final List<dynamic> result = response.data;
      log(result.toString());
      final List<StructureAllCategories> category =
          result.map((e) => StructureAllCategories.fromJson(e)).toList();

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

  Future<List<TopRatedModel>> getTopRatedService() async {
    try {
      final response = await _apiHelper.request(
        url: ApiEndpoints.topRatedService,
        method: Method.GET,
      );
      final List<dynamic> result = response.data;
      log(result.toString());
      final List<TopRatedModel> topRated =
          result.map((e) => TopRatedModel.fromJson(e)).toList();

      return topRated;
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
