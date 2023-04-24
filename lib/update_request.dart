import 'package:design/update_request_items.dart';
import 'package:flutter/material.dart';

class UpdateRequest extends StatefulWidget {
  const UpdateRequest({super.key});

  @override
  State<UpdateRequest> createState() => _UpdateRequestState();
}

class _UpdateRequestState extends State<UpdateRequest> {
  var tilesData = [
    {
      "name": "PATIENT ROOM",
      "icon": "patient_room",
      "color": const Color(0xFFF4365D),
    },
    {
      "name": "FOOD & BEVERAGES",
      "icon": "food",
      "color": const Color(0xFFFC623D),
    },
    {
      "name": "PERSONAL ITEMS",
      "icon": "pillows",
      "color": const Color(0xFF672C8C),
    },
    {
      "name": "PERSONAL REQUEST",
      "icon": "personal_request",
      "color": const Color(0xFFF4365D),
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomSheet: Material(
        elevation: 24,
        shadowColor: Colors.black,
        child: Container(
          height: 150,
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: width * 0.8,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFF4365D),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Add (${0}) Items',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.11 * height,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 0.03 * height,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Update For",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Room 728",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(-8, -58),
                              child: const Text(
                                'Items',
                                //superscript is usually smaller in size
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Color(0xFFF4365D),
                                    fontSize: 22,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const TextSpan(
                            text: '0',
                            style: TextStyle(
                                color: Color(0xFFF4365D),
                                fontSize: 90,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return UpdateRequestItems(
                  title: tilesData[index]['name']!,
                  icon: tilesData[index]['icon']!,
                  color: tilesData[index]['color']!,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
