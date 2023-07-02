import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? textBackspace(String txt) {
  // return string substring
// TODO: Implement newCustomFunction
  if (txt.length == 0) {
    return "";
  }
  return txt.substring(0, txt.length - 1);
}
