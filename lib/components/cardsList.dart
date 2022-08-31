import 'package:app/utilities/themeColors.dart';
import 'package:app/utilities/themeStyles.dart';
import 'package:app/widgets/virtualCard.dart';
import 'package:flutter/material.dart';

class CardsList extends StatefulWidget {
  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  List cardList = [
    VirtualCard(
      cardName: 'Supersaver Monthly',
      cardNumber: '4756 •••• •••• 1234',
      balance: 'RP 100.000',
      cardDesign: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    ),
    VirtualCard(
      cardName: 'Supersaver Monthly',
      cardNumber: '4756 •••• •••• 1234',
      balance: 'RP 100.000',
      cardDesign: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    ),
    VirtualCard(
      cardName: 'Supersaver Monthly',
      cardNumber: '4756 •••• •••• 1234',
      balance: 'RP 100.000',
      cardDesign: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    ),
    VirtualCard(
      cardName: 'Supersaver Monthly',
      cardNumber: '4756 •••• •••• 1234',
      balance: 'RP 100.000',
      cardDesign: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    ),
    VirtualCard(
      cardName: 'Supersaver Monthly',
      cardNumber: '4756 •••• •••• 1234',
      balance: 'RP 100.000',
      cardDesign: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    ),
  ];

  int _currentCard = 0;

  final PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentCard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your Cards', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.subtitle),
              ],
            ),
          ),
          Container(
            height: 246.0,
            child: PageView.builder(
              itemCount: cardList.length,
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) => VirtualCard(
                cardName: cardList[index].cardName,
                cardNumber: cardList[index].cardNumber,
                balance: cardList[index].balance,
                cardDesign: cardList[index].cardDesign,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < cardList.length; i++)
                  if (_currentCard == i) 
                    DotIndicator(true)
                  else
                    DotIndicator(false)
              ],
            ),
          )
        ],
      )
  );
  }
}

class DotIndicator extends StatefulWidget {
  final bool isActive;
  DotIndicator(this.isActive);
  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 6.0,
        height: 6.0,
        decoration: BoxDecoration(
          color: widget.isActive ? ThemeColors.kPrimaryColor : ThemeColors.kSecondaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}