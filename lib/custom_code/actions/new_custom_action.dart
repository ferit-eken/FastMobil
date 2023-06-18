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

Future newCustomAction() async {
  // bluetooth printer out

  // Get the instance of the bluetooth printer
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  // Connect to bluetooth printer
  bool? isConnected = await bluetooth.isConnected;

  List<BluetoothDevice> devices = [];
  try {
    devices = await bluetooth.getBondedDevices();
  } on PlatformException {}

  if (!isConnected! && devices.length > 0) {
    isConnected = await bluetooth.connect(devices[0]);
    if (!isConnected!) {
      return;
    }
  }
  bluetooth.printCustom("DENEME", 3, 1);
  // Print a line
  bluetooth.printCustom("DENEME 2", 3, 1);
  bluetooth.printCustom("DENEME 3", 3, 1);

  // Print a line with bold
  bluetooth.printNewLine();
  bluetooth.printNewLine();
  bluetooth.printNewLine();
  bluetooth.printNewLine();
  bluetooth.printNewLine();

  bluetooth.printNewLine();
}
