import 'package:flutter/material.dart';
import 'package:my_app/model/burc.dart';

class burcItems extends StatelessWidget {
  final Burc listelenenBurc;
  const burcItems({super.key, required this.listelenenBurc});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading:
          Image.asset(listelenenBurc.burcKucukResim, width: 64, height: 64),
    ));
  }
}
