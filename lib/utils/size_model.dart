import 'package:flutter/material.dart';

class Sizes {
  static double? size;
  // height
  static double h220 = 0;
  static double h450 = 0;
  static double h40 = 0;
  static double h24 = 0;
  static double h16 = 0;
  static double h18 = 0;
  static double h80 = 0;
  static double h45 = 0;
  static double h8 = 0;
  static double h32 = 0;
  static double h30 = 0;
  static double h200 = 0;
  static double h10 = 0;
  static double h5 = 0;
  static double h20 = 0;
  static double h35 = 0;
  static double h22 = 0;
  static double h120 = 0;
  static double h350 = 0;
  static double h250 = 0;
  static double h100 = 0;
  static double h60 = 0;
  static double h2 = 0;
  static double h38 = 0;
  static double h50 = 0;
  static double h400 = 0;
  static double h150 = 0;
  static double h15 = 0;
  static double h1 = 0;
  static double h500 = 0;
  static double h65 = 0;
  static double h110 = 0;
  static double h130 = 0;
  static double h300 = 0;
  static double h25 = 0;
  static double h13 = 0;
  static double h17 = 0;
  static double h70 = 0;
  static double h12 = 0;
  static double h355 = 0;
  static double h180 = 0;
  static double h3 = 0;
  static double h7 = 0;
  static double hd7 = 0;
  static double h600 = 0;
  static double h44 = 0;
  static double h165 = 0;
  static double h330 = 0;
  static double h54 = 0;
  static double h420 = 0;
  static double h90 = 0;
  // Width
  static double w40 = 0;
  static double w180 = 0;
  static double w24 = 0;
  static double w16 = 0;
  static double w18 = 0;
  static double w80 = 0;
  static double w45 = 0;
  static double w8 = 0;
  static double w32 = 0;
  static double w30 = 0;
  static double w200 = 0;
  static double w10 = 0;
  static double w5 = 0;
  static double w20 = 0;
  static double w35 = 0;
  static double w22 = 0;
  static double w120 = 0;
  static double w350 = 0;
  static double w250 = 0;
  static double w100 = 0;
  static double w60 = 0;
  static double w2 = 0;
  static double w38 = 0;
  static double w50 = 0;
  static double w400 = 0;
  static double w150 = 0;
  static double w15 = 0;
  static double w1 = 0;
  static double w500 = 0;
  static double w65 = 0;
  static double w110 = 0;
  static double w130 = 0;
  static double w300 = 0;
  static double w25 = 0;
  static double w13 = 0;
  static double w17 = 0;
  static double w70 = 0;
  static double w7 = 0;
  static double wd7 = 0;
  static double w12 = 0;
  static double w211 = 0;
  static double w4 = 0;
  static double w230 = 0;
  void widthSizeCalc(BuildContext context) {
    // most of the smaller numbers are for font sizes, bigger numbers for height of widgets
    size = MediaQuery.of(context).size.width;
    w4 = size! * .00945;
    w211 = size! * .5;
    w230 = size! * .5437;
    w40 = size! * .0945;
    w16 = size! * .0378;
    w18 = size! * .0425;
    w80 = size! * .1891;
    w45 = size! * .10638;
    w8 = size! * .0189;
    w32 = size! * .0756;
    w30 = size! * .0709;
    w70 = size! * .16548;
    w7 = size! * .016548;
    w200 = size! * .47281;
    w10 = size! * .0236;
    w5 = size! * .0118;
    w20 = size! * .04728;
    w24 = size! * .0567;
    w35 = size! * .0827;
    w180 = size! * .42533;
    w22 = size! * .052;
    w120 = size! * .28368;
    w350 = size! * .82742;
    w250 = size! * .591;
    w100 = size! * .2364;
    w60 = size! * .1418;
    w2 = size! * .0047;
    w38 = size! * .0898;
    w50 = size! * .1182;
    w400 = size! * .9456;
    w150 = size! * .3546;
    w15 = size! * .03546;
    w1 = size! * .002364;
    w500 = size! * 1.1820;
    w65 = size! * .15366;
    w110 = size! * .26;
    w130 = size! * .3073;
    w300 = size! * .7092;
    w25 = size! * .0591;
    w13 = size! * .0307;
    w17 = size! * .04018;
    w70 = size! * .16548;
    wd7 = size! * .0016548;
    w12 = size! * .0283;
  }

  void heightSizeCalc(BuildContext context) {
    size = MediaQuery.of(context).size.height;
    h220 = size! * 0.275;
    h600 = size! * 0.7509;
    h40 = size! * .05;
    h24 = size! * .03;
    h16 = size! * .02;
    h18 = size! * .0225;
    h80 = size! * .1;
    h45 = size! * .05632;
    h8 = size! * .01;
    h32 = size! * .04;
    h30 = size! * .0375;
    h70 = size! * .08761;
    h200 = size! * .25;
    h10 = size! * .0125;
    h5 = size! * .00625;
    h20 = size! * .025;
    h24 = size! * .03;
    h35 = size! * .0438;
    h22 = size! * .02753;
    h120 = size! * .15;
    h350 = size! * .438;
    h250 = size! * .313;
    h100 = size! * .125;
    h60 = size! * .0751;
    h2 = size! * .0025;
    h38 = size! * .0476;
    h50 = size! * .0626;
    h400 = size! * .5;
    h150 = size! * .1877;
    h15 = size! * .0187;
    h1 = size! * .00125156;
    h500 = size! * .626;
    h65 = size! * .0814;
    h110 = size! * .13767;
    h130 = size! * .1627;
    h300 = size! * .375469;
    h25 = size! * .031289;
    h13 = size! * .01627;
    h17 = size! * .0212765;
    h70 = size! * .087609;
    h12 = size! * .015018;
    h355 = size! * .444305;
    h180 = size! * .225;
    h7 = size! * .008761;
    hd7 = size! * .0008761;
    h3 = size! * .00375;
    h44 = size! * .05506;
    h165 = size! * .2065;
    h330 = size! * .4130162;
    h54 = size! * .067584;
    h420 = size! * .52565;
    h450 = size! * .5632;
    h90 = size! * 0.11264;
  }
}

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

