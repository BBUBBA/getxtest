import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxtest/Controller2.dart';

class Page2 extends GetView<Controller2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: controller.textController,
          ),
          const Text('page 2'),
          TextButton(
            onPressed: () {
              Get.offAllNamed('/');
            },
            child: Text('go page1'),
          )
        ],
      ),
    );
  }
}
