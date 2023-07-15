import 'package:flutter/material.dart';
import 'package:food_hub/pages/food_containers.dart';
import 'package:food_hub/pages/my_basket.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.short_text_sharp,
          size: 35,
          color: Colors.black,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyBasket(),
                      ));
                },
                icon: const Icon(
                  Icons.shopping_basket,
                ),
                color: const Color.fromARGB(255, 255, 164, 81),
              ),
              const Text(
                'My basket',
                style: TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello Tony, What fruit salad \ncombo do you want today?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for fruit salad combos',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Recommended Combo',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const FoodContainers(
                      img: 'lib/images/foodhub.png',
                      foodName: 'honey',
                      foodCost: '2,000',
                      containerColor: Colors.white);
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hottest',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(
                  'Popular',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  'New combo',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  'Top',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ],
            ),
            // const Divider(
            //   color: Color.fromARGB(255, 255, 164, 81),
            //   thickness: 3,
            //   endIndent: 350,
            // ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const FoodContainers(
                      img: 'lib/images/foodhub.png',
                      foodName: 'honey',
                      foodCost: '2,000',
                      containerColor: Colors.yellow);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
