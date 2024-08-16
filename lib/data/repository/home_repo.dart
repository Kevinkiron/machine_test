import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:swift_service/data/models/banner_model.dart/banner_model.dart';
import 'package:swift_service/data/models/top_rated_model/top_rated_model.dart';

import '../api_excepion.dart';
import '../data_source/home_datasource.dart';
import '../failure.dart';
import '../models/category_model/category_model.dart';
import '../type_def.dart';

class GetBannerRepository {
  final GetBannerDataSource _getBannerDataSource;
  GetBannerRepository({required GetBannerDataSource getBannerDataSource})
      : _getBannerDataSource = getBannerDataSource;
  ResultFuture<List<BannerModel>> bannerGet() async {
    try {
      final result = await _getBannerDataSource.bannerGet();
      log(result.toString());
      return Right(result);
    } on APIException catch (e) {
      return Left(
        APIFailure.fromException(e),
      );
    }
  }

  ResultFuture<List<CategoryModel>> getCategory() async {
    try {
      final result = await _getBannerDataSource.getCategory();
      log(result.toString());
      return Right(result);
    } on APIException catch (e) {
      return Left(
        APIFailure.fromException(e),
      );
    }
  }

  ResultFuture<List<TopRatedModel>> getTopRated() async {
    try {
      final result = await _getBannerDataSource.getTopRatedService();
      log(result.toString());
      return Right(result);
    } on APIException catch (e) {
      return Left(
        APIFailure.fromException(e),
      );
    }
  }
}
