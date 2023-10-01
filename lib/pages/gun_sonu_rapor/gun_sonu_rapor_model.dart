import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'gun_sonu_rapor_widget.dart' show GunSonuRaporWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GunSonuRaporModel extends FlutterFlowModel<GunSonuRaporWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getYaziciDurum] action in gunSonuRapor widget.
  bool? resYazicidurum;
  // Stores action output result for [Custom Action - gunSonuFisiYazdir] action in Button widget.
  String? resfisyazdir;
  // Stores action output result for [Backend Call - API (GunsonuKapat)] action in Button widget.
  ApiCallResponse? apiResultzn4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
