import 'package:design/request_widget.dart';
import 'package:design/transaction_history_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var status = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.11 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hello, Jennifer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text(
                          "You’re on duty",
                          style: TextStyle(
                              color: Color(0xFFF4365D),
                              fontSize: 18,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 0.03 * width,
                        ),
                        FlutterSwitch(
                          width: 0.11 * width,
                          height: 0.03 * height,
                          toggleSize: 25.0,
                          value: status,
                          borderRadius: 30.0,
                          // padding: 8.0,
                          showOnOff: true,
                          activeColor: const Color(0xFFF4365D),
                          activeText: '',
                          inactiveText: '',
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: const [
                    ImageIcon(
                      AssetImage("assets/icons/purse.png"),
                      size: 42,
                      color: Color(0xFFAFAFAF),
                    ),
                    Text(
                      '\$423.25',
                      style: TextStyle(
                          color: Color(0xFF292929),
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              "Requests",
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
            SizedBox(
              height: 0.42 * height,
              child: ListView.separated(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const RequestCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 0.04 * width,
                  );
                },
              ),
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
            const Text(
              "Transaction History",
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
            ListView.separated(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const TransactionHistoryWidget();
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 0.02 * height,
                );
              },
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Center(
              child: Container(
                width: 0.55 * MediaQuery.of(context).size.width,
                height: 0.049 * MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFEDEDED),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'See all transactions',
                    style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
