import 'package:dio/dio.dart';
import 'package:flutter_app_getx/models/user_model.dart';

class UserApi {
  UserApi._internal();
  static UserApi _instance = UserApi._internal();
  static UserApi get instance => _instance;

  Future<List<UserModel>> getUsers(int page) async {
    var dio = Dio();
    final responseUser =
        await dio.get('https://reqres.in/api/users', queryParameters: {'page': page});

    return (responseUser.data['data'] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}
