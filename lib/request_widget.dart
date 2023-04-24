import 'package:design/update_request.dart';
import 'package:flutter/material.dart';

class RequestCard extends StatefulWidget {
  const RequestCard({super.key});

  @override
  State<RequestCard> createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 0.63 * MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/request_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(
                0.08 * MediaQuery.of(context).size.width,
                0.02 * MediaQuery.of(context).size.height,
                0,
                0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFF292929),
                  ),
                  Text(
                    'ROOM',
                    style: TextStyle(
                        color: Color(0xFF292929),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Text(
                '728',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 42,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.037,
              ),
              const Text(
                '''• Empty Garbage \n
• Extra Blanket \n
• Extra Pillow\n''',
                style: TextStyle(
                  color: Color(0xFF292929),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '''+ More Items''',
                style: TextStyle(
                    color: Color(0xFF292929),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.017,
              ),
              Container(
                width: 0.45 * MediaQuery.of(context).size.width,
                height: 0.069 * MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateRequest()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Accept',
                    style: TextStyle(
                        color: Color(0xFFF4365D),
                        fontSize: 24,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
          child: RichText(
            text: TextSpan(children: [
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(8, -44),
                  child: const Text(
                    '\$',
                    //superscript is usually smaller in size
                    textScaleFactor: 0.7,
                    style: TextStyle(
                        color: Color(0xFFF4365D),
                        fontSize: 40,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const TextSpan(
                text: '4',
                style: TextStyle(
                    color: Color(0xFFF4365D),
                    fontSize: 90,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
