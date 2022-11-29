import 'package:flutter/material.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import '../components/personal_card.dart';
import '../components/empty_card.dart';
import '../components/card_info.dart';
import '../components/bottom_bar.dart';
import '../components/customer_card.dart';
import 'package:abdo_omar_app/screens/sections.dart';
import 'call_logs.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Dashboard',
          ),
          body: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                  child: const PersonalCard(
                    imageName: 'gehad',
                    name: 'Gehad Abdallah',
                    day: 'Good Afternoon',
                    icon: Icons.sunny,
                    jobTitle: 'FLUTTER DEVELOPER',
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: CardInfo(
                          cardTitle: 'Daily Target',
                          percent: 50,
                          performance: 'Bad Performance',
                          performanceStatus: 'Keep Going',
                          remainingCalls: '91',
                          newCalls: '20',
                        ),
                      ),
                    ),
                    Expanded(
                      child: EmptyCard(
                        color: Colors.white,
                        cardChild: CardInfo(
                          cardTitle: 'Monthly Target',
                          percent: 60,
                          performance: 'Bad Performance',
                          performanceStatus: 'Keep Going',
                          remainingCalls: '91',
                          newCalls: '20',
                        ),
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
                          const Text('Today Follows up'),
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: const Text('Next Page'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sections()),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Call Logs'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CallLogs()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
