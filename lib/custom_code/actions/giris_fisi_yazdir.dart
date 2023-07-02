// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/services.dart';

Future<String> girisFisiYazdir(
    String otoparkadi,
    String plaka,
    DateTime giriszaman,
    String kapiadi,
    String aracTipi,
    String username,
    String aciklama,
    String ustbilgi1,
    String ustbilgi2,
    String altbilgi1,
    String altbilgi2,
    String fisNo) async {
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
    ByteData bytesAsset = await rootBundle.load("assets/images/firmalogo.png");
    Uint8List imageBytesFromAsset = bytesAsset.buffer
        .asUint8List(bytesAsset.offsetInBytes, bytesAsset.lengthInBytes);

    /// Example for Print Text

    bluetooth.printImageBytes(imageBytesFromAsset); //image from Network

    if (ustbilgi1 != "")
      bluetooth.printCustom(ustbilgi1, 1, 1, charset: "ISO-8859-9");

    if (ustbilgi2 != "")
      bluetooth.printCustom(ustbilgi2, 1, 1, charset: "ISO-8859-9");

    bluetooth.printQRcode(plaka, 380, 250, 1);

    bluetooth.printCustom(otoparkadi, 1, 1, charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom(plaka, 2, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom("ARAC GIRIS BILGI FISI", 1, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    String formattedDate = DateFormat('dd.MM.yyyy kk:mm').format(giriszaman);

    bluetooth.printLeftRight("Arac Tipi :", aracTipi, 1);
    bluetooth.printLeftRight("Giris:", formattedDate, 1);
    bluetooth.printLeftRight("Vale :", username, 1);
    bluetooth.printLeftRight("Fis No :", fisNo, 1);
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom(aciklama, 1, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    if (altbilgi1 != "")
      bluetooth.printCustom(altbilgi1, 1, 1, charset: "ISO-8859-9");

    if (altbilgi2 != "")
      bluetooth.printCustom(altbilgi2, 1, 1, charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom("www.fastpark.com.tr", 1, 1, charset: "ISO-8859-9");

    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();

    return "FIS YAZDIRILDI";
  }

  return "FIS YAZDIRILAMADI";
}
