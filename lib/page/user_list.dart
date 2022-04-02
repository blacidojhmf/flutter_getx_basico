import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controller/user_list_controller.dart';
import 'package:get/get.dart';

class UserList extends StatelessWidget {
  UserListController _controller = new UserListController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(
      init: _controller,
      builder: (_) {
        print('build context User List');
        return Scaffold(
          appBar: AppBar(
            title: Text('Lista de Usuarios'),
          ),
          body: GetBuilder<UserListController>(
            id: 'userList',
            builder: (context) {
              return ListView.builder(
                itemCount: _.users.length,
                itemBuilder: (context, index) {
                  print('refrescar usuarios');
                  final user = _.users[index];
                  return Column(
                    children: [
                      ListTile(
                        title: Text('${user.firstName}'),
                        subtitle: Text('${user.email}'),
                        leading: CircleAvatar(
                          child: ClipOval(
                            child: Image(
                              image: NetworkImage(user.avatar),
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          print(user.email);
                        },
                      ),
                      Divider(),
                    ],
                  );
                },
              );
            }
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'btn1',
                child: Text('1'),
                onPressed: (){
                  _.loadUsers(1);
              }),
              FloatingActionButton(
                heroTag: 'btn2',
                child: Text('2'),
                onPressed: (){
                  _.loadUsers(2);
              }),
            ]),

        );
      },
    );
  }
}
