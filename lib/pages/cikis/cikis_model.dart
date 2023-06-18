import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class CikisModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_plaka widget.
  TextEditingController? txtPlakaController;
  String? Function(BuildContext, String?)? txtPlakaControllerValidator;
  // Stores action output result for [Backend Call - API (AracSorgu)] action in Button widget.
  ApiCallResponse? apiResultxex;
  var kamerarespnse = '';
  bool respBio = false;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtPlakaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
