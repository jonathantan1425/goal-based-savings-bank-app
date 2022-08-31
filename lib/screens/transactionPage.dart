import 'package:app/utilities/themeColors.dart';
import 'package:app/utilities/themeStyles.dart';
import 'package:app/widgets/addNote.dart';
import 'package:app/widgets/cardInPage.dart';
import 'package:app/widgets/otherDetailsDivider.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String letter;
  final Color color;
  final String type;

  TransactionPage({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.letter,
    required this.color,
    required this.type,
  });
  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.kPrimaryColor,
        centerTitle: true,
        title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Outgoing Transaction', style: ThemeStyles.primaryTitle),
                    ],
                  ),
                ),
                CardInPage(
                  title: widget.title, 
                  subtitle: widget.subtitle, 
                  amount: widget.amount, 
                  letter: widget.letter, 
                  color: widget.color,
                  type: widget.type
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('Details', style: ThemeStyles.primaryTitle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(right: 12.0), child: Icon(Icons.payments)),
                      Text('Card Transaction', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CARD', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('•••• •••• •••• 1234', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  )
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DATE', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('13 Aug 2022', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  )
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('POINTS EARNED', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('+22 Points', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  )
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PAID TO', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('Bandar Djakarta', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  )
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('REFERENCE NO', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('IN92 9203 0000 1120 9573 22', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  )
                ),
                OtherDetailsDivider(),
                SizedBox(height: 64.0,)
              ],
            ),
            AddNote()
          ],
        ),
      ),
    );
  }
}
