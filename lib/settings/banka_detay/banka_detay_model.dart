import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'banka_detay_widget.dart' show BankaDetayWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BankaDetayModel extends FlutterFlowModel<BankaDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  FocusNode? txtAdFocusNode;
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_kod widget.
  FocusNode? txtKodFocusNode;
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_sube widget.
  FocusNode? txtSubeFocusNode;
  TextEditingController? txtSubeController;
  String? Function(BuildContext, String?)? txtSubeControllerValidator;
  // State field(s) for txt_hesap widget.
  FocusNode? txtHesapFocusNode;
  TextEditingController? txtHesapController;
  String? Function(BuildContext, String?)? txtHesapControllerValidator;
  // State field(s) for txt_dovizkod widget.
  FocusNode? txtDovizkodFocusNode;
  TextEditingController? txtDovizkodController;
  String? Function(BuildContext, String?)? txtDovizkodControllerValidator;
  // Stores action output result for [Backend Call - API (BankaUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtAdFocusNode?.dispose();
    txtAdController?.dispose();

    txtKodFocusNode?.dispose();
    txtKodController?.dispose();

    txtSubeFocusNode?.dispose();
    txtSubeController?.dispose();

    txtHesapFocusNode?.dispose();
    txtHesapController?.dispose();

    txtDovizkodFocusNode?.dispose();
    txtDovizkodController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
