import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'i_o_controller_widget.dart' show IOControllerWidget;
import 'package:flutter/material.dart';

class IOControllerModel extends FlutterFlowModel<IOControllerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetID)] action in IconButton widget.
  ApiCallResponse? apiResultgetId;
  // Stores action output result for [Backend Call - API (GetRowData)] action in IconButton widget.
  ApiCallResponse? apiresultnewrow;

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
