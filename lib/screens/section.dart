import 'package:abdo_omar_app/screens/all_data.dart';
import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/section_card_info.dart';
import 'package:abdo_omar_app/components/customer_card.dart';
import 'package:abdo_omar_app/components/build_button.dart';
import 'package:abdo_omar_app/components/build_sheet.dart';

List<String> location = ['One', 'Two', 'Three', 'Four'];
List<String> state = ['Five', 'Six', 'Seven', 'Eight'];

class Section extends StatefulWidget {
  const Section({Key? key}) : super(key: key);

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Section',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Section Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
                Row(
                  children: const [
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: SectionCardInfo(
                            followNumber: 19, labelText: 'Today\'s Follow'),
                      ),
                    ),
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: SectionCardInfo(
                            followNumber: 20, labelText: 'Pending'),
                      ),
                    ),
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: SectionCardInfo(
                            followNumber: 21, labelText: 'Waiting'),
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
                          const Text('Results'),
                          EmptyCard(
                            color: const Color(0xFFD3D3D3),
                            cardChild: Column(
                              children: [
                                CustomerCard(
                                  date: '2022-11-22',
                                  dateOfVisits: '2022-11-23',
                                  dateOfCall: '2022-11-23',
                                  customerName: 'صادة طاهر',
                                  agent: 'Mariam Rifai',
                                  email: 'Taharsaba724@Gmail.com',
                                  finalResults: 'Don\'t Call Again',
                                  phone: '+213 663 52 64 16',
                                  city: 'ALG',
                                  phoneStatus: 'Answer',
                                  status: 'Changed His Mind',
                                ),
                              ],
                            ),
                          ),
                          EmptyCard(
                            color: const Color(0xFFD3D3D3),
                            cardChild: Column(
                              children: [
                                CustomerCard(
                                  date: '2022-11-22',
                                  dateOfVisits: '2022-11-23',
                                  dateOfCall: '2022-11-23',
                                  customerName: 'صادة طاهر',
                                  agent: 'Mariam Rifai',
                                  email: 'Taharsaba724@Gmail.com',
                                  finalResults: 'Don\'t Call Again',
                                  phone: '+213 663 52 64 16',
                                  city: 'ALG',
                                  phoneStatus: 'Answer',
                                  status: 'Changed His Mind',
                                ),
                              ],
                            ),
                          ),
                          EmptyCard(
                            color: const Color(0xFFD3D3D3),
                            cardChild: Column(
                              children: [
                                CustomerCard(
                                  date: '2022-11-22',
                                  dateOfVisits: '2022-11-23',
                                  dateOfCall: '2022-11-23',
                                  customerName: 'صادة طاهر',
                                  agent: 'Mariam Rifai',
                                  email: 'Taharsaba724@Gmail.com',
                                  finalResults: 'Don\'t Call Again',
                                  phone: '+213 663 52 64 16',
                                  city: 'ALG',
                                  phoneStatus: 'Answer',
                                  status: 'Changed His Mind',
                                ),
                              ],
                            ),
                          ),
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
                      MaterialPageRoute(builder: (context) => const AllData()),
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
