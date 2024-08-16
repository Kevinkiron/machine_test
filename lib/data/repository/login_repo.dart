import 'package:dartz/dartz.dart';

import '../api_excepion.dart';
import '../data_source/login_datatsource.dart';
import '../failure.dart';
import '../models/create_user/create_user.dart';
import '../models/login_model.dart/login.dart';
import '../type_def.dart';

class LoginRepository {
  final LoginDataSource _loginDataSource;
  LoginRepository({required LoginDataSource loginDataSource})
      : _loginDataSource = loginDataSource;
  ResultFuture<Login> login({
    required String phone,
  }) async {
    try {
      final result = await _loginDataSource.login(phone: phone);

      return Right(result);
    } on APIException catch (e) {
      return Left(
        APIFailure.fromException(e),
      );
    }
  }

  ResultFuture<CreateUser> createNewUser(
      {required String phone,
      required String name,
      required String lastName,
      required String email}) async {
    try {
      final result = await _loginDataSource.createNew(
        phone: phone,
        email: email,
        lastName: lastName,
        name: name,
      );

      return Right(result);
    } on APIException catch (e) {
      return Left(
        APIFailure.fromException(e),
      );
    }
  }
}
