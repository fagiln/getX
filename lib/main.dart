import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihantsa/controller/demoController.dart';
import 'package:latihantsa/view/demoPage.dart';
import 'view/home.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DemoController ctrl = Get.put(DemoController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(
      builder: (_) {
        return GetMaterialApp(
          title: "getX",
          theme: ctrl.theme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {'/': (context) => Home(), '/cart': (context) => DemoPage()},
        );
      },
    );
  }
}
