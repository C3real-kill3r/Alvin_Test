import 'package:flutter/material.dart';

class WalletBar extends StatelessWidget {
  const WalletBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: size.width * 0.9,
          height: 9,
          decoration: BoxDecoration(
            color: Color.fromRGBO(207, 221, 234, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        Container(
          width: size.width * 0.3,
          height: 9,
          decoration: BoxDecoration(
            color: Color.fromRGBO(156, 193, 208, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        Container(
          width: size.width * 0.09,
          height: 9,
          decoration: BoxDecoration(
            color: Color.fromRGBO(9, 99, 136, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
