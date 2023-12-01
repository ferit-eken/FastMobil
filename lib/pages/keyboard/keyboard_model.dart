import '/flutter_flow/flutter_flow_util.dart';
import 'keyboard_widget.dart' show KeyboardWidget;
import 'package:flutter/material.dart';

class KeyboardModel extends FlutterFlowModel<KeyboardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_content widget.
  FocusNode? txtContentFocusNode;
  TextEditingController? txtContentController;
  String? Function(BuildContext, String?)? txtContentControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtContentFocusNode?.dispose();
    txtContentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
