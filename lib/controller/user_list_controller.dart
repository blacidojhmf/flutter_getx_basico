import 'package:flutter_app_getx/api/user_api.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';

class UserListController extends GetxController{

  List<UserModel> _users = [];
  List<UserModel> get users =>_users;

  Future<void> loadUsers(int page) async{
    final data = await UserApi.instance.getUsers(page);
    _users = data;
    update(['userList']);
  }


  @override
  void onInit() {
    loadUsers(1);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}