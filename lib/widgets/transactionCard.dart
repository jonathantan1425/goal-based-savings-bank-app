import 'package:app/screens/transactionPage.dart';
import 'package:app/utilities/themeStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String letter;
  final Color color;
  final String type;

  TransactionCard({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.letter,
    required this.color,
    required this.type,
  });

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => TransactionPage(
                title: widget.title,
                subtitle: widget.subtitle,
                amount: widget.amount,
                letter: widget.letter,
                color: widget.color,
                type: widget.type,
              )),
              );
        },
        child: Container(
            height: 62.0,
            width: 343.0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                widget.letter,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )),
                            )),
                        SizedBox(width: 16.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.title,
                                style: ThemeStyles.otherDetailsPrimary),
                            Text(widget.subtitle,
                                style: ThemeStyles.otherDetailsSecondary),
                          ],
                        )
                      ],
                    ),
                    Row(children: [
                      Text(widget.amount,
                          style: TextStyle(
                              color: (widget.type == 'credit')
                                  ? Colors.red
                                  : Colors.green)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Icon(Icons.keyboard_arrow_right),
                      )
                    ])
                  ],
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 0.5,
                  endIndent: 16.0,
                  indent: 16.0,
                ),
              ],
            )),
      ),
    );
  }
}
