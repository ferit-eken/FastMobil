import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tarife_detay_widget.dart' show TarifeDetayWidget;
import 'package:flutter/material.dart';

class TarifeDetayModel extends FlutterFlowModel<TarifeDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_ad widget.
  FocusNode? txtAdFocusNode;
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_Id widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for txt_otopark widget.
  String? txtOtoparkValue;
  FormFieldController<String>? txtOtoparkValueController;
  // State field(s) for txt_Aractipi widget.
  String? txtAractipiValue;
  FormFieldController<String>? txtAractipiValueController;
  // State field(s) for txt_odemegecerlilik widget.
  FocusNode? txtOdemegecerlilikFocusNode;
  TextEditingController? txtOdemegecerlilikController;
  String? Function(BuildContext, String?)?
      txtOdemegecerlilikControllerValidator;
  // State field(s) for txt_ucretsizlimit widget.
  FocusNode? txtUcretsizlimitFocusNode;
  TextEditingController? txtUcretsizlimitController;
  String? Function(BuildContext, String?)? txtUcretsizlimitControllerValidator;
  // State field(s) for txt_gundonusum widget.
  FocusNode? txtGundonusumFocusNode;
  TextEditingController? txtGundonusumController;
  String? Function(BuildContext, String?)? txtGundonusumControllerValidator;
  // Stores action output result for [Backend Call - API (AboneTarifeUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtAdFocusNode?.dispose();
    txtAdController?.dispose();

    txtIdFocusNode?.dispose();
    txtIdController?.dispose();

    txtOdemegecerlilikFocusNode?.dispose();
    txtOdemegecerlilikController?.dispose();

    txtUcretsizlimitFocusNode?.dispose();
    txtUcretsizlimitController?.dispose();

    txtGundonusumFocusNode?.dispose();
    txtGundonusumController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
