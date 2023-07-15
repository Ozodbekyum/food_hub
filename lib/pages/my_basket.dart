import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: Text('My Basket'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 164, 81),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Text('data'),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            '60,000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 70,
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 255, 164, 81),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
