import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'home.dart';
import 'next_screen.dart';
import 'unknown_route.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      unknownRoute: GetPage(name: '/notfound' ,page: ()=>UnknownRoutePage()),
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/',
          page: () => MyApp(),
        ),
        GetPage(
          name: '/home',
          page: () => Home(),
        ),
        // GetPage(
        //   name: '/nextScreen',
        //   page: () => NextScreen(),
        //   transition: Transition.leftToRight,
        // ),
        GetPage(
          name: '/nextScreen/:somevalue',
          page: () => NextScreen(),
          transition: Transition.leftToRight,
        ),
      ],

      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Get.toNamed(
                    '/ddd',
                  );

                 // Get.toNamed("/home?channel=Tamim Code&content=Flutter Getx",);
                },

                // onPressed: () async {
                //   // Get.to(
                //   //   Home(),
                //   //   fullscreenDialog: true,
                //   //   transition: Transition.downToUp,
                //   //   duration: Duration(milliseconds: 3000),
                //   //   curve: Curves.bounceInOut,
                //   //
                //   // );
                //
                //   //  Get.to(Home(),arguments: "Data from Main");
                //
                //   var data = await Get.to(Home());
                //   print("This Received data is $data");
                // },
              )

              //Bottom sheet
              // RaisedButton(
              //   child: Text("Bottom Sheet"),
              //   onPressed: () {
              //     Get.bottomSheet(
              //       Container(
              //         child: Wrap(
              //           children: [
              //             ListTile(
              //               leading: Icon(Icons.wb_sunny_outlined),
              //               title: Text('Light Theme'),
              //               onTap: () => {
              //                 Get.changeTheme(
              //                   ThemeData.light(),
              //                 )
              //               },
              //             ),
              //             ListTile(
              //               leading: Icon(Icons.wb_sunny),
              //               title: Text('Dark Theme'),
              //               onTap: () => {
              //                 Get.changeTheme(
              //                   ThemeData.dark(),
              //                 )
              //               },
              //             ),
              //           ],
              //         ),
              //       ),
              //       barrierColor: Colors.greenAccent.shade100,
              //       backgroundColor: Colors.purple,
              //       isDismissible: true,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //         side: BorderSide(
              //             color: Colors.white,
              //             style: BorderStyle.solid,
              //             width: 2.0),
              //       ),
              //      // enableDrag: false,
              //     );
              //   },
              // ),

              //Dialog
              // RaisedButton(
              //   onPressed: () {
              //     //  Get.defaultDialog();
              //     Get.defaultDialog(
              //       title: "Dialog Title",
              //       middleText: "This is middle text",
              //       middleTextStyle: TextStyle(fontSize: 20),
              //       backgroundColor: Colors.purple,
              //       radius: 50,
              //       //To Custom the middle Text
              //       content: Row(
              //         children: [
              //           CircularProgressIndicator(),
              //           SizedBox(
              //             width: 16,
              //           ),
              //           Expanded(
              //             child: Text("Data Loading"),
              //           ),
              //         ],
              //       ),
              //
              //       //Default cancle and confirm action
              //       textCancel: "Cancle",
              //       cancelTextColor: Colors.white,
              //       textConfirm: "Confirm",
              //       confirmTextColor: Colors.white,
              //       onCancel: () {},
              //       onConfirm: () {},
              //       buttonColor: Colors.green,
              //       cancel: Text(
              //         "Cancels",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       confirm: Text(
              //         "Confirms",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       actions: [
              //         RaisedButton(
              //           onPressed: () {
              //             Get.back();
              //           },
              //           child: Text("Action-2"),
              //         ),
              //         RaisedButton(
              //           onPressed: () {
              //             Get.back();
              //           },
              //           child: Text("Action-1"),
              //         ),
              //       ],
              //       barrierDismissible: false,
              //     );
              //   },
              //   child: Text("Show Dialog"),
              // ),
              //

              //Snackbar

              // RaisedButton(
              //   child: Text("Show Snackbar"),
              //   onPressed: () {
              //     Get.snackbar(
              //       "Snakbar Title", "This will be Snackbar Message",
              //       snackPosition: SnackPosition.BOTTOM,
              //       // titleText: Text("Another Title"),
              //       // messageText: Text(
              //       //   "Another message",
              //       //   style: TextStyle(color: Colors.white),
              //       // ),
              //       colorText: Colors.yellowAccent,
              //       backgroundColor: Colors.black,
              //       borderRadius: 30,
              //       margin: EdgeInsets.all(10),
              //       // maxWidth: 200,
              //       animationDuration: Duration(milliseconds: 3000),
              //       backgroundGradient: LinearGradient(
              //         colors: [Colors.green, Colors.red],
              //       ),
              //       borderColor: Colors.purple,
              //       borderWidth: 3,
              //       boxShadows: [
              //         BoxShadow(
              //             color: Colors.yellow,
              //             offset: Offset(30, 50),
              //             spreadRadius: 20,
              //             blurRadius: 8),
              //       ],
              //       isDismissible: true,
              //       dismissDirection: SnackDismissDirection.HORIZONTAL,
              //       forwardAnimationCurve: Curves.bounceInOut,
              //       duration: Duration(milliseconds: 8000),
              //       icon: Icon(
              //         Icons.send,
              //         color: Colors.white,
              //       ),
              //       shouldIconPulse: false,
              //       leftBarIndicatorColor: Colors.white,
              //       mainButton: TextButton(
              //         child: Text(
              //           "Retry",
              //           style: TextStyle(color: Colors.white),
              //         ),
              //         onPressed: () {},
              //       ),
              //       onTap: (val) {
              //         print("Retry clicked");
              //       },
              //       overlayBlur: 5,
              //       //overlayColor: Colors.grey
              //       padding: EdgeInsets.all(50),
              //       showProgressIndicator: true,
              //       progressIndicatorBackgroundColor: Colors.deepOrange,
              //       progressIndicatorValueColor:
              //           AlwaysStoppedAnimation<Color>(Colors.white),
              //       reverseAnimationCurve: Curves.bounceInOut,
              //       snackbarStatus: (val) {
              //         print(val);
              //       },
              //       // userInputForm: Form(
              //       //   child: Row(
              //       //     children: [
              //       //       Expanded(
              //       //         child: TextField(),
              //       //       )
              //       //     ],
              //       //   ),
              //       // ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
