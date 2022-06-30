import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';

import '../utils/colors.dart';
import '../utils/size_model.dart';


class ButtonWidgets {
  final displayNumber = createDisplay(
    length: 19,
    decimal: 2,
    decimalPoint: '.',
  );

  customButton(
      {required BuildContext context,
        required Function function,
        double? buttonHeight,
        double? buttonTextSize,
        Color? buttonColor,
        String? buttonText,
        IconData? icon,
      }) {
        Sizes().heightSizeCalc(context);
        Sizes().widthSizeCalc(context);
        return SizedBox(
          height: buttonHeight ?? Sizes.h40,
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(Sizes.w10)))),
              onPressed: () {
                function();
              },
              child: Text(buttonText ?? 'Proceed',
                  style: TextStyle(fontSize: buttonTextSize ?? Sizes.w18))),
        );
      }


  utilityButton(
      {required BuildContext context,
        required Function function,
        double? buttonHeight,
        double? buttonTextSize,
        Color? buttonColor,
        String? buttonText,
        IconData? icon,
      }) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SizedBox.fromSize(
      size: const Size(80, 80), // button width and height
      child: Material(
        color: Colors.white, // button color
        //borderRadius: BorderRadius.all(Radius.circular(10)),
        child: InkWell(
          splashColor: AppColors.borderLine.withOpacity(0.4), // splash color
          onTap: () {}, // button pressed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppColors.borderLine.withOpacity(0.15),
                ),
                child: Icon(icon, size: 30),
              ), // icon
              const SizedBox(height: 10,),
              Text(buttonText!, style: TextStyle(fontSize: Sizes.w16),), // text
            ],
          ),
        ),
      ),
    );
  }


  incidentContactButton(
      {required BuildContext context,
        required Function function,
        double? buttonHeight,
        double? buttonTextSize,
        Color? buttonColor,
        String? buttonText,
        IconData? icon,
      }) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SizedBox.fromSize(
      size: const Size(150, 50), // button width and height
      child: Material(
       color: Colors.white, // button color
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: InkWell(
          splashColor: AppColors.borderLine.withOpacity(0.4), // splash color
          onTap: () {}, // button pressed
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderLine.withOpacity(0.4)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, size: 30), // icon
                const SizedBox(width: 10,),
                Text(buttonText!, style: TextStyle(fontSize: Sizes.w16),), // text
              ],
            ),
          ),
        ),
      ),
    );
  }
}

mgmtButton(
    {required BuildContext context,
      required Function function,
      double? buttonHeight,
      double? buttonTextSize,
      Color? buttonColor,
      String? buttonText,
      IconData? icon,
    }) {
  Sizes().heightSizeCalc(context);
  Sizes().widthSizeCalc(context);
  return SizedBox(
    height: buttonHeight ?? Sizes.h100,
    width: double.infinity,
    child: Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(Sizes.w10)))),
            onPressed: () {
              function();
            },
            child: Text(buttonText ?? 'Proceed',
                style: TextStyle(fontSize: buttonTextSize ?? Sizes.w18))),

        const Text("Skip")
      ],
    )
  );
}