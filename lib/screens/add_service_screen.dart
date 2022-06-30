import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../widgets/app_bar.dart';
import '../../../../../widgets/custom_buttons.dart';
import '../../../../../widgets/custom_dividers.dart';
import '../utils/colors.dart';
import '../utils/decor.dart';
import '../utils/size_model.dart';
import 'add_service_charge_screen.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({Key? key}) : super(key: key);

  @override
  State<AddServiceScreen> createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  TextEditingController addService = TextEditingController();
  List<String> addedService = [];
  @override
  Widget build(BuildContext context) {
    Sizes().heightSizeCalc(context);
    Sizes().widthSizeCalc(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget().appbar(context: context),
        body: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Padding(
            padding: EdgeInsets.only(
                top: Sizes.h10,
                left: Sizes.w20,
                right: Sizes.w20,
                bottom: Sizes.w10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Center(
                        child: FAProgressBar(
                          currentValue: 20,
                          backgroundColor: const Color(0xffE3E6E8),
                          progressColor: AppColors.defaultBlue,
                          size: 9,
                        )
                    ),
                  ),
                  customDivider(height: Sizes.h50),
                  Center(
                    child: Icon(
                      Iconsax.flash,
                      size: Sizes.w70,
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
                    'What services do you provide ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: Sizes.w15),
                  ),
                  customDivider(height: Sizes.h15),
                  Text(
                    'Eg. Sanitation, Security, Waste Disposal, Street Lightening etc.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                        fontSize: Sizes.w15),
                  ),
                  customDivider(height: Sizes.h30),
                  Column(
                    children: addedService
                        .map((e) => Padding(
                      padding: EdgeInsets.only(bottom: Sizes.h10),
                      child: TextFormField(
                        readOnly: true,
                        initialValue: e,
                        style: TextStyle(fontSize: Sizes.w16),
                        keyboardType: TextInputType.name,
                        decoration: Decor().formDecor(
                            context: context,
                            suffix: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    addedService.remove(e);
                                  });
                                },
                                child: const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Center(
                                    child: Icon(
                                      Iconsax.close_circle,
                                      size: 25,
                                      color: AppColors.errorText,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ))
                        .toList(),
                  ),
                  customDivider(height: Sizes.h30),
                  GestureDetector(
                    onTap: addServiceType,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                        customVerticalDivider(width: Sizes.w5),
                        Text(
                          'Add Services',
                          style: TextStyle(
                              color: Colors.blue, fontSize: Sizes.w15),
                        )
                      ],
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
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ServiceCharge()));
  }

  addServiceType() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(Sizes.w20),
              topLeft: Radius.circular(Sizes.w20)),
        ),
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              height: Sizes.h250,
              child: Padding(
                padding: EdgeInsets.only(
                    top: Sizes.h30, left: Sizes.w15, right: Sizes.w15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add New Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: Sizes.w20),
                    ),
                    customDivider(height: Sizes.h25),
                    FormBuilderTextField(
                      controller: addService,
                      //style: TextStyle(fontSize: Sizes.w13),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          labelText: 'Service Type',
                          suffixIcon: Icon(Iconsax.money)
                      ),
                      name: 'service_type',
                    ),
                    customDivider(height: Sizes.h25),
                    SizedBox(
                      height: Sizes.h50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: Decor().buttonDecor(context: context),
                          onPressed: () {
                            Navigator.pop(context);
                            // the paystack modal
                            if (addService.text.trim.toString().isEmpty) {
                            } else {
                              setState(() {
                                addedService.add(addService.text);
                              });
                            }
                          },
                          child: Text(
                            'Add Service',
                            style: TextStyle(fontSize: Sizes.w20),
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}