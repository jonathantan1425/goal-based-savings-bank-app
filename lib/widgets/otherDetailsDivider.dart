import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtherDetailsDivider extends StatefulWidget {
  @override
  State<OtherDetailsDivider> createState() => _OtherDetailsDividerState();
}

class _OtherDetailsDividerState extends State<OtherDetailsDivider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        color: Colors.grey,
        thickness: 0.5,
        indent: 16,
        endIndent: 16,
      )
    );
  }
}
