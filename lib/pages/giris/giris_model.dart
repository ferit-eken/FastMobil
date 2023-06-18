import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GirisModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_plaka widget.
  TextEditingController? txtPlakaController;
  String? Function(BuildContext, String?)? txtPlakaControllerValidator;
  // State field(s) for txt_aractipi widget.
  String? txtAractipiValue;
  FormFieldController<String>? txtAractipiValueController;
  // State field(s) for ch_4 widget.
  bool? ch4Value;
  // State field(s) for ch_3 widget.
  bool? ch3Value;
  // State field(s) for ch_2 widget.
  bool? ch2Value;
  // State field(s) for ch_1 widget.
  bool? ch1Value;
  // State field(s) for ch_5 widget.
  bool? ch5Value;
  // State field(s) for ch_6 widget.
  bool? ch6Value;
  // State field(s) for ch_13 widget.
  bool? ch13Value;
  // State field(s) for ch_12 widget.
  bool? ch12Value;
  // State field(s) for ch_11 widget.
  bool? ch11Value;
  // State field(s) for ch_7 widget.
  bool? ch7Value;
  // State field(s) for ch_8 widget.
  bool? ch8Value;
  // State field(s) for ch_9 widget.
  bool? ch9Value;
  // State field(s) for ch_10 widget.
  bool? ch10Value;
  // Stores action output result for [Backend Call - API (AracGiris)] action in btn_giris widget.
  ApiCallResponse? apiResultork;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtPlakaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
