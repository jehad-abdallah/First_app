import 'package:flutter/material.dart';
import 'package:abdo_omar_app/const.dart';

class PersonalCard extends StatefulWidget {
  const PersonalCard(
      {super.key,
      required this.imageName,
      required this.name,
      required this.day,
      required this.icon,
      required this.jobTitle});
  final String imageName;
  final String name;
  final String day;
  final IconData icon;
  final String jobTitle;

  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/${widget.imageName}.jpg'),
          backgroundColor: Colors.transparent,
        ),
        Text(
          widget.name,
          style: kNameTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.day,
              style: kJobTitle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                widget.icon,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        const Text(
          'FLUTTER DEVELOPER',
          style: kJobTitle,
        ),
      ],
    );
  }
}
