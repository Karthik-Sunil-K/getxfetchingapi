import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';

class HomePage extends StatelessWidget {
  final productController = Get.put(ProductContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetX<ProductContoller>(
              
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.productList.length,
                  itemBuilder: ((context, index) {
                    return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.productList[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          '${controller.productList[index].prductDetails}'),
                                    ],
                                  ),
                                  Text('\$${controller.productList[index].productPrice}',
                                      style: TextStyle(fontSize: 24)),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      );
                  }),
                );
              }
            ),
          ),
          Text('Hellliiio',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}


