import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pos_detay_widget.dart' show PosDetayWidget;
import 'package:flutter/material.dart';

class PosDetayModel extends FlutterFlowModel<PosDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_cihazadi widget.
  FocusNode? txtCihazadiFocusNode;
  TextEditingController? txtCihazadiController;
  String? Function(BuildContext, String?)? txtCihazadiControllerValidator;
  // State field(s) for txt_marka widget.
  String? txtMarkaValue;
  FormFieldController<String>? txtMarkaValueController;
  // State field(s) for txt_Id widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for txt_baglantitipi widget.
  String? txtBaglantitipiValue;
  FormFieldController<String>? txtBaglantitipiValueController;
  // State field(s) for txt_adres widget.
  FocusNode? txtAdresFocusNode;
  TextEditingController? txtAdresController;
  String? Function(BuildContext, String?)? txtAdresControllerValidator;
  // State field(s) for txt_tcpport widget.
  FocusNode? txtTcpportFocusNode;
  TextEditingController? txtTcpportController;
  String? Function(BuildContext, String?)? txtTcpportControllerValidator;
  // State field(s) for txt_baudrate widget.
  FocusNode? txtBaudrateFocusNode;
  TextEditingController? txtBaudrateController;
  String? Function(BuildContext, String?)? txtBaudrateControllerValidator;
  // State field(s) for txt_poskey widget.
  FocusNode? txtPoskeyFocusNode;
  TextEditingController? txtPoskeyController;
  String? Function(BuildContext, String?)? txtPoskeyControllerValidator;
  // Stores action output result for [Backend Call - API (PosUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCihazadiFocusNode?.dispose();
    txtCihazadiController?.dispose();

    txtIdFocusNode?.dispose();
    txtIdController?.dispose();

    txtAdresFocusNode?.dispose();
    txtAdresController?.dispose();

    txtTcpportFocusNode?.dispose();
    txtTcpportController?.dispose();

    txtBaudrateFocusNode?.dispose();
    txtBaudrateController?.dispose();

    txtPoskeyFocusNode?.dispose();
    txtPoskeyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
