import 'package:flutter/material.dart';
import 'package:abdo_omar_app/const.dart';

class SectionCardInfo extends StatefulWidget {
  const SectionCardInfo({
    Key? key,
    required this.followNumber,
    required this.labelText,
  }) : super(key: key);

  final int followNumber;
  final String labelText;

  @override
  State<SectionCardInfo> createState() => _SectionCardInfoState();
}

class _SectionCardInfoState extends State<SectionCardInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Column(
        children: [
          Text(
            widget.followNumber.toString(),
            style: kSectionNumbersStyle,
          ),
          Text(
            widget.labelText,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
