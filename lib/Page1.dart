import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxtest/Controller1.dart';

class Page1 extends GetView<Controller1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: controller.textController,
          ),
          const Text('page 1'),
          TextButton(
            onPressed: () {
              Get.offAllNamed('/page2');
            },
            child: Text('go page2'),
          )
        ],
      ),
    );
  }
}
