import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog Box"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Welcone to Getx Libary",
                      titleStyle: const TextStyle(fontSize: 25),
                      middleText: "This is press button",
                      middleTextStyle:
                          const TextStyle(fontSize: 23, color: Colors.red),
                      backgroundColor: Colors.purple,
                      radius: 5,

                      /// to give loader in the dialog box
                      content: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(
                            width: 16,
                          ),
                          const Expanded(child: Text("Data Loading"))
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                      onCancel: () {},
                      onConfirm: () {},
                    );
                  },
                  child: const Text('Show Dialog'))
            ],
          ),
        ),
      ),
    );
  }
}
