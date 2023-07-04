import 'package:flutter/material.dart';
import 'package:my_app/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    appbarRenginiBul();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios_new, size: 40, color: Colors.white),
          ),
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenBurc.burcAdi + ' Burcu ve Özellikleri'),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        )
      ],
    ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appbarRengi = _generator.dominantColor!.color;
    setState(() {});
  }
}
