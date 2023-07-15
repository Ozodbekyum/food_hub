import 'package:flutter/material.dart';
import 'package:food_hub/pages/home_page.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 164, 81),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset('lib/images/food_basket2.png'),
            ),
          ),
          Container(
            height: 330,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'What is your firstname?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        hintText: 'Tony',
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color.fromARGB(255, 255, 164, 81),
                        ),
                        elevation: MaterialStateProperty.all(0)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: const Text(
                      'Start Ordering',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
