import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/State_Management/reactive_state.dart';
import 'package:getx/State_Management/student_name_reactive.dart';
import 'package:getx/bootm_sheetand_dynamic_theme.dart';
import 'package:getx/dialog_box.dart';
import 'package:getx/route_navigation.dart';

import 'State_Management/seperate_business_logic_to_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeparateBusinessLogic(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text("Snack Bar"),
      //   ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         MaterialButton(
      //             child: const Text('Material Button'),
      //             onPressed: () {
      //               Get.snackbar('Snackbar Title', "This is Snackbar");
      //             })
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
