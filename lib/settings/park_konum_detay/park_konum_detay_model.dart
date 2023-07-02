import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ParkKonumDetayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for ch_isactive widget.
  bool? chIsactiveValue;
  // Stores action output result for [Backend Call - API (OtoparkKonumUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtAdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
