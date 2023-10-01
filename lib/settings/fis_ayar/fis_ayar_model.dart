import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fis_ayar_widget.dart' show FisAyarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FisAyarModel extends FlutterFlowModel<FisAyarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ust1 widget.
  TextEditingController? txtUst1Controller;
  String? Function(BuildContext, String?)? txtUst1ControllerValidator;
  // State field(s) for txt_ust2 widget.
  TextEditingController? txtUst2Controller;
  String? Function(BuildContext, String?)? txtUst2ControllerValidator;
  // State field(s) for txt_alt1 widget.
  TextEditingController? txtAlt1Controller;
  String? Function(BuildContext, String?)? txtAlt1ControllerValidator;
  // State field(s) for txt_alt2 widget.
  TextEditingController? txtAlt2Controller;
  String? Function(BuildContext, String?)? txtAlt2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtUst1Controller?.dispose();
    txtUst2Controller?.dispose();
    txtAlt1Controller?.dispose();
    txtAlt2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
