import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/portal/poral_menu/side_menu/side_menu_widget.dart';
import 'portal_mainpage_widget.dart' show PortalMainpageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PortalMainpageModel extends FlutterFlowModel<PortalMainpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side_menu component.
  late SideMenuModel sideMenuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
