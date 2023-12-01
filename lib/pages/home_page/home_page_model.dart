import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultotopark;
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultKapigrup;
  // Stores action output result for [Backend Call - API (GetRowData)] action in HomePage widget.
  ApiCallResponse? apiResultKapi;
  // Stores action output result for [Backend Call - API (GetALL)] action in HomePage widget.
  ApiCallResponse? apiResultAracTipleri;
  // Stores action output result for [Custom Action - getYaziciDurum] action in HomePage widget.
  bool? resyazicidurum;

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
