import 'package:app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class CardInPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String letter;
  final Color color;
  final String type;

  CardInPage({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.letter,
    required this.color,
    required this.type,
  });

  @override
  State<CardInPage> createState() => _CardInPageState();
}

class _CardInPageState extends State<CardInPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                      ])
                    ],
                  ),
      ],),),
    );
  }
}
