import 'package:abdo_omar_app/screens/reports.dart';
import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/call_record_follows.dart';
import 'package:abdo_omar_app/components/record_field.dart';
import 'package:abdo_omar_app/components/build_button.dart';
import 'package:abdo_omar_app/screens/attendence.dart';
import 'package:abdo_omar_app/components/filter_info_row.dart';

class CallRecord extends StatefulWidget {
  const CallRecord({Key? key}) : super(key: key);

  @override
  State<CallRecord> createState() => _CallRecordState();
}

class _CallRecordState extends State<CallRecord> {
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
            appbarText: 'Call Record',
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
                                  'Table',
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
                                        formKey: formKey2,
                                        fieldName: 'Updated At',
                                        fieldHint: 'Enter Updated At',
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
                                        fieldName: 'Email',
                                        fieldHint: 'Enter your email',
                                      ),
                                      CallRecordField(
                                        formKey: formKey6,
                                        fieldName: 'City',
                                        fieldHint: 'Enter City',
                                      ),
                                      CallRecordField(
                                        formKey: formKey7,
                                        fieldName: 'Job Type',
                                        fieldHint: 'Enter Job Type',
                                      ),
                                      CallRecordField(
                                        formKey: formKey8,
                                        fieldName: 'Agent',
                                        fieldHint: 'Enter Agent',
                                      ),
                                      CallRecordField(
                                        formKey: formKey9,
                                        fieldName: 'Section',
                                        fieldHint: 'Enter Section',
                                      ),
                                      FilterInfoRow(
                                        filterName: 'Phone Status',
                                        filterHint: 'Select a Phone Status',
                                        location: state,
                                      ),
                                      FilterInfoRow(
                                        filterName: 'Customer Status',
                                        filterHint: 'Select a Status',
                                        location: state,
                                      ),
                                      CallRecordField(
                                        formKey: formKey13,
                                        fieldName: 'Date Visit./Follow',
                                        fieldHint: 'Mm/Dd/Yyyy',
                                      ),
                                      CallRecordField(
                                        formKey: formKey14,
                                        fieldName: 'Date Visit Note',
                                        fieldHint: 'Enter Date Visit Note',
                                      ),
                                      FilterInfoRow(
                                        filterName: 'Final Result',
                                        filterHint: 'Select Final Result',
                                        location: state,
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
                          cardChild: EmptyCard(
                            color: Colors.white,
                            cardChild: Column(
                              children: [
                                CallRecordField(
                                  formKey: formKey16,
                                  fieldName: 'Customer Experience',
                                  fieldHint: 'Content',
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: BuildButton(
                                    text: 'Add Customer Experience',
                                    icon: Icons.add,
                                    onClicked: () => showModalBottomSheet(
                                        context: context,
                                        builder: (context) => Container()),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    CallRecordFollows(
                                      customerComment:
                                          'مدرب و مهتم بالتدريب معنا و بالعضوية رح نتواصل',
                                      followNumber: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                      MaterialPageRoute(builder: (context) => const Reports()),
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
