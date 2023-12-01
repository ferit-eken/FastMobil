import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gun_sonu_rapor_widget.dart' show GunSonuRaporWidget;
import 'package:flutter/material.dart';

class GunSonuRaporModel extends FlutterFlowModel<GunSonuRaporWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getYaziciDurum] action in gunSonuRapor widget.
  bool? resYazicidurum;
  // Stores action output result for [Custom Action - gunSonuFisiYazdir] action in Button widget.
  String? resfisyazdir;
  // Stores action output result for [Backend Call - API (GunsonuKapat)] action in Button widget.
  ApiCallResponse? apiResultzn4;

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
