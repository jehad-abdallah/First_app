import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/section_card_info.dart';
import 'package:abdo_omar_app/components/build_button.dart';
import 'package:abdo_omar_app/components/filter_info.dart';
import 'package:abdo_omar_app/components/table.dart';
import 'attend_show.dart';
import 'package:abdo_omar_app/components/build_sheet.dart';

List<String> state = ['Five', 'Six', 'Seven', 'Eight'];

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Attendance',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: SectionCardInfo(
                            followNumber: 21,
                            labelText:
                                'NUMBER OF CUSTOMER HAS REMINDER TO MAKE PAYMENT'),
                      ),
                    ),
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: SectionCardInfo(
                            followNumber: 21,
                            labelText:
                                'NUMBER OF CUSTOMER HAS REMINDER TO MAKE PAYMENT TODAY'),
                      ),
                    ),
                  ],
                ),
                EmptyCard(
                  color: Colors.white,
                  cardChild: Center(
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(
                        children: [
                          // const Text('Results'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FilterInfo(
                                  filterName: 'Section name',
                                  filterHint: 'Select a Vehicle',
                                  location: state,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                child: BuildButton(
                                  text: 'Filter',
                                  icon: Icons.search,
                                  onClicked: () => showModalBottomSheet(
                                      context: context,
                                      builder: (context) => const BuildSheet()),
                                ),
                              ),
                            ],
                          ),
                          const TableTest(),
                          // const HorizontalTable(),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AttendShow()),
                    );
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
