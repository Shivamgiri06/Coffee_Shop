import 'package:flutter/material.dart';
import 'BoldText.dart';
import 'LightText.dart';

class SpecialTile extends StatelessWidget {
  const SpecialTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 125,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/coffee2.jpg")),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 145, top: 10),
            child: Column(
              children: [
                BoldText(text: "5 Coffee Beans You \n Must Try!", size: 18,),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      BoldText(
                        text: "At Just \$",
                        size: 16,
                        color: Colors.orange,),
                      LightText(
                        text: "12.20",
                        color: Colors.white,
                        size: 16,),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60, top: 20),
                  child: ElevatedButton(onPressed: (){
                          print("The Special Button Clicked");
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                      child: LightText(
                              text: "Explore",
                              size: 15,
                              color: Colors.white,)),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
