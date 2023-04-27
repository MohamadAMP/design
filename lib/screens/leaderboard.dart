import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: height * 0.20,
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
                  "Who's in the lead?",
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
                const Text(
                  "The Top 10 is calculated based on speed of service and number of requests answered. Climb the leaderboard and earn incentives.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "NAME",
                      style: TextStyle(
                        color: Color(0xFFF4365D),
                        fontSize: 18,
                        fontFamily: 'Nunito',
                      ),
                    ),
                    Icon(
                      Icons.stars_outlined,
                      color: Color(0xFFF4365D),
                    )
                  ],
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
                        children: const [
                          Text(
                            "Kyle Smith",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "84",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
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
