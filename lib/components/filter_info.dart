import 'package:flutter/material.dart';

// List<String> location = ['One', 'Two', 'Three', 'Four'];

class FilterInfo extends StatelessWidget {
  const FilterInfo({
    super.key,
    required this.filterName,
    required this.filterHint,
    required this.location,
  });
  final String filterName;
  final String filterHint;
  final List<String> location;
  @override
  Widget build(BuildContext context) {
    String? dropdownValue;
    return Column(
      children: [
        Text(filterName),
        DropdownButton<String>(
          hint: Text(filterHint),
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          items: location.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        )
      ],
    );
  }

  void setState(Null Function() param0) {}
}
