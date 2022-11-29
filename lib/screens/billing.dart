import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import '../components/build_sheet.dart';
import 'all_data.dart';
import 'package:abdo_omar_app/components/build_button.dart';
import 'package:abdo_omar_app/components/filter_info.dart';
import 'package:abdo_omar_app/components/billing_table.dart';
import 'package:abdo_omar_app/screens/order_show.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Billing',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
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
                                  filterHint: 'Select a Section',
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
                          const BillingTable(),
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
                          builder: (context) => const OrderShow()),
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
