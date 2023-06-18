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

Future<String> girisFisiYazdir(
    String otoparkadi,
    String plaka,
    DateTime giriszaman,
    String kapiadi,
    String aracTipi,
    String username,
    String aciklama) async {
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

    bluetooth.printQRcode(plaka, 340, 250, 3);

    bluetooth.printNewLine();

    bluetooth.printLeftRight("Plaka :", plaka, 1);

    String formattedDate = DateFormat('dd.MM.yyyy kk:mm').format(giriszaman);

    bluetooth.printLeftRight("Giris:", formattedDate, 1);
    bluetooth.printLeftRight("Vale :", username, 1);

    bluetooth.printNewLine();
    bluetooth.printNewLine();

    bluetooth.printCustom(aciklama, 1, 1, charset: "ISO-8859-9");
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    bluetooth.printNewLine();
    //  bluetooth.printLeftRight("LEFT1", "RIGHT", 0);
    //  bluetooth.printLeftRight("LEFT2", "RIGHT", 1);
    // bluetooth.printLeftRight("LEFT3", "RIGHT", 1, format: "%-15s %15s %n");
    // bluetooth.printNewLine();
    // bluetooth.printLeftRight("LEFT4", "RIGHT", 2);
    // bluetooth.printLeftRight("LEFT5", "RIGHT", 3);
    // bluetooth.printLeftRight("LEFT6", "RIGHT", 4);
    // bluetooth.printNewLine();
    // bluetooth.print3Column("Col1", "Col2", "Col3", 1);
    // bluetooth.print3Column("Col1", "Col2", "Col3", 1,
    //    format: "%-10s %10s %10s %n");
    //bluetooth.printNewLine();
    //bluetooth.print4Column("Col1", "Col2", "Col3", "Col4", 1);
    //bluetooth.print4Column("Col1", "Col2", "Col3", "Col4", 1,
    //     format: "%-8s %7s %7s %7s %n");
    // bluetooth.printNewLine();
    //String testString = " Görüşürüz";
    //bluetooth.printCustom(testString, 1, 1, charset: "windows-1250");
    //bluetooth.printLeftRight("Številka:", "18000001", 1, charset: "windows-1250");
    //bluetooth.printCustom("Body left", 1, 0);
    //bluetooth.printCustom("Body right", 0, 2);
    // bluetooth.printNewLine();
    //bluetooth.printCustom("Thank You", 2, 1);
    //bluetooth.printNewLine();
    //bluetooth.printQRcode("Insert Your Own Text to Generate", 200, 200, 1);
    // bluetooth.printNewLine();
    //  bluetooth.printNewLine();
    //bluetooth.printNewLine();
    //bluetooth.printNewLine();
    // bluetooth.printNewLine();
    // bluetooth.printNewLine();
    //bluetooth.paperCut();

    return "FIS YAZDIRILDI";
  }

  return "FIS YAZDIRILAMADI";
}
