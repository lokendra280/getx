import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BootomTheme extends StatelessWidget {
  const BootomTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BottemTheme',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Theme'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ),
                    // barrierColor: Colors.greenAccent.shade100,
                    backgroundColor: Colors.purpleAccent,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                    ),
                    enableDrag: true,
                  );
                },
                child: const Text(
                  'Bottom Theme',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
