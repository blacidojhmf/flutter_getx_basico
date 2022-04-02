import 'package:get/get.dart';

class HomeGetxController extends GetxController{

  int _cantidad = 0;
  int get getCantidad => _cantidad;


  void incrementar(){
    _cantidad++;
    update();
  }

  void reducir(){
    _cantidad--;
     update();
  }

}