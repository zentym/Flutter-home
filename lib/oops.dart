import 'dart:collection';

import 'package:flutter/material.dart';

class hocvien {
  String ten;
  int sl;
  int sb = 0;
  hocvien({required this.ten, this.sl = 1});
}

class A extends hocvien {
  late int sb = 0;
  A({ten = "A"}) : super(ten: ten);
}

class B extends hocvien {
  int sb = 5;
  B({ten = 'B'}) : super(ten: ten);
}

class flutter {
  final hocvien a;
  final hocvien hv;
  final String ten;
  final int sl;
  flutter(this.a, this.hv, {this.ten = 'flutter', this.sl = 11});
}

void main(List<String> args) {
  flutter f = flutter(A(), hocvien(ten: 'B'));
  flutter f1 = flutter(B(), hocvien(ten: 'b'));
  A().sb = 5;

  print(A().sb);
}

mixin sobuoi on hocvien {
  void Update() {
    sb = sb + 2;
  }
}
