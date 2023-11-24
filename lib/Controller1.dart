
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller1 extends GetxController
{

  final textController = TextEditingController();

  @override
  void onClose()
  {
    textController.dispose();
    super.onClose();
  }

}