import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:latihantsa/controller/demoController.dart';
import 'package:latihantsa/controller/purchase.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/get_core.dart';

class Home extends StatelessWidget {
  final purchase = Get.put(Purchase());
  DemoController cart = Get.find();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomSheet: SafeArea(
          child: Card(
        elevation: 12,
        margin: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          height: 65,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    Positioned(
                        right: 5,
                        child: Container(
                          height: 5,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Center(child:
                                GetX<DemoController>(builder: (controller) {
                              return Text(
                                '${controller.cartCount}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              );
                            })),
                          ),
                        ))
                  ],
                ),
                GetX<DemoController>(builder: ((controller) {
                  return Text(
                    'Total Amount - ${controller.totalAmount}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  );
                })),
                IconButton(
                    onPressed: () => Get.toNamed('/cart',
                        arguments: "Home to Demo Page -. Passing Arguments"),
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ),
      )),
      body: Container(
        child: GetX<Purchase>(builder: ((controller) {
          return ListView.builder(
              itemCount: controller.product.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Column(children: [
                        Image.network(
                          "https://cf.shopee.ph/file/9e50c6cd776c577a511a28dc30265ce1",
                          fit: BoxFit.cover,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.product[index].productName,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    controller
                                        .product[index].productDescription,
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: ElevatedButton(
                                  onPressed: () {
                                    cart.addToCart(controller.product[index]);
                                  },
                                  child: Text(
                                    "Beli Sekarang",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  )),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ));
        })),
      ),
    );
  }
}
