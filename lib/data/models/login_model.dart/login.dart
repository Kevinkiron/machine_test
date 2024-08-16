// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login.freezed.dart';
part 'login.g.dart';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

@freezed
class Login with _$Login {
  const factory Login({
    @JsonKey(name: "otp") String? otp,
    @JsonKey(name: "user") bool? user,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
