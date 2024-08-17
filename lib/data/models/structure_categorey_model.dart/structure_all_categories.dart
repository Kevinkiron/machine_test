// To parse this JSON data, do
//
//     final structureAllCategories = structureAllCategoriesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'structure_all_categories.freezed.dart';
part 'structure_all_categories.g.dart';

List<StructureAllCategories> structureAllCategoriesFromJson(String str) =>
    List<StructureAllCategories>.from(
        json.decode(str).map((x) => StructureAllCategories.fromJson(x)));

String structureAllCategoriesToJson(List<StructureAllCategories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StructureAllCategories with _$StructureAllCategories {
  const factory StructureAllCategories({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "top_rated") bool? topRated,
    @JsonKey(name: "all_service_people_count") int? allServicePeopleCount,
    @JsonKey(name: "all_service_people") List<ServicePerson>? allServicePeople,
    @JsonKey(name: "services") List<Service>? services,
  }) = _StructureAllCategories;

  factory StructureAllCategories.fromJson(Map<String, dynamic> json) =>
      _$StructureAllCategoriesFromJson(json);
}

@freezed
class ServicePerson with _$ServicePerson {
  const factory ServicePerson({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: "created") DateTime? created,
  }) = _ServicePerson;

  factory ServicePerson.fromJson(Map<String, dynamic> json) =>
      _$ServicePersonFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "top_rated") bool? topRated,
    @JsonKey(name: "service_people") List<ServicePerson>? servicePeople,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
