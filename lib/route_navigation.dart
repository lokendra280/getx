import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getx/home.dart';
import 'home.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Go to Home'),
                onPressed: () {
                  Get.to(
                    HomePage(),
                    fullscreenDialog: true,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
