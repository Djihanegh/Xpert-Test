import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget pad8() => Padding(padding: EdgeInsets.all(8), child: this);
  Widget pad16() => Padding(padding: EdgeInsets.all(16), child: this);
  Widget padOnlyLeft16() => Padding(padding: EdgeInsets.only(left: 16), child: this);
  Widget padOnlyLeft16Top5() => Padding(padding: EdgeInsets.only(left: 16.0, top: 5), child: this);
  Widget padOnlyTop16() => Padding(padding: EdgeInsets.only(top: 15), child: this);
  Widget customPad() => Padding(padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 10), child: this);
  Widget padOnlyTop16Left16() => Padding(padding: EdgeInsets.only(top: 15, left: 16), child: this);
  Widget padOnlyTop4() => Padding(padding: EdgeInsets.only(top: 4), child: this);
}
