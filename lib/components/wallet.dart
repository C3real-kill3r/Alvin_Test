import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  final Color color;
  final String amount;
  const Wallet({
    Key? key,
    required this.color,
    required this.amount,
  }) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'KES ' + widget.amount,
          style: TextStyle(
            color: Color.fromRGBO(46, 105, 130, 1),
            fontWeight: FontWeight.w800,
            fontSize: 15,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    );
  }
}
