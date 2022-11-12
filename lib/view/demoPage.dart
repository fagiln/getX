import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihantsa/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(Get.arguments),
          ),
          SwitchListTile(
            value: ctrl.isDark,
            onChanged: ctrl.changeTheme,
            title: Text("Klik untuk mengubah tema"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => Get.snackbar(
                  "Warning !!", "Ngapain kamu pencet woyy",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.red,
                  backgroundColor: Colors.black87),
              child: Text("Snackbar")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => Get.bottomSheet(Container(
                  height: 150,
                  color: Colors.white,
                  child: Text(
                    "Halo ini adalah BottomSheet",
                    style: TextStyle(fontSize: 30),
                  ))),
              child: Text('Bottom Sheet')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => Get.offNamed('/'), child: Text("Back To Home"))
        ],
      )),
    );
  }
}
