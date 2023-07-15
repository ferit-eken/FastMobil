// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'index.dart'; // Imports other custom actions

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
    String ustbilgi1,
    String ustbilgi2,
    String altbilgi1,
    String altbilgi2,
    String parkkonumu,
    String fisNo) async {
  // Add your function code here!
  // bluetooth printer out

  // Get the instance of the bluetooth printer
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  // Connect to bluetooth printer
  bool? isConnected = await bluetooth.isConnected;

  if (isConnected == false) {
    List<BluetoothDevice> devices = [];
    try {
      devices = await bluetooth.getBondedDevices();
    } on PlatformException {}

    if (devices.length > 0) {
      if (isConnected == false) {
        isConnected = await bluetooth.connect(devices[0]);
        if (isConnected! == false) {
          return "BAGLANTI YOK";
        }
      }
    }
  }

  if (isConnected == true) {
    final file = File('/storage/emulated/0/Download/Firmalogo.png');
    if (file.exists() == true) {
      ByteData bytesAsset =
          await rootBundle.load("assets/images/firmalogo.png");
      Uint8List imageBytesFromAsset = bytesAsset.buffer
          .asUint8List(bytesAsset.offsetInBytes, bytesAsset.lengthInBytes);
      bluetooth.printImageBytes(imageBytesFromAsset); //image from Network
    } else {
      ByteData bytesAsset2 =
          await rootBundle.load("/storage/emulated/0/Download/Firmalogo.png");
      Uint8List imageBytesFromAsset2 = bytesAsset2.buffer
          .asUint8List(bytesAsset2.offsetInBytes, bytesAsset2.lengthInBytes);
      bluetooth.printImageBytes(imageBytesFromAsset2); //image from Network
    }

    /// Example for Print Text

    if (ustbilgi1 != "")
      bluetooth.printCustom(ustbilgi1, 1, 1, charset: "ISO-8859-9");

    if (ustbilgi2 != "")
      bluetooth.printCustom(ustbilgi2, 1, 1, charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom(plaka, 2, 1, charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom("ARAC CIKIS BILGI FISI", 1, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    bluetooth.printLeftRight("Arac Tipi :", aracTipi, 1);
    bluetooth.printLeftRight("Giris:", giriszaman, 1);
    bluetooth.printLeftRight("Cikis:", cikiszaman, 1);

    String sure = gecensure.toString();
    bluetooth.printLeftRight("Gecen Sure:", sure, 1);
    bluetooth.printLeftRight("Park Konumu:", parkkonumu, 1);
    bluetooth.printLeftRight("Vale :", username, 1);
    bluetooth.printLeftRight("Fis No :", fisNo, 1);
    bluetooth.printNewLine();
    bluetooth.printCustom("UCRET BILGILERI", 2, 1, charset: "ISO-8859-9");
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    bluetooth.printLeftRight("Park Ucreti:", parkUcreti.toString(), 1);
    bluetooth.printLeftRight("Indirim:", indirim.toString(), 1);
    bluetooth.printLeftRight("Tutar:", tutar.toString(), 1);
    bluetooth.printLeftRight("Ek Hizmetler:", ekhizmetbedeli.toString(), 1);
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    bluetooth.print3Column("Toplam:", odenecekTutar.toString(), "", 2);
    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");

    if (aciklama != "")
      bluetooth.printCustom(aciklama, 1, 1, charset: "ISO-8859-9");

    if (altbilgi1 != "")
      bluetooth.printCustom(altbilgi1, 1, 1, charset: "ISO-8859-9");

    if (altbilgi2 != "")
      bluetooth.printCustom(altbilgi2, 1, 1, charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    bluetooth.printCustom("* MALI DEGERI YOKTUR *", 2, 1,
        charset: "ISO-8859-9");

    bluetooth.printCustom("------------------------", 2, 1,
        charset: "ISO-8859-9");
    //bluetooth.printCustom("www.fastpark.com.tr", 1, 1, charset: "ISO-8859-9");

    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.disconnect();

    return "FIS YAZDIRILDI";
  }

  return "FIS YAZDIRILAMADI";
}
