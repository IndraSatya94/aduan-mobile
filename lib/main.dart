import 'package:flutter/material.dart';
import 'package:haloapp/screens/beranda_view.dart';

void main() {
  runApp(Aduan());
}

class Aduan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Aplikasi Aduan'),
      home: Beranda(),
    );
  }
}
