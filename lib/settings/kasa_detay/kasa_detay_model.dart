import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kasa_detay_widget.dart' show KasaDetayWidget;
import 'package:flutter/material.dart';

class KasaDetayModel extends FlutterFlowModel<KasaDetayWidget> {
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
  // State field(s) for txt_dovizkod widget.
  FocusNode? txtDovizkodFocusNode;
  TextEditingController? txtDovizkodController;
  String? Function(BuildContext, String?)? txtDovizkodControllerValidator;
  // Stores action output result for [Backend Call - API (KasaUpdate)] action in Icon widget.
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

    txtDovizkodFocusNode?.dispose();
    txtDovizkodController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
