import 'package:flutter/material.dart';
import 'package:abdo_omar_app/const.dart';

class ReportsCard extends StatefulWidget {
  const ReportsCard({
    super.key,
    required this.department,
    required this.reportChild,
  });

  final String department;
  final Widget? reportChild;
  @override
  State<ReportsCard> createState() => _ReportsCardState();
}

class _ReportsCardState extends State<ReportsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.department,
                            style: kReportTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black, //color of divider
                  height: 1, //height spacing of divider
                  thickness: 1, //thickness of divider line
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: widget.reportChild,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
