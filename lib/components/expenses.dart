import 'package:alvin_test/utilities/constants.dart';
import 'package:flutter/material.dart';

class Wants extends StatefulWidget {
  final String title;
  const Wants({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _WantsState createState() => _WantsState();
}

class _WantsState extends State<Wants> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: kexpenseColor,
              fontWeight: FontWeight.w800,
              fontSize: 15,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            child: Row(children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(46, 105, 130, 1),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: Color.fromRGBO(46, 105, 130, 1),
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 30,
                decoration: BoxDecoration(
                  color: ktabBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'KES',
                          style: TextStyle(
                            color: kexpenseColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 8,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        TextSpan(
                          text: ' 5,000',
                          style: TextStyle(
                            color: kexpenseColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(46, 105, 130, 1),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Color.fromRGBO(46, 105, 130, 1),
                    size: 15,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
