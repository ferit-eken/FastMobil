import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PosDetayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_cihazadi widget.
  TextEditingController? txtCihazadiController;
  String? Function(BuildContext, String?)? txtCihazadiControllerValidator;
  // State field(s) for txt_marka widget.
  String? txtMarkaValue;
  FormFieldController<String>? txtMarkaValueController;
  // State field(s) for txt_Id widget.
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for txt_baglantitipi widget.
  String? txtBaglantitipiValue;
  FormFieldController<String>? txtBaglantitipiValueController;
  // State field(s) for txt_adres widget.
  TextEditingController? txtAdresController;
  String? Function(BuildContext, String?)? txtAdresControllerValidator;
  // State field(s) for txt_tcpport widget.
  TextEditingController? txtTcpportController;
  String? Function(BuildContext, String?)? txtTcpportControllerValidator;
  // State field(s) for txt_baudrate widget.
  TextEditingController? txtBaudrateController;
  String? Function(BuildContext, String?)? txtBaudrateControllerValidator;
  // State field(s) for txt_poskey widget.
  TextEditingController? txtPoskeyController;
  String? Function(BuildContext, String?)? txtPoskeyControllerValidator;
  // Stores action output result for [Backend Call - API (PosUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtCihazadiController?.dispose();
    txtIdController?.dispose();
    txtAdresController?.dispose();
    txtTcpportController?.dispose();
    txtBaudrateController?.dispose();
    txtPoskeyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
