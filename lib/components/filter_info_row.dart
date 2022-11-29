import 'package:flutter/material.dart';

// List<String> location = ['One', 'Two', 'Three', 'Four'];

class FilterInfoRow extends StatelessWidget {
  const FilterInfoRow({
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          SizedBox(
            width: 110,
            child: Text(filterName),
          ),
          Expanded(
            child: DropdownButton<String>(
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
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
