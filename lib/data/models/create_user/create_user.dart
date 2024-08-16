// To parse this JSON data, do
//
//     final createUser = createUserFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_user.freezed.dart';
part 'create_user.g.dart';

CreateUser createUserFromJson(String str) =>
    CreateUser.fromJson(json.decode(str));

String createUserToJson(CreateUser data) => json.encode(data.toJson());

@freezed
class CreateUser with _$CreateUser {
  const factory CreateUser({
    @JsonKey(name: "token") Token? token,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "message") String? message,
  }) = _CreateUser;

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFromJson(json);
}

@freezed
class Token with _$Token {
  const factory Token({
    @JsonKey(name: "access") String? access,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
