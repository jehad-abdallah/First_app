import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/reports_card.dart';
import 'package:abdo_omar_app/screens/attendence.dart';
import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/section_card_info.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Reports',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Call Record Reports',
                        style: kAppbarTextStyle,
                      ),
                    ),
                  ],
                ),
                EmptyCard(
                  color: Colors.white,
                  cardChild: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                          'Total',
                          style: kAppbarTextStyle,
                        ),
                      ),
                      EmptyCard(
                        color: const Color(0xFFD9D9D9),
                        cardChild: ReportsCard(
                          department: 'General Information',
                          reportChild: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Today\'s Follow-Ups',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Pending Calls',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Waiting For Your Call',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Number Of Reg',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      EmptyCard(
                        color: const Color(0xFFD9D9D9),
                        cardChild: ReportsCard(
                          department: 'Phone Status',
                          reportChild: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Answered',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Not Reached',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Closed',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      EmptyCard(
                        color: const Color(0xFFD9D9D9),
                        cardChild: ReportsCard(
                          department: 'Customer Status',
                          reportChild: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Blanks',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Wrong Number',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Changed His Mind',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Pending & Has\n Follow Up',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Interested & Has\n Follow Up',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      EmptyCard(
                        color: const Color(0xFFD9D9D9),
                        cardChild: ReportsCard(
                          department: 'Customer Status',
                          reportChild: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Reserved',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Interview',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Pending Approval',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Don\'t Call Again',
                                  ),
                                  SectionCardInfo(
                                    followNumber: 19,
                                    labelText: 'Database',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        child: const Text('Open route'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Attendance()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
