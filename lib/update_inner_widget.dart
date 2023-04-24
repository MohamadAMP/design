import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UpdateInnerWidget extends StatefulWidget {
  const UpdateInnerWidget({super.key});

  @override
  State<UpdateInnerWidget> createState() => _UpdateInnerWidgetState();
}

class _UpdateInnerWidgetState extends State<UpdateInnerWidget> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Item Name",
                style: TextStyle(
                    color: Color(0xFF292929),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Short description if needed",
                style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter != 0 ? counter-- : counter = counter;
                    });
                  },
                  icon: const Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xFF672C8C),
                  )),
              Text(
                counter.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: const Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xFF672C8C),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
