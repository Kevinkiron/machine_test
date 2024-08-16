// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

List<CategoryModel> categoryModelFromJson(String str) =>
    List<CategoryModel>.from(
        json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "services") List<Service>? services,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "top_rated") bool? topRated,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "service_people") List<ServicePerson>? servicePeople,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "top_rated") bool? topRated,
    @JsonKey(name: "category") int? category,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

@freezed
class ServicePerson with _$ServicePerson {
  const factory ServicePerson({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "avg_rating") int? avgRating,
    @JsonKey(name: "review_count") int? reviewCount,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "service") int? service,
  }) = _ServicePerson;

  factory ServicePerson.fromJson(Map<String, dynamic> json) =>
      _$ServicePersonFromJson(json);
}
