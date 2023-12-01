import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'park_konum_detay_widget.dart' show ParkKonumDetayWidget;
import 'package:flutter/material.dart';

class ParkKonumDetayModel extends FlutterFlowModel<ParkKonumDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  FocusNode? txtAdFocusNode;
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for ch_isactive widget.
  bool? chIsactiveValue;
  // Stores action output result for [Backend Call - API (OtoparkKonumUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtAdFocusNode?.dispose();
    txtAdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
