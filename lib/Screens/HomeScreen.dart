import 'package:coffee_app_ui/Widgets/BoldText.dart';
import 'package:coffee_app_ui/Widgets/coffee_tile.dart';
import 'package:coffee_app_ui/Widgets/special_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> coffee = ["Capuccino", "Expresso", "Flat wallio", "Latte", ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          print("Icon is clicked");
        }, icon: const Icon(Icons.apps)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                print("Image clicked");
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/account.png"),
                radius: 16,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "")
      ],
      currentIndex: 0,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.orange,
      onTap: (index) {
        print("Tapped item index: $index");
      }),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText(text: "Find the best\ncoffee for you", size: 30,),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  //______________Search Bar________________
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        //Icon
                        const Icon(Icons.search),
                        const SizedBox(width: 10,),
                        //Field
                        Expanded(child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Find your coffee',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //___________________Category____________________
              SizedBox(
                width: double.maxFinite,
                height: 20,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffee.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 30),
                        height: 30,
                        width: 80,
                        child: BoldText(
                            text: coffee[index],
                            size: 16,
                            color: index == 0? Colors.orange: Colors.grey.withOpacity(0.3)
                        )
                      );
                    }),
              ),

              const SizedBox(height: 30,),

              //____________________Coffee Tile__________________
              CoffeeTile(),

              const SizedBox(height: 30,),

              //__________________Special for you_________________
              BoldText(text: "Special for you"),
              const SizedBox(height: 20,),
              const SpecialTile(),

            ],
          ),
        ),
      )
    );
  }
}