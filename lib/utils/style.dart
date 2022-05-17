import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF1C5D99);
const Color scaffoldBackgroundColor = Color(0xFFFDFDFD);
const Color secondaryColor = Color.fromRGBO(254,204,63, 1);
const Color contentBackgroundColor = Color.fromRGBO(237,237,237, 1);
const Color allGameCardColor = Color(0xFFbfeb91);

const double paddingSize = 18;

const EdgeInsets pagePadding =  EdgeInsets.symmetric(horizontal: paddingSize, vertical: 0);


Size deviceSize(context) => MediaQuery.of(context).size;
double deviceHeight(context) => MediaQuery.of(context).size.height;
double deviceWidth(context) => MediaQuery.of(context).size.width;