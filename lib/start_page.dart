import 'package:design/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/helen_logo.png",
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Log In',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
