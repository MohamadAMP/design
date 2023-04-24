import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Tips",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Nunito',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 12,
              shadowColor: Colors.black,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 175,
                child: Row(children: [
                  const Flexible(
                    child: Text(
                      "Learn why up-selling is your BFF.",
                      style: TextStyle(
                          color: Color(0xFF672C8C),
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset("assets/icons/dollars.png")
                ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
