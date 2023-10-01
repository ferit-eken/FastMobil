import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tarife_detay_widget.dart' show TarifeDetayWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TarifeDetayModel extends FlutterFlowModel<TarifeDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_Id widget.
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for txt_otopark widget.
  String? txtOtoparkValue;
  FormFieldController<String>? txtOtoparkValueController;
  // State field(s) for txt_Aractipi widget.
  String? txtAractipiValue;
  FormFieldController<String>? txtAractipiValueController;
  // State field(s) for txt_odemegecerlilik widget.
  TextEditingController? txtOdemegecerlilikController;
  String? Function(BuildContext, String?)?
      txtOdemegecerlilikControllerValidator;
  // State field(s) for txt_ucretsizlimit widget.
  TextEditingController? txtUcretsizlimitController;
  String? Function(BuildContext, String?)? txtUcretsizlimitControllerValidator;
  // State field(s) for txt_gundonusum widget.
  TextEditingController? txtGundonusumController;
  String? Function(BuildContext, String?)? txtGundonusumControllerValidator;
  // Stores action output result for [Backend Call - API (AboneTarifeUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtAdController?.dispose();
    txtIdController?.dispose();
    txtOdemegecerlilikController?.dispose();
    txtUcretsizlimitController?.dispose();
    txtGundonusumController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
