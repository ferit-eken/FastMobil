// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:flutter/foundation.dart';

Future<String> downloadLogoFile(
  String url,
  String fileName,
  String dir,
) async {
  // Add your function code here!

  HttpClient httpClient = new HttpClient();
  File file;
  String filePath = '';
  String myUrl = '';

  try {
    myUrl = url + '/' + fileName;
    var request = await httpClient.getUrl(Uri.parse(myUrl));
    var response = await request.close();
    if (response.statusCode == 200) {
      var bytes = await consolidateHttpClientResponseBytes(response);
      filePath = '$dir/Firmalogo.png';
      file = File(filePath);
      await file.writeAsBytes(bytes, mode: FileMode.write, flush: true);
    } else
      filePath = 'ERROR';
  } catch (ex) {
    filePath = 'ERROR';
  }

  return filePath;
}
