import 'package:app/utilities/themeStyles.dart';
import 'package:app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.subtitle)
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  title: 'Food',
                  subtitle: 'Restaurant',
                  amount: 'Rp 22.000',
                  color: Colors.black,
                  letter: 'F',
                  type: 'credit',
                ),
                TransactionCard(
                  title: 'School',
                  subtitle: 'Annual School Fees',
                  amount: 'Rp 3333.000',
                  color: Colors.blue,
                  letter: 'S',
                  type: 'credit',
                ),
                TransactionCard(
                  title: 'Romeo Khan',
                  subtitle: 'One-time Payment',
                  amount: 'Rp 44.000',
                  color: Colors.purple,
                  letter: 'R',
                  type: 'debit',
                ),
                TransactionCard(
                  title: 'Food',
                  subtitle: 'Restaurant',
                  amount: 'Rp 22.000',
                  color: Colors.black,
                  letter: 'F',
                  type: 'credit',
                ),
                TransactionCard(
                  title: 'Food',
                  subtitle: 'Restaurant',
                  amount: 'Rp 22.000',
                  color: Colors.black,
                  letter: 'F',
                  type: 'credit',
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
