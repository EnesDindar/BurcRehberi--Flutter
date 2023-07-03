import 'package:flutter/material.dart';
import 'package:my_app/burc_items.dart';
import 'package:my_app/data/strings.dart';
import 'package:my_app/model/burc.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;
  BurcListesi({super.key}) {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Burçlar Listesi'),
          backgroundColor: Colors.brown[300],
        ),
        body: Center(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return burcItems(listelenenBurc: tumBurclar[index]);
              },
              itemCount: tumBurclar.length),
        ));
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
