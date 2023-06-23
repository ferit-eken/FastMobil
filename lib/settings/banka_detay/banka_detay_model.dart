import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BankaDetayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_kod widget.
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_sube widget.
  TextEditingController? txtSubeController;
  String? Function(BuildContext, String?)? txtSubeControllerValidator;
  // State field(s) for txt_hesap widget.
  TextEditingController? txtHesapController;
  String? Function(BuildContext, String?)? txtHesapControllerValidator;
  // State field(s) for txt_dovizkod widget.
  TextEditingController? txtDovizkodController;
  String? Function(BuildContext, String?)? txtDovizkodControllerValidator;
  // Stores action output result for [Backend Call - API (BankaUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtAdController?.dispose();
    txtKodController?.dispose();
    txtSubeController?.dispose();
    txtHesapController?.dispose();
    txtDovizkodController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
