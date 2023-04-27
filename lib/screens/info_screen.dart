import 'package:flutter/material.dart';

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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.11,
              ),
              const Text(
                "Help",
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
              const Text(
                "You’re one step away from concierge support.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFFF4365D),
                    fontSize: 32,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                "Praesent sollicitudin felis vitae porttitor varius. Vestibulum pulvinar urna ex, at suscipit turpis interdum sed. Pellentesque aliquet, neque sed feugiat mattis, mi augue hendrerit nunc, sodales vehicula nulla tellus non ligula. Nulla suscipit neque ut mi sagittis, sollicitudin rhoncus dolor dignissim. Etiam ornare commodo lectus et malesuada. Aenean egestas tellus sit amet tellus pulvinar luctus. Nam convallis vitae orci.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Nunito',
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                "Pending Copy",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.06,
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
                        const Color(0xFFFCEAE7),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Button copy pending',
                      style: TextStyle(
                          color: Color(0xFF292929),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
