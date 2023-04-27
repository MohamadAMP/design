import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: height * 0.4,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/leaderboard_header.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.11,
                ),
                const Text(
                  "Wallet",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Center(
                  child: Text(
                    "Current Balance",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text(
                    "\$423.25",
                    style: TextStyle(
                      color: Color(0xFF4FB406),
                      fontSize: 64,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 0.75 * MediaQuery.of(context).size.width,
                    height: 0.049 * MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFFFFFFFF),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.leaderboard_outlined,
                              color: Colors.black,
                            ),
                            Text(
                              'Leaderboard Placement',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '6th',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(50.0),
                                elevation: 12,
                                shadowColor: Colors.black,
                                child: SizedBox(
                                  width: 0.14 * width,
                                  height: 0.06 * height,
                                  child: const Center(
                                    child: Text(
                                      "06",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "06 May 2022",
                                    style: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 16,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Deposit",
                                    style: TextStyle(
                                        color: Color(0xFF909090),
                                        fontSize: 16,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            '\$74.35',
                            style: TextStyle(
                                color: Color(0xFF4FB406),
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        height: 40,
                      );
                    },
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
