import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar(
              'Covid', 
              'This is snackbar body. This is snackbar body',
              snackPosition: SnackPosition.BOTTOM,
              animationDuration: const Duration(seconds: 2),
              backgroundColor: Colors.pink[400],
              //when bgGradient is enabled,bgColor auto disabled//
              backgroundGradient: const LinearGradient(
                colors:[Colors.red,Colors.orange,Colors.yellow]
              ),
              colorText: Colors.white,
              //title and message text can be styled separately//
              titleText: Text('I am Title',
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold
                ) ,
              ),
              messageText: const Text(
                'This is Custom message text',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              borderRadius: 10.0,
              // use border but must use border width//
              borderWidth: 3,
              borderColor: Colors.green,
              // maxWidth: 100,
              // margin: EdgeInsets.all(10.0)
              // padding: EdgeInsets.all(30)
              overlayBlur: 3,
              overlayColor: Colors.grey[600],
              icon: const Icon(Icons.send,color: Colors.white,),
              //IconPulse default is true//
              shouldIconPulse: false,
              mainButton: TextButton(
                onPressed: (){}, 
                child: const Text('Button'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                // onHover: ,
                // onLongPress: ,
                // key: ,
                alignment: Alignment.center,
                // fixedSize: MaterialStateProperty.all<Size>(const Size.square(80))
                // maximumSize: MaterialStateProperty.all<Size>(const Size(100, 300)),
                // minimumSize: MaterialStateProperty.all<Size>(Size(200, 100))
                // padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(50)),
                //and check the other proprties of button//  
                ),
                ),
              showProgressIndicator: true,
              progressIndicatorBackgroundColor: Colors.deepOrange,
              progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              isDismissible: true,
              dismissDirection: DismissDirection.startToEnd,
              barBlur: sqrt1_2,
              forwardAnimationCurve: Curves.bounceInOut,
              // duration: const Duration(minutes: 2),
              // reverseAnimationCurve: Curves.bounceOut,
              // snackbarStatus: (val){
              //   // ignore: avoid_print
              //   print(val);
              // }
              // snackStyle: SnackStyle.FLOATING,

              //if userInputForm is enabled all the other values are disabled autometically// 
              // userInputForm: Form(
              //   child: Row(
              //     children: const [
              //       Expanded(
              //         child: TextField(),
              //         )
              //     ],
              //   )
              // ),

            );
          }, 
          child: const Text('Show Snackbar',
          textScaleFactor: 1.2,
          textAlign: TextAlign.center,)
          ),
        ),
    );
  }
}