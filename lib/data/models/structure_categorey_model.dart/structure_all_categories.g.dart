// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_all_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StructureAllCategoriesImpl _$$StructureAllCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$StructureAllCategoriesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      topRated: json['top_rated'] as bool?,
      allServicePeopleCount:
          (json['all_service_people_count'] as num?)?.toInt(),
      allServicePeople: (json['all_service_people'] as List<dynamic>?)
          ?.map((e) => ServicePerson.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StructureAllCategoriesImplToJson(
        _$StructureAllCategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'created': instance.created?.toIso8601String(),
      'top_rated': instance.topRated,
      'all_service_people_count': instance.allServicePeopleCount,
      'all_service_people': instance.allServicePeople,
      'services': instance.services,
    };

_$ServicePersonImpl _$$ServicePersonImplFromJson(Map<String, dynamic> json) =>
    _$ServicePersonImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePicture: json['profile_picture'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$ServicePersonImplToJson(_$ServicePersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
      'created': instance.created?.toIso8601String(),
    };

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      topRated: json['top_rated'] as bool?,
      servicePeople: (json['service_people'] as List<dynamic>?)
          ?.map((e) => ServicePerson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'created': instance.created?.toIso8601String(),
      'top_rated': instance.topRated,
      'service_people': instance.servicePeople,
    };
