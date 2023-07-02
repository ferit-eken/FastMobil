// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:open_filex/open_filex.dart';

import 'package:path_provider/path_provider.dart';

Future<String> executeFile(String apkUrl) async {
  try {
    OpenFilex.open(apkUrl);
    return 'APK installed successfully at $apkUrl';
  } catch (e) {
    return 'Error installing APK: $e';
  }
}
