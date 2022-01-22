import 'package:flutter/material.dart';

// colours for the app
const Color kspentColor = Color.fromRGBO(9, 99, 136, 1);
const Color kavailableColor = Color.fromRGBO(156, 193, 208, 1);
const Color kunallocatedColor = Color.fromRGBO(207, 221, 234, 1);
const Color kinactiveColor = Color(0xFF9CC1D0);
const Color ktabBackgroundColor = Color.fromRGBO(240, 245, 247, 1);
const Color kexpenseColor = Color(0xFF000000);

// text styles for the app
const TextStyle kactiveTab = TextStyle(
  color: kspentColor,
  fontWeight: FontWeight.w800,
  fontSize: 16,
  fontFamily: 'Roboto',
);

const TextStyle kinactiveTab = TextStyle(
  color: kinactiveColor,
  fontWeight: FontWeight.w800,
  fontSize: 15,
  fontFamily: 'Roboto',
);

const TextStyle ktitleText = TextStyle(
  color: kexpenseColor,
  fontWeight: FontWeight.w800,
  fontSize: 17,
  fontFamily: 'Roboto',
);
