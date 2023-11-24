
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller2 extends GetxController
{

  final textController = TextEditingController();

  @override
  void onClose()
  {
    textController.dispose();
    super.onClose();
  }

}