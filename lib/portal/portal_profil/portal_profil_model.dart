import '/flutter_flow/flutter_flow_util.dart';
import '/portal/poral_menu/side_menu/side_menu_widget.dart';
import 'portal_profil_widget.dart' show PortalProfilWidget;
import 'package:flutter/material.dart';

class PortalProfilModel extends FlutterFlowModel<PortalProfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side_menu component.
  late SideMenuModel sideMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
