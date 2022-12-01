import 'package:get/get.dart';
import 'package:getx/State_Management/student.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }

  var count = 0;
  void increment() {
    count++;
    update(); // will update the count variable on Ui which uses it
  }
}
