import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TarifeFiyatDetayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_baslangic widget.
  TextEditingController? txtBaslangicController;
  final txtBaslangicMask = MaskTextInputFormatter(mask: '##:##:##');
  String? Function(BuildContext, String?)? txtBaslangicControllerValidator;
  // State field(s) for txt_bitis widget.
  TextEditingController? txtBitisController;
  final txtBitisMask = MaskTextInputFormatter(mask: '##:##:##');
  String? Function(BuildContext, String?)? txtBitisControllerValidator;
  // State field(s) for txt_fiyat widget.
  TextEditingController? txtFiyatController;
  String? Function(BuildContext, String?)? txtFiyatControllerValidator;
  // State field(s) for gun_1 widget.
  bool? gun1Value;
  // State field(s) for gun_2 widget.
  bool? gun2Value;
  // State field(s) for gum_3 widget.
  bool? gum3Value;
  // State field(s) for gun_4 widget.
  bool? gun4Value;
  // State field(s) for gun_5 widget.
  bool? gun5Value;
  // State field(s) for gun_6 widget.
  bool? gun6Value;
  // State field(s) for gun_0 widget.
  bool? gun0Value;
  // Stores action output result for [Backend Call - API (AboneTarifeFiyatUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtBaslangicController?.dispose();
    txtBitisController?.dispose();
    txtFiyatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
