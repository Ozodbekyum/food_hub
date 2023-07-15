import 'package:flutter/material.dart';

class FoodContainers extends StatelessWidget {
  final String img;
  final String foodName;
  final String foodCost;
  final Color containerColor;
  const FoodContainers({
    super.key,
    required this.img,
    required this.foodName,
    required this.foodCost,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: containerColor,
            boxShadow: [BoxShadow(offset: Offset(0, 1), blurRadius: 0.1)]),
        child: Column(
          children: [
            Center(child: Image.asset(img)),
            Text(foodName),
            Row(
              children: [
                Icon(Icons.attach_money_outlined),
                Text(foodCost),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.add)
              ],
            )
          ],
        ),
      ),
    );
  }
}
