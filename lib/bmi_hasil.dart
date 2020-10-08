import 'package:flutter/material.dart';
import 'dart:math';
import 'about.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi_badan,
      @required this.berat_badan,
      @required this.nama_lengkap,
      @required this.tahun_lahir,
      @required this.jk});
  final int tinggi_badan;
  final int tahun_lahir;
  final int berat_badan;
  final String nama_lengkap;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obesitas";
    else if (bmi >= 23)
      cBMI = "Gemuk";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Kurus";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil BMI'),
        backgroundColor: Colors.orange[300],
      ),
      body: Container(
        color: Colors.orange[100],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              "Nama : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              "Umur : ${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              "Jenis Kelamin : ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
