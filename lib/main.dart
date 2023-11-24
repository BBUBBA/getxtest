import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/Controller1.dart';
import 'package:getxtest/Page1.dart';

import 'Controller2.dart';
import 'Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Page1(),
          binding: BindingsBuilder(() => Get.lazyPut(() => Controller1())),
        ),
        GetPage(
          name: '/page2',
          page: () => Page2(),
          binding: BindingsBuilder(() => Get.lazyPut(() => Controller2())),
        ),
      ],
    );
  }
}