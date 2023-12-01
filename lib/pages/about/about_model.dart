import '/flutter_flow/flutter_flow_util.dart';
import 'about_widget.dart' show AboutWidget;
import 'package:flutter/material.dart';

class AboutModel extends FlutterFlowModel<AboutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - downloadFileMng] action in Button widget.
  String? resdownload;
  // Stores action output result for [Custom Action - executeFile] action in Button widget.
  String? resinstall;
  // Stores action output result for [Custom Action - downloadLogoFile] action in Button widget.
  String? reslogodownload;

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
