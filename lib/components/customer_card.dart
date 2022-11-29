import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:abdo_omar_app/const.dart';

// ignore: must_be_immutable
class CustomerCard extends StatefulWidget {
  CustomerCard({
    super.key,
    this.date,
    this.dateOfVisits,
    this.dateOfCall,
    this.customerName,
    this.agent,
    this.email,
    this.finalResults,
    this.phone,
    this.city,
    this.phoneStatus,
    this.status,
  });
  String? date;
  String? dateOfVisits;
  String? dateOfCall;
  String? customerName;
  String? agent;
  String? email;
  String? finalResults;
  String? phone;
  String? city;
  String? phoneStatus;
  String? status;

  @override
  State<CustomerCard> createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('DATE', style: cardMainTextStyle),
                  Text(widget.date!),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Date Of Visits',
                    style: cardMainTextStyle,
                  ),
                  Text(widget.dateOfVisits!),
                ],
              ),
              Column(
                children: [
                  const Text('Date Of CALL', style: cardMainTextStyle),
                  Text(widget.dateOfCall!),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Final Results', style: cardMainTextStyle),
                  Text(widget.finalResults!),
                ],
              ),
              Column(
                children: [
                  const Text('CUSTOMER', style: cardMainTextStyle),
                  Text(widget.customerName!),
                ],
              ),
              Column(
                children: [
                  const Text('City', style: cardMainTextStyle),
                  Text(widget.city!),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    'Phone',
                    style: cardMainTextStyle,
                  ),
                  Text(widget.phone!),
                ],
              ),
              Column(
                children: [
                  const Text('E-mail', style: cardMainTextStyle),
                  Text(widget.email!),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Phone Status', style: cardMainTextStyle),
                  Text(widget.phoneStatus!),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Status',
                    style: cardMainTextStyle,
                  ),
                  Text(widget.status!),
                ],
              ),
              Column(
                children: [
                  const Text('Optian', style: cardMainTextStyle),
                  Icon(
                    FontAwesomeIcons.eye,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
