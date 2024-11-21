import 'package:coffee_app_ui/Screens/HomeScreen.dart';
import 'package:coffee_app_ui/Widgets/BoldText.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Image.asset("assets/images/intro.png",
               width: 200, height: 200, fit: BoxFit.cover,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: BoldText(
                    text: "Home Page", size: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
