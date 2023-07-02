import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KeyboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_content widget.
  TextEditingController? txtContentController;
  String? Function(BuildContext, String?)? txtContentControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtContentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
