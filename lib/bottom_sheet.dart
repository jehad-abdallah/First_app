// import 'package:flutter/material.dart';
//
// List<String> location = ['One', 'Two', 'Three', 'Four'];
//
// class BottomSheetPage extends StatefulWidget {
//   const BottomSheetPage({Key? key}) : super(key: key);
//
//   @override
//   State<BottomSheetPage> createState() => _BottomSheetPageState();
// }
//
// class _BottomSheetPageState extends State<BottomSheetPage> {
//   var dropdownValue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('model Bottom Sheet'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             buildButton(
//               text: 'Simple Sheet',
//               onClicked: () => showModalBottomSheet(
//                   context: context, builder: (context) => buildSheet()),
//             ),
//             const SizedBox(height: 20),
//             buildButton(
//               text: 'Full Screen Sheet',
//               onClicked: () {},
//             ),
//             const SizedBox(height: 20),
//             buildButton(
//               text: 'Scrollable Sheet',
//               onClicked: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildButton({
//     required String text,
//     required VoidCallback onClicked,
//   }) =>
//       FloatingActionButton.extended(
//         label: Text(
//           text,
//           style: const TextStyle(color: Colors.black),
//         ), // <-- Text
//         onPressed: onClicked,
//         backgroundColor: Colors.white,
//         icon: const Icon(
// // <-- Icon
//           Icons.search,
//           size: 24.0,
//           color: Colors.grey,
//         ),
//       );
//   Widget buildSheet() => Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   const Text('By Country'),
//                   DropdownButton<String>(
//                     hint: Text('Select a vehicle '),
//                     value: dropdownValue,
//                     icon: const Icon(Icons.arrow_downward),
//                     iconSize: 24,
//                     elevation: 16,
//                     items:
//                         location.map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         dropdownValue = newValue!;
//                       });
//                     },
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   Text('Phone Status}'),
//                   DropdownButton<String>(
//                     hint: Text('Select a vehicle '),
//                     items: <String>['A', 'B', 'C', 'D'].map((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     onChanged: (_) {},
//                   ),
//                 ],
//               ),
//             ],
//           )
//         ],
//       );
// }
