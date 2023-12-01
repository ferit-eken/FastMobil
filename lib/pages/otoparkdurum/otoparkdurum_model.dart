import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otoparkdurum_widget.dart' show OtoparkdurumWidget;
import 'package:flutter/material.dart';

class OtoparkdurumModel extends FlutterFlowModel<OtoparkdurumWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetRowFilterData)] action in Container widget.
  ApiCallResponse? apiResultqqb;

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
