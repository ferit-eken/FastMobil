import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aboneler_widget.dart' show AbonelerWidget;
import 'package:flutter/material.dart';

class AbonelerModel extends FlutterFlowModel<AbonelerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetID)] action in btn_new widget.
  ApiCallResponse? apiresultgetKod;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
