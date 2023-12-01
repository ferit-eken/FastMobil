import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tarife_fiyat_detay_widget.dart' show TarifeFiyatDetayWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TarifeFiyatDetayModel extends FlutterFlowModel<TarifeFiyatDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_baslangic widget.
  FocusNode? txtBaslangicFocusNode;
  TextEditingController? txtBaslangicController;
  final txtBaslangicMask = MaskTextInputFormatter(mask: '##:##:##');
  String? Function(BuildContext, String?)? txtBaslangicControllerValidator;
  // State field(s) for txt_bitis widget.
  FocusNode? txtBitisFocusNode;
  TextEditingController? txtBitisController;
  final txtBitisMask = MaskTextInputFormatter(mask: '##:##:##');
  String? Function(BuildContext, String?)? txtBitisControllerValidator;
  // State field(s) for txt_fiyat widget.
  FocusNode? txtFiyatFocusNode;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtBaslangicFocusNode?.dispose();
    txtBaslangicController?.dispose();

    txtBitisFocusNode?.dispose();
    txtBitisController?.dispose();

    txtFiyatFocusNode?.dispose();
    txtFiyatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
