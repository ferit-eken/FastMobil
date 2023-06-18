import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/settings/menus/sol_menu/sol_menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultotopark;
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultKapigrup;
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultKapi;
  // Stores action output result for [Backend Call - API (GetALL)] action in HomePage widget.
  ApiCallResponse? apiResultAracTipleri;
  // Stores action output result for [Custom Action - getYaziciDurum] action in HomePage widget.
  bool? resultYazicidurum;
  // Stores action output result for [Custom Action - girisFisiYazdir] action in Column widget.
  String? resultfisyazdir;
  // Stores action output result for [Custom Action - getYaziciListe] action in prn_disconnected widget.
  List<dynamic>? resultyaziciliste;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
