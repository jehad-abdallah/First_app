import 'package:flutter/material.dart';

class CallRecordField extends StatefulWidget {
  const CallRecordField({
    super.key,
    required this.formKey,
    required this.fieldName,
    this.fieldHint,
    this.choose,
  });

  final GlobalKey<FormState> formKey;
  final String fieldName;
  final String? fieldHint;
  final Widget? choose;
  @override
  State<CallRecordField> createState() => _CallRecordFieldState();
}

class _CallRecordFieldState extends State<CallRecordField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: Text(
              widget.fieldName,
            ),
          ),
        ),
        Expanded(
          child: Form(
            key: widget.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: widget.fieldHint,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          child: widget.choose,
        ),
      ],
    );
  }
}
