// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopRatedModelImpl _$$TopRatedModelImplFromJson(Map<String, dynamic> json) =>
    _$TopRatedModelImpl(
      id: (json['id'] as num?)?.toInt(),
      servicePeople: (json['service_people'] as List<dynamic>?)
          ?.map((e) => ServicePerson.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      topRated: json['top_rated'] as bool?,
      category: (json['category'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopRatedModelImplToJson(_$TopRatedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_people': instance.servicePeople,
      'name': instance.name,
      'image': instance.image,
      'created': instance.created?.toIso8601String(),
      'top_rated': instance.topRated,
      'category': instance.category,
    };

_$ServicePersonImpl _$$ServicePersonImplFromJson(Map<String, dynamic> json) =>
    _$ServicePersonImpl(
      id: (json['id'] as num?)?.toInt(),
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      reviewCount: (json['review_count'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePicture: json['profile_picture'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      service: (json['service'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ServicePersonImplToJson(_$ServicePersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avg_rating': instance.avgRating,
      'review_count': instance.reviewCount,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
      'created': instance.created?.toIso8601String(),
      'service': instance.service,
    };
