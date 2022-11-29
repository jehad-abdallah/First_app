import 'package:abdo_omar_app/components/filter_info.dart';
import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/record_field.dart';
import 'package:abdo_omar_app/components/build_button.dart';
import 'package:abdo_omar_app/screens/billing.dart';
import 'package:abdo_omar_app/components/filter_info_row.dart';

import 'all_data.dart';

class AttendShow extends StatefulWidget {
  const AttendShow({Key? key}) : super(key: key);

  @override
  State<AttendShow> createState() => _AttendShowState();
}

class _AttendShowState extends State<AttendShow> {
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey11 = GlobalKey<FormState>();
  final formKey12 = GlobalKey<FormState>();
  final formKey13 = GlobalKey<FormState>();
  final formKey14 = GlobalKey<FormState>();
  final formKey15 = GlobalKey<FormState>();
  final formKey16 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Attend Show',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                EmptyCard(
                  color: Colors.white,
                  cardChild: Center(
                    child: Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: EmptyCard(
                            color: const Color(0xFFD9D9D9),
                            cardChild: Column(
                              children: [
                                const Text(
                                  '#ID 150',
                                  style: kAppbarTextStyle,
                                ),
                                EmptyCard(
                                  color: Colors.white,
                                  cardChild: Column(
                                    children: [
                                      CallRecordField(
                                        formKey: formKey,
                                        fieldName: 'Date',
                                        fieldHint: 'Enter The Date',
                                      ),
                                      CallRecordField(
                                        formKey: formKey3,
                                        fieldName: 'Name',
                                        fieldHint: 'Enter Name',
                                      ),
                                      CallRecordField(
                                        formKey: formKey4,
                                        fieldName: 'Phone:',
                                        fieldHint: 'Enter The Phone',
                                      ),
                                      CallRecordField(
                                        formKey: formKey5,
                                        fieldName: 'Total Payment',
                                        fieldHint: 'Enter Payment',
                                      ),
                                      CallRecordField(
                                        formKey: formKey6,
                                        fieldName: 'Paid',
                                        fieldHint: '0',
                                      ),
                                      CallRecordField(
                                        formKey: formKey7,
                                        fieldName: 'The Remaining',
                                        fieldHint: '0',
                                      ),
                                      CallRecordField(
                                        formKey: formKey8,
                                        fieldName: 'Agent',
                                        fieldHint: 'Enter Agent',
                                      ),
                                      FilterInfoRow(
                                          filterName: 'Order Include',
                                          filterHint: 'With Or Without book',
                                          location: location),
                                      FilterInfoRow(
                                          filterName: 'Shipping',
                                          filterHint: 'Shipping Status',
                                          location: location),
                                      CallRecordField(
                                        formKey: formKey11,
                                        fieldName: 'Address',
                                        fieldHint: 'Enter Customer Address',
                                      ),
                                      CallRecordField(
                                        formKey: formKey12,
                                        fieldName: 'Comment',
                                        fieldHint: 'Enter Comment',
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: BuildButton(
                                        text: 'Save',
                                        icon: Icons.save,
                                        onClicked: () => showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container()),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: BuildButton(
                                        text: 'Save and back',
                                        icon: Icons.save,
                                        onClicked: () => showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container()),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        EmptyCard(
                          color: const Color(0xFFD9D9D9),
                          cardChild: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Add Attend / Absence'),
                              ),
                              EmptyCard(
                                color: Colors.white,
                                cardChild: Column(
                                  children: [
                                    CallRecordField(
                                      formKey: formKey12,
                                      fieldName: 'Comment',
                                      fieldHint: 'Enter Comment',
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FilterInfo(
                                              filterName: 'Absence',
                                              filterHint: 'Select Option',
                                              location: location),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: BuildButton(
                                            text: 'Add Attendance',
                                            icon: Icons.payment,
                                            onClicked: () =>
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) =>
                                                        Container()),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Billing()),
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
