import '/flutter_flow/flutter_flow_util.dart';
import 'tahsilat_form_widget.dart' show TahsilatFormWidget;
import 'package:flutter/material.dart';

class TahsilatFormModel extends FlutterFlowModel<TahsilatFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_tutar widget.
  FocusNode? txtTutarFocusNode;
  TextEditingController? txtTutarController;
  String? Function(BuildContext, String?)? txtTutarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTutarFocusNode?.dispose();
    txtTutarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
