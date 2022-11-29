import 'package:flutter/material.dart';
import '../screens/all_data.dart';
import 'filter_info.dart';

class BuildSheet extends StatefulWidget {
  const BuildSheet({Key? key}) : super(key: key);

  @override
  State<BuildSheet> createState() => _BuildSheetState();
}

class _BuildSheetState extends State<BuildSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterInfo(
              filterName: 'By Country',
              filterHint: 'Select a Vehicle',
              location: location,
            ),
            FilterInfo(
              filterName: 'By State',
              filterHint: 'Select a Vehicle',
              location: state,
            ),
          ],
        ),
      ],
    );
  }
}
