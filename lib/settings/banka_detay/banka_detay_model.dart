import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'banka_detay_widget.dart' show BankaDetayWidget;
import 'package:flutter/material.dart';

class BankaDetayModel extends FlutterFlowModel<BankaDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  FocusNode? txtAdFocusNode;
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_kod widget.
  FocusNode? txtKodFocusNode;
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_sube widget.
  FocusNode? txtSubeFocusNode;
  TextEditingController? txtSubeController;
  String? Function(BuildContext, String?)? txtSubeControllerValidator;
  // State field(s) for txt_hesap widget.
  FocusNode? txtHesapFocusNode;
  TextEditingController? txtHesapController;
  String? Function(BuildContext, String?)? txtHesapControllerValidator;
  // State field(s) for txt_dovizkod widget.
  FocusNode? txtDovizkodFocusNode;
  TextEditingController? txtDovizkodController;
  String? Function(BuildContext, String?)? txtDovizkodControllerValidator;
  // Stores action output result for [Backend Call - API (BankaUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtAdFocusNode?.dispose();
    txtAdController?.dispose();

    txtKodFocusNode?.dispose();
    txtKodController?.dispose();

    txtSubeFocusNode?.dispose();
    txtSubeController?.dispose();

    txtHesapFocusNode?.dispose();
    txtHesapController?.dispose();

    txtDovizkodFocusNode?.dispose();
    txtDovizkodController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
