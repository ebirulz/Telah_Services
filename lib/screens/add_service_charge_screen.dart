import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:telah_services/screens/payment_mode.dart';

import '../../../../widgets/custom_dividers.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/decor.dart';
import '../utils/size_model.dart';
import '../widgets/app_bar.dart';
import '../widgets/custom_buttons.dart';
import '../widgets/number_widget.dart';
import 'model/model.dart';


class ServiceCharge extends StatefulWidget {
  const ServiceCharge({Key? key}) : super(key: key);

  @override
  State<ServiceCharge> createState() => _ServiceChargeState();
}

class _ServiceChargeState extends State<ServiceCharge> {
  @override
  void initState() {
    super.initState();
    controllers();
  }

  controllers() {
    // ignore: unused_local_variable
    for (var data in properties) {
      editTexts.add(EditTexts());
      total.add(Total());
    }
  }

  int sumTotal = 0;
  NumberWidget uw = NumberWidget();
  List<Total> total = [];
  List<EditTexts> editTexts = [];
  List<Items> properties = [Items(0, 'Bungalow'), Items(1, 'Duplex')];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget().appbar(context: context),
        backgroundColor: Colors.white,
        body: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Padding(
            padding: EdgeInsets.only(
                left: Sizes.w20,
                right: Sizes.w20,
                bottom: Sizes.w10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: FAProgressBar(
                        currentValue: 40,
                        backgroundColor: const Color(0xffE3E6E8),
                        progressColor: AppColors.defaultBlue,
                        size: 9,
                      )
                  ),
                  customDivider(height: Sizes.h50),
                  Center(
                    child: Image.asset(
                      AssetsPath.servicecharge,
                      width: Sizes.w70,
                    ),
                  ),
                  customDivider(height: Sizes.h20),
                  Text(
                    'Services',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Sizes.w25),
                  ),
                  customDivider(height: Sizes.h15),
                  Text(
                    'How much do you charge as service charge \nmonthly for the different category of \npropery units',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: Sizes.w15),
                  ),
                  customDivider(height: Sizes.h15),
                  Text(
                    'If you charge annually, \nplease kindly divide the figure by 12',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                        fontSize: Sizes.w15),
                  ),
                  customDivider(height: Sizes.h30),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: properties
                            .map((e) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedItem = e.position!;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: Sizes.w15),
                                  child: Row(
                                    children: [
                                      Text(
                                        e.name!,
                                        style: TextStyle(
                                            fontSize: Sizes.w15,
                                            color: selectedItem == e.position
                                                ? Colors.black
                                                : Colors.grey),
                                      ),
                                      customVerticalDivider(width: Sizes.w5),
                                      Image.asset(
                                        selectedItem == e.position
                                            ? AssetsPath.checkgreen
                                            : AssetsPath.checkgrey,
                                        width: Sizes.w15,
                                      )
                                    ],
                                  ),
                                )))
                            .toList(),
                      )),
                  customDivider(height: Sizes.h15),
                  Container(
                    height: Sizes.h50,
                    width: double.infinity,
                    decoration: Decor().container(
                      context: context,
                      borderColor: Colors.transparent,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: Sizes.w50),
                          child: Text('Service', style: TextStyle(color: Colors.blue, fontSize: Sizes.w18),),
                        ),  Padding(
                          padding: EdgeInsets.only(right: Sizes.w100),
                          child: Text('Fee', style: TextStyle(color: Colors.blue, fontSize: Sizes.w18),),
                        ),
                      ],
                    ),
                  ),
                  customDivider(height: Sizes.h15),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Service',
                            style: TextStyle(fontSize: Sizes.w15),
                          ),customVerticalDivider(width: Sizes.w120),
                          Row(
                            children: [
                              Image.asset(AssetsPath.naira, width: Sizes.w15),
                              customVerticalDivider(width: Sizes.w5),
                              SizedBox(
                                width: Sizes.w80,
                                child: TextFormField(
                                  controller: editTexts[selectedItem].security,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    // ignore: prefer_is_empty
                                    if (value.trim().length == 0) {
                                    } else {
                                      setState(() {
                                        sumTotal = int.tryParse(
                                                editTexts[selectedItem]
                                                    .security
                                                    .text
                                                    .replaceAll(',', ''))! +
                                            int.tryParse(editTexts[selectedItem]
                                                .electricity
                                                .text
                                                .replaceAll(',', ''))!;
                                        total[selectedItem].total.text =
                                            sumTotal.toString();
                                      });
                                    }
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      customDivider(height: Sizes.h10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Electricity',
                            style: TextStyle(fontSize: Sizes.w15),
                          ),customVerticalDivider(width: Sizes.w110),
                          Row(
                            children: [
                              Image.asset(
                                AssetsPath.naira,
                                width: Sizes.w15,
                              ),
                              customVerticalDivider(width: Sizes.w5),
                              SizedBox(
                                width: Sizes.w80,
                                child: TextFormField(
                                  controller:
                                      editTexts[selectedItem].electricity,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    // ignore: prefer_is_empty
                                    if (value.trim().length == 0) {
                                    } else {
                                      setState(() {
                                        sumTotal = int.tryParse(
                                                editTexts[selectedItem]
                                                    .security
                                                    .text
                                                    .replaceAll(',', ''))! +
                                            int.tryParse(editTexts[selectedItem]
                                                .electricity
                                                .text
                                                .replaceAll(',', ''))!;
                                        total[selectedItem].total.text =
                                            sumTotal.toString();
                                      });
                                    }
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  customDivider(height: Sizes.h15),
                  Container(
                    height: Sizes.h50,
                    width: double.infinity,
                    decoration: Decor().container(
                        context: context,
                        borderColor: Colors.transparent,
                        color: Colors.green.withOpacity(.2)),
                    child: Center(
                      child: Text(
                        'N${uw.displayNumber(int.tryParse(total[selectedItem].total.text))}.00/Monthly',
                        style:
                            TextStyle(color: Colors.green, fontSize: Sizes.w20),
                      ),
                    ),
                  ),
                  customDivider(height: Sizes.h50),
                  ButtonWidgets().customButton(
                      context: context,
                      function: proceed,
                      buttonHeight: Sizes.h50,
                      buttonColor: Colors.blue),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  proceed() {
     Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const PaymentMode()));
  }
}
