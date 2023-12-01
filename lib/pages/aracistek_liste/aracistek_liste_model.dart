import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aracistek_liste_widget.dart' show AracistekListeWidget;
import 'package:flutter/material.dart';

class AracistekListeModel extends FlutterFlowModel<AracistekListeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (AracSorgu)] action in Row widget.
  ApiCallResponse? apiResultqit;

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
