import 'package:design/widgets/account_widget.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  var tilesData = [
    {
      "name": "Me",
      "icon": "account_1",
      "text": 'Jennifer Wood',
    },
    {
      "name": "Languages",
      "icon": "account_2",
      "text": "English",
    },
    {
      "name": "Wallet",
      "icon": "account_3",
      "text": "\$432.25",
    },
    {
      "name": "Leaderboard",
      "icon": "account_4",
      "text": "4th Place",
    },
    {
      "name": "Skills",
      "icon": "account_5",
      "text": "17 Assigned Skills",
    },
    {
      "name": "Help",
      "icon": "account_6",
      "text": "Questions",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.11,
            ),
            const Text(
              "Account",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Nunito',
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            ListView.separated(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return AccountWidget(
                  title: tilesData[index]['name']!,
                  icon: tilesData[index]['icon']!,
                  trailingText: tilesData[index]['text']!,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
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
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
