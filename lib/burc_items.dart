import 'package:flutter/material.dart';
import 'package:my_app/burc_detay.dart';
import 'package:my_app/model/burc.dart';

class burcItems extends StatelessWidget {
  final Burc listelenenBurc;
  const burcItems({super.key, required this.listelenenBurc});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
                ));
              },
              leading: Image.asset("images/" + listelenenBurc.burcKucukResim),
              title: Text(
                listelenenBurc.burcAdi,
                style: myTextStyle.headlineSmall,
              ),
              subtitle: Text(
                listelenenBurc.burcTarihi,
                style: myTextStyle.titleSmall,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.brown[300],
              ),
            ),
          )),
    );
  }
}
