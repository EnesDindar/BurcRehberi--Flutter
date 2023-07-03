import 'package:flutter/material.dart';
import 'package:my_app/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: CustomScrollView());
  }
}
