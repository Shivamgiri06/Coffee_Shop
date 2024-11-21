import 'package:flutter/material.dart';
import 'BoldText.dart';
import 'LightText.dart';

class CoffeeTile extends StatelessWidget {
    CoffeeTile({super.key});

  List<String> coffee = ["Capuccino", "Expresso", "Flat wallio", "Latte", ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: coffee.length,
          itemBuilder: (context, index){
            return Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/coffee1.jpg")),
                                ),
                              ),
                              Container(
                                  width: 60,
                                  height: 20,
                                  margin: const EdgeInsets.only(left: 80),
                                  decoration: BoxDecoration(
                                      color: Colors.black26.withOpacity(0.3),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.star, color: Colors.orange, size: 12,),
                                      BoldText(text: "4.5", size: 12,),
                                    ],
                                  )
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 155, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BoldText(
                              text: coffee[index],
                              size: 18,),
                            LightText(
                              text: "With Oat Milk",
                              size: 10,
                              color: Colors.grey.shade500,),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    BoldText(
                                      text: "\$",
                                      color: Colors.orange,),
                                    LightText(
                                      text: "4.20",
                                      color: Colors.white,),

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.orange,
                                    ),
                                    child: const Icon(Icons.add),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            );
          }),
    );
  }
}
