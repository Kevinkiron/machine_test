import 'package:swift_service/data/api_endpoints.dart';

import '../api_excepion.dart';
import '../api_service.dart';
import '../models/create_user/create_user.dart';
import '../models/login_model.dart/login.dart';

class LoginDataSource {
  final APIHelper _apiHelper;
  LoginDataSource(this._apiHelper);
  Future<Login> login({required String phone}) async {
    try {
      final response = await _apiHelper
          .request(url: ApiEndpoints.login, method: Method.POST, params: {
        "phone_number": phone,
        "fcm_token": '',
      });

      final result = Login.fromJson(response.data);

      return result;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }

  Future<CreateUser> createNew(
      {required String phone,
      required String name,
      required String lastName,
      required String email}) async {
    try {
      final response = await _apiHelper
          .request(url: ApiEndpoints.createUser, method: Method.POST, params: {
        "phone_number": phone,
        "first_name": name,
        "last_name": lastName,
        "email": email,
      });

      final result = CreateUser.fromJson(response.data);

      return result;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }
}
