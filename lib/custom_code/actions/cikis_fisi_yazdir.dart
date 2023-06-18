// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/services.dart';

Future<String> cikisFisiYazdir(
  String otoparkadi,
  String plaka,
  String giriszaman,
  String kapiadi,
  String aracTipi,
  String username,
  String cikiszaman,
  String gecensure,
  double parkUcreti,
  double indirim,
  double tutar,
  double ekhizmetbedeli,
  double odenecekTutar,
  String aciklama,
  String parkkonumu,
) async {
  // Add your function code here!
  // bluetooth printer out

  // Get the instance of the bluetooth printer
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  // Connect to bluetooth printer
  bool? isConnected = await bluetooth.isConnected;
  var connected = isConnected;

  if (connected == false) {
    List<BluetoothDevice> devices = [];
    try {
      devices = await bluetooth.getBondedDevices();
    } on PlatformException {}

    if (devices.length > 0) {
      if (isConnected! == false) {
        isConnected = await bluetooth.connect(devices[0]);
        if (isConnected! == false) {
          return "BAGLANTI YOK";
        }
      }
    }
  }

  if (connected == true) {
    bluetooth.printNewLine();
    bluetooth.printCustom(otoparkadi, 2, 1, charset: "ISO-8859-9");
    bluetooth.printCustom(kapiadi, 1, 1, charset: "ISO-8859-9");

    bluetooth.printNewLine();
    bluetooth.printCustom(plaka, 2, 1, charset: "ISO-8859-9");
    bluetooth.printNewLine();
    bluetooth.printLeftRight("Arac Tipi :", aracTipi, 1);

    bluetooth.printLeftRight("Giris:", giriszaman, 1);

    bluetooth.printLeftRight("Cikis:", cikiszaman, 1);

    String sure = gecensure.toString();
    bluetooth.printLeftRight("Gecen Sure:", sure, 1);
    bluetooth.printLeftRight("Park Konumu:", parkkonumu, 1);

    bluetooth.printLeftRight("Vale :", username, 1);

    bluetooth.printNewLine();
    bluetooth.printCustom("UCRET BILGILERI", 2, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    bluetooth.printLeftRight("Park Ucreti:", parkUcreti.toString(), 1);
    bluetooth.printLeftRight("Indirim:", indirim.toString(), 1);
    bluetooth.printLeftRight("Tutar:", tutar.toString(), 1);
    bluetooth.printLeftRight("Ek Hizmetler:", ekhizmetbedeli.toString(), 1);
    bluetooth.printLeftRight("Odenecek:", odenecekTutar.toString(), 2);
    bluetooth.printNewLine();
    bluetooth.printCustom(aciklama, 1, 1, charset: "ISO-8859-9");
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();

    return "FIS YAZDIRILDI";
  }

  return "FIS YAZDIRILAMADI";
}
