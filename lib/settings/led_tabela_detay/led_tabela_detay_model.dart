import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'led_tabela_detay_widget.dart' show LedTabelaDetayWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LedTabelaDetayModel extends FlutterFlowModel<LedTabelaDetayWidget> {
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
  // State field(s) for txt_baglantituru widget.
  String? txtBaglantituruValue;
  FormFieldController<String>? txtBaglantituruValueController;
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
  FocusNode? txtPoskeyFocusNode1;
  TextEditingController? txtPoskeyController1;
  String? Function(BuildContext, String?)? txtPoskeyController1Validator;
  // State field(s) for txt_poskey widget.
  FocusNode? txtPoskeyFocusNode2;
  TextEditingController? txtPoskeyController2;
  String? Function(BuildContext, String?)? txtPoskeyController2Validator;
  // State field(s) for txt_beklemesure widget.
  int? txtBeklemesureValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (LedPanelUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

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

    txtPoskeyFocusNode1?.dispose();
    txtPoskeyController1?.dispose();

    txtPoskeyFocusNode2?.dispose();
    txtPoskeyController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
