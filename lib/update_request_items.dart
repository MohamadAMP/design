import 'package:design/transaction_history_widget.dart';
import 'package:design/update_inner_widget.dart';
import 'package:flutter/material.dart';

class UpdateRequestItems extends StatefulWidget {
  final dynamic icon;
  final dynamic title;
  final dynamic color;
  const UpdateRequestItems(
      {required this.icon,
      required this.title,
      super.key,
      required this.color});

  @override
  State<UpdateRequestItems> createState() => _UpdateRequestItemsState();
}

class _UpdateRequestItemsState extends State<UpdateRequestItems> {
  var isExpanded = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 0.04 * width),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: widget.color.withOpacity(0.4),
        trailing: isExpanded
            ? const ImageIcon(AssetImage("assets/icons/arrow_down.png"))
            : const ImageIcon(AssetImage("assets/icons/arrow_forward.png")),
        onExpansionChanged: (bool expanded) {
          setState(() => isExpanded = expanded);
        },
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        collapsedTextColor: Colors.black,
        textColor: Colors.black,
        title: Container(
          // color:
          //     isExpanded ? widget.color.withOpacity(0.4) : Colors.transparent,
          child: Row(
            children: [
              ImageIcon(
                AssetImage("assets/icons/${widget.icon}.png"),
                color: widget.color,
                size: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.title),
            ],
          ),
        ),
        childrenPadding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          ListView.separated(
            padding: const EdgeInsets.all(0),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return UpdateInnerWidget();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
          ),
        ],
      ),
    );
  }
}
