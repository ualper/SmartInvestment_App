import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() {
    return _NewsState();
  }
}

class _NewsState extends State {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text(
                      'Sağlık Bakanlığı, 80 kelimelik "Koronavirüs Sözlüğü" hazırladı'),
                ),
              ),
            ),
            Visibility(
              visible: _isVisible,
              child: Card(
                child: new ListTile(
                  title: Center(
                    child: new Text('Dolar 8 TL’den uzaklaşamıyor'),
                  ),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text('Şekerbank sermayesini %60 oranında artırdı'),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text(
                      ' Bitcoin’in durdurulamaz yükselişine 5 uzman yorumu'),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text('Açığa satışçılar borsadan kaçıyo'),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text(
                      ' BDDKdan normalleşme adımı: Aktif rasyosu kalktı'),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text(
                      'Hazineden ihaleler öncesi 3,1 milyar TL ROT satış'),
                ),
              ),
            ),
            Card(
              child: new ListTile(
                title: Center(
                  child: new Text(
                      ' Bakır fiyatları, 2014ten beri en yüksek seviyede'),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
