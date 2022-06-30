import 'package:flutter/material.dart';

class Items {
  int? position;
  String? name;
  Items(this.position, this.name);
}

class EditTexts {
  TextEditingController security = TextEditingController(text: '0');
  TextEditingController electricity = TextEditingController(text: '0');
}

class Total {
  TextEditingController total = TextEditingController(text: '0');
}