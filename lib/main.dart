import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Sanckbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Show Snackbar"),
                onPressed: () {
                  Get.snackbar(
                    "Snakbar Title", "This will be Snackbar Message",
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text("Another Title"),
                    // messageText: Text(
                    //   "Another message",
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    colorText: Colors.yellowAccent,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: EdgeInsets.all(10),
                    // maxWidth: 200,
                    animationDuration: Duration(milliseconds: 3000),
                    backgroundGradient: LinearGradient(
                      colors: [Colors.green, Colors.red],
                    ),
                    borderColor: Colors.purple,
                    borderWidth: 3,
                    boxShadows: [
                      BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(30, 50),
                          spreadRadius: 20,
                          blurRadius: 8),
                    ],
                    isDismissible: true,
                    dismissDirection: SnackDismissDirection.HORIZONTAL,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                      child: Text(
                        "Retry",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    onTap: (val) {
                      print("Retry clicked");
                    },
                    overlayBlur: 5,
                    //overlayColor: Colors.grey
                    padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    // userInputForm: Form(
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: TextField(),
                    //       )
                    //     ],
                    //   ),
                    // ),
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
