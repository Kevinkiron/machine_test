// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserImpl _$$CreateUserImplFromJson(Map<String, dynamic> json) =>
    _$CreateUserImpl(
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CreateUserImplToJson(_$CreateUserImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_id': instance.userId,
      'message': instance.message,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      access: json['access'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'access': instance.access,
    };
