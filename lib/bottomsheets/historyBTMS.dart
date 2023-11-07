import 'package:flutter/material.dart';

newsBottomSheet(context) {
  var w = MediaQuery.of(context).size.width;
  var h = MediaQuery.of(context).size.height;
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      // isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return SingleChildScrollView();
      });
}
