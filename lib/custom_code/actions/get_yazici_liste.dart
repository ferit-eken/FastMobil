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

Future<List<dynamic>?> getYaziciListe() async {
  // Add your function code here!
  // bluetooth printer out

  // Get the instance of the bluetooth printer
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  // Connect to bluetooth printer
  bool? isConnected = await bluetooth.isConnected;

  if (isConnected == true) {
    List<BluetoothDevice> devices = [];
    try {
      devices = await bluetooth.getBondedDevices();
    } on PlatformException {}

    return devices;
  }
}
