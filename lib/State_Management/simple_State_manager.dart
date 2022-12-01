import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/State_Management/my_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  init: MyController(),
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
                    );
                  }),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text("Increment "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
