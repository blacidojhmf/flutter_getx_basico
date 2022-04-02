import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controller/home_getx_controller.dart';
import 'package:get/get.dart';

class HomeGetx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeGetxController _controller = new HomeGetxController();
    return GetBuilder<HomeGetxController>(
      init: _controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('Getx')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('Cantidad ${_.getCantidad}'),
              )
            ],
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: _.incrementar,
              ),
              FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  _.reducir();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
