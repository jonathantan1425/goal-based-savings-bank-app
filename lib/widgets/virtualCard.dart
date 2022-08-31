import 'package:app/utilities/themeColors.dart';
import 'package:app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class VirtualCard extends StatefulWidget {
  final String cardName;
  final String cardNumber;
  final String balance;
  final String cardDesign;

  VirtualCard({
    required this.cardName,
    required this.cardNumber,
    required this.balance,
    required this.cardDesign,
  });

  @override
  _VirtualCardState createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
      child: Container(
          height: 216,
          width: 380,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(widget.cardDesign), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.balance, style: ThemeStyles.cardMoney),
                      IconButton(
                          onPressed: null, icon: Icon(Icons.visibility_off)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: [
                    Text(widget.cardName, style: ThemeStyles.cardDetails),
                    Text(widget.cardNumber, style: ThemeStyles.cardDetails),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
