import 'package:flutter/material.dart';
import 'package:abdo_omar_app/const.dart';
import 'empty_card.dart';
import 'section_card_info.dart';

class SectionsCards extends StatelessWidget {
  const SectionsCards({
    super.key,
    required this.title,
    required this.totalNumber,
    required this.department,
    required this.followNumber,
    required this.pendingNumber,
    required this.waitingNumber,
  });

  final String title;
  final int totalNumber;
  final String department;
  final int followNumber;
  final int pendingNumber;
  final int waitingNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24),
          ),
          EmptyCard(
            color: Colors.white,
            cardChild: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              totalNumber.toString(),
                              style: kSectionNumbersStyle,
                            ),
                            Text(
                              department,
                              style: kSectionTextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black, //color of divider
                    height: 1, //height spacing of divider
                    thickness: 1, //thickness of divier line
                    indent: 25, //spacing at the start of divider
                    endIndent: 25, //spacing at the end of divider
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionCardInfo(
                          followNumber: followNumber,
                          labelText: 'Today’s Follow',
                        ),
                        SectionCardInfo(
                          followNumber: followNumber,
                          labelText: 'Pending',
                        ),
                        SectionCardInfo(
                          followNumber: followNumber,
                          labelText: 'Waiting',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
