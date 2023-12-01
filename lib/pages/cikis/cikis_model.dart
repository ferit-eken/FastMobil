import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cikis_widget.dart' show CikisWidget;
import 'package:flutter/material.dart';

class CikisModel extends FlutterFlowModel<CikisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_plaka widget.
  FocusNode? txtPlakaFocusNode;
  TextEditingController? txtPlakaController;
  String? Function(BuildContext, String?)? txtPlakaControllerValidator;
  // Stores action output result for [Backend Call - API (AracSorgu)] action in Button widget.
  ApiCallResponse? apiResultxex;
  var kamerarespnse = '';
  // Stores action output result for [Backend Call - API (AracSorgu)] action in Column widget.
  ApiCallResponse? apiResultqrsorgu;
  // Stores action output result for [Bottom Sheet - keyboard] action in Column widget.
  String? reskeyboard;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtPlakaFocusNode?.dispose();
    txtPlakaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
