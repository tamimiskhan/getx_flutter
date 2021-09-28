import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

// void increment() async {
//     await Future<int>.delayed(Duration(seconds: 5));
//     this.count++;
//     update();
//   }

  // void cleanUpTask(){
  //   print("Clean up task");
  // }

//   //Better approach
  @override
  void onInit() {
    //called every time when the value of count variable changes

    // ever(count, (_) => print(count));

    //called every time when the value of any variable from the list changes
    //everAll([count], (_) =>  print(count));

    //called every time  the user stops typing for 1 second

    debounce(
        count,
        (_) => print(
            "When the user stop typing for 1 sec the value of count will be printed"),
        time: Duration(seconds: 1));

    //Ignore all changes within 3 second.
    //imagine tha the user can earn coins by clicking on something,
    //if he clicked 300 times in the same minute,
    //he would have 300 coins ,using interval,
    //you can set a time frame for 3 seconds ,
    //and even the clicking 300 or a thousand times,
    //the maximum he would get in 1 minute would be 20 coins,
    //clicking 300 or 1 million times

    interval(count, (_) => print("Ignore all changes"),
        time: Duration(seconds: 3));

    super.onInit();
  }
//
// @override
// void onClose(){
//     super.onClose();
// }

}
