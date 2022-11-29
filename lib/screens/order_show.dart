import 'package:abdo_omar_app/screens/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:abdo_omar_app/components/bottom_bar.dart';
import 'package:abdo_omar_app/const.dart';
import 'package:abdo_omar_app/components/appbar.dart';
import 'package:abdo_omar_app/components/empty_card.dart';
import 'package:abdo_omar_app/components/filter_info.dart';
import 'all_data.dart';
import 'package:abdo_omar_app/components/build_button.dart';

class OrderShow extends StatefulWidget {
  const OrderShow({Key? key}) : super(key: key);

  @override
  State<OrderShow> createState() => _OrderShowState();
}

class _OrderShowState extends State<OrderShow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundMainColor,
          appBar: const AppBarWidget(
            appbarText: 'Order Show',
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // const Text('Results'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const OrderShowColumn(
                                  mainInfo: '#',
                                  info: '1',
                                ),
                                const OrderShowColumn(
                                  mainInfo: 'REMINDER DATE',
                                  info: '2022-12-18',
                                ),
                                const OrderShowColumn(
                                  mainInfo: 'AMOUNT',
                                  info: '250',
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text('ACTION'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            backgroundColor: Colors.blue),
                                        onPressed: () {},
                                        child: const Text('Gradient'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Text('Amount'),
                                  SizedBox(
                                    width: 150,
                                    height: 30,
                                    child: TextField(
                                      // controller: nameController,
                                      decoration: InputDecoration(
                                        // border: OutlineInputBorder(),
                                        labelText: 'Amount of money',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FilterInfo(
                                filterName: 'Payment method',
                                filterHint: 'Select a Vehicle',
                                location: state,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FilterInfo(
                                filterName: 'Type ',
                                filterHint: 'Select a Vehicle',
                                location: state,
                              ),
                              Column(
                                children: const [
                                  Text('Reminder Date'),
                                  SizedBox(
                                    width: 150,
                                    height: 30,
                                    child: TextField(
                                      // controller: nameController,
                                      decoration: InputDecoration(
                                        // border: OutlineInputBorder(),
                                        labelText: 'mm/dd/yyyy',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BuildButton(
                                    text: 'Add Payment',
                                    onClicked: () {},
                                    icon: Icons.payment),
                                BuildButton(
                                    text: 'Print Invoice',
                                    onClicked: () {},
                                    icon: Icons.print),
                              ],
                            ),
                          )
                          // const HorizontalTable(),
                        ],
                      ),
                    ),
                  ),
                ),
                EmptyCard(
                  color: Colors.white,
                  cardChild: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 150,
                              child: Image(
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'INVOICE-2469',
                                  style: kAppbarTextStyle,
                                ),
                                Text(
                                  '2022-11-29',
                                  style: kAppbarTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 300,
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Text('From: Dr.Abdelrahman Omar'),
                                Text('Turkey'),
                                Text('Phone: +90542541265'),
                                Text('Email: \nAbdelrahman@Omar.Training'),
                              ],
                            ),
                            Column(
                              children: [
                                const Text('To: Bouthaina Meouhoob'),
                                const Text('Istanbul'),
                                Row(
                                  children: const [
                                    Text('Phone: +90542541265'),
                                    SizedBox(
                                      height: 10,
                                      child: Icon(
                                        Icons.whatsapp,
                                      ),
                                    )
                                  ],
                                ),
                                const Text('Email: \nMbosy0194@Gmail.Com'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 300,
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Text('THANK YOU'),
                                Text('Dr. Abdelrahman Omar'),
                                SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: Image(
                                      image: NetworkImage(
                                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Total Amount: 700\$',
                                      ),
                                      Text(
                                        'Total Paid: 350\$',
                                      ),
                                      Text(
                                        'Total Remaining: 350\$',
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red,
                                          width: 2.0,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.red),
                                  // color: Colors.red,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Next Batch Date: 2022-11-28',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                EmptyCard(
                  color: Colors.white,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            FilterInfo(
                              filterName: 'Status:',
                              filterHint: 'Select a Vehicle',
                              location: state,
                            ),
                            FilterInfo(
                              filterName: 'Section:',
                              filterHint: 'Select a Vehicle',
                              location: state,
                            ),
                            BuildButton(
                                text: 'Change Status',
                                onClicked: () {},
                                icon: Icons.payment),
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
                          builder: (context) => const DashboardPage()),
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

class OrderShowColumn extends StatelessWidget {
  const OrderShowColumn(
      {super.key, required this.mainInfo, required this.info});
  final String mainInfo;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(mainInfo),
        const SizedBox(
          height: 25,
        ),
        Text(info),
      ],
    );
  }
}
