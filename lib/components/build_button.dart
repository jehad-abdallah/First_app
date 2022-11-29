import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton(
      {super.key,
      required this.text,
      required this.onClicked,
      required this.icon});
  final String text;
  final VoidCallback onClicked;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.blue, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: onClicked,
        child: Row(
          children: [
            Icon(
              icon,
//         Icons.search,
              size: 24.0,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
