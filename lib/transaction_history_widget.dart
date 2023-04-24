import 'package:flutter/material.dart';

class TransactionHistoryWidget extends StatefulWidget {
  const TransactionHistoryWidget({super.key});

  @override
  State<TransactionHistoryWidget> createState() =>
      _TransactionHistoryWidgetState();
}

class _TransactionHistoryWidgetState extends State<TransactionHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: 0.011 * MediaQuery.of(context).size.width),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Super Request (Rm 115)",
                  style: TextStyle(
                      color: Color(0xFF292929),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Received 04:32 PM",
                  style: TextStyle(
                      color: Color(0xFF909090),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              '+ \$4.00',
              style: TextStyle(
                  color: Color(0xFF4FB406),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
