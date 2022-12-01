import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/State_Management/student.dart';

class Student_Name_uppercase extends StatelessWidget {
  var student = Student();

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
              Obx(
                () => Text(
                  "Student Name is ${student.name.value}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  student.name.value = student.name.value.toUpperCase();
                },
                child: Text("Upper Case "),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  student.name.value = student.name.value.toLowerCase();
                },
                child: Text("Lower Case"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
