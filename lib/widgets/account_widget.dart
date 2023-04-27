import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget {
  final dynamic icon;
  final dynamic title;
  final dynamic trailingText;
  const AccountWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.trailingText});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12,
      shadowColor: Colors.black,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: ListTile(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        title: Row(
          children: [
            ImageIcon(
              AssetImage("assets/icons/${widget.icon}.png"),
              color: const Color(0xFFF4365D),
              size: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Nunito',
              ),
            ),
          ],
        ),
        trailing: Text(
          widget.trailingText,
          style: const TextStyle(
            color: Color(0xFF909090),
            fontSize: 18,
            fontFamily: 'Nunito',
          ),
        ),
      ),
    );
  }
}
