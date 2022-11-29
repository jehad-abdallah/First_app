import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/section_cards.dart';
import 'package:abdo_omar_app/screens/section.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Sections',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('All Sections'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: FloatingActionButton.extended(
                        label: const Text(
                          'Add record',
                          style: TextStyle(color: Colors.black),
                        ), // <-- Text
                        backgroundColor: Colors.white,
                        icon: const Icon(
                          // <-- Icon
                          Icons.plus_one,
                          size: 24.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SectionsCards(
                  title: 'The Monthly Data',
                  totalNumber: 19,
                  department: 'International Membership',
                  followNumber: 20,
                  pendingNumber: 21,
                  waitingNumber: 22,
                ),
                const SectionsCards(
                  title: 'The Monthly Data',
                  totalNumber: 19,
                  department: 'International Membership',
                  followNumber: 20,
                  pendingNumber: 21,
                  waitingNumber: 22,
                ),
                const SectionsCards(
                  title: 'The Monthly Data',
                  totalNumber: 19,
                  department: 'International Membership',
                  followNumber: 20,
                  pendingNumber: 21,
                  waitingNumber: 22,
                ),
                const SectionsCards(
                  title: 'The Monthly Data',
                  totalNumber: 19,
                  department: 'International Membership',
                  followNumber: 20,
                  pendingNumber: 21,
                  waitingNumber: 22,
                ),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Section()),
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
