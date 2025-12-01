import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var primaryColor = Color(0xFFF38181);
var appBarColor = Color(0xFFF5397B);
var subColor = Color(0xFF8A8A8A);


TextStyle appHeaderStyle(){
  return GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: appBarColor
  );
}

TextStyle productNameText(){
  return GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );
}

TextStyle productPriceNameText(){
  return GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: subColor,
  );
}

TextStyle productDetailNameText(){
  return GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
}

TextStyle productDetailPriceText(){
  return GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: subColor,
  );
}


TextStyle cartDetailsStyle(){
  return GoogleFonts.inter(
    color: Colors.black,
    fontSize: 23,
    fontWeight: FontWeight.w500
  );
}