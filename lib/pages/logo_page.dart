import 'package:flutter/material.dart';

import 'package:food_hub/pages/welcome_page.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('lib/images/foodhub.png'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_right_alt,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 164, 81),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ));
        },
      ),
    );
  }
}
