// To parse this JSON data, do
//
//     final topRatedModel = topRatedModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_rated_model.freezed.dart';
part 'top_rated_model.g.dart';

List<TopRatedModel> topRatedModelFromJson(String str) =>
    List<TopRatedModel>.from(
        json.decode(str).map((x) => TopRatedModel.fromJson(x)));

String topRatedModelToJson(List<TopRatedModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class TopRatedModel with _$TopRatedModel {
  const factory TopRatedModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "service_people") List<ServicePerson>? servicePeople,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "top_rated") bool? topRated,
    @JsonKey(name: "category") int? category,
  }) = _TopRatedModel;

  factory TopRatedModel.fromJson(Map<String, dynamic> json) =>
      _$TopRatedModelFromJson(json);
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
