import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pesan extends StatefulWidget {
  @override
  _PesanState createState() {
    return _PesanState();
  }
}

class _PesanState extends State<Pesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Laporan"),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                ],
              ),
            ),
            // Container(
            //   child: Expanded(
            //     child: Stack(
            //       fit: StackFit.expand,
            //       children: <Widget>[
            //         searchBarUI(),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  cardReport('belum ditangani'),
                  cardReport('ditangani'),
                  cardReport('ditangani'),
                  cardReport('ditangani'),
                  cardReport('ditangani'),
                  cardReport('ditangani'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        "assets/images/logo-bolmong.png",
        width: 50.0,
        height: 50.0,
      ),
    );
  }

  Card cardReport(String statusLaporan) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0, left: 5),
                child: TextButton(
                  child: Text('Anonymous'),
                  onPressed: () {},
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0, right: 13),
                  child: Text('13.00'))
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: 13, left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                        'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
                  ),
                  Row(
                    children: [
                      Text('status : '),
                      Text(statusLaporan,
                          style: TextStyle(color: Colors.yellow[900])),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
