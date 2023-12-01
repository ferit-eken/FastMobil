import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'i_o_controller_detay_widget.dart' show IOControllerDetayWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class IOControllerDetayModel extends FlutterFlowModel<IOControllerDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_aciklama widget.
  FocusNode? txtAciklamaFocusNode;
  TextEditingController? txtAciklamaController;
  String? Function(BuildContext, String?)? txtAciklamaControllerValidator;
  // State field(s) for txt_baglantituru widget.
  String? txtBaglantituruValue;
  FormFieldController<String>? txtBaglantituruValueController;
  // State field(s) for txt_Id widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for ch_isactive widget.
  bool? chIsactiveValue;
  // State field(s) for txt_ipadres widget.
  FocusNode? txtIpadresFocusNode;
  TextEditingController? txtIpadresController;
  final txtIpadresMask = MaskTextInputFormatter(mask: '###.###.###.###');
  String? Function(BuildContext, String?)? txtIpadresControllerValidator;
  // State field(s) for txt_cikissayisi widget.
  int? txtCikissayisiValue;
  FormFieldController<int>? txtCikissayisiValueController;
  // State field(s) for txt_portno widget.
  int? txtPortnoValue;
  FormFieldController<int>? txtPortnoValueController;
  // State field(s) for txt_baudrate widget.
  int? txtBaudrateValue;
  FormFieldController<int>? txtBaudrateValueController;
  // State field(s) for txt_tetikaralik widget.
  int? txtTetikaralikValue;
  // Stores action output result for [Backend Call - API (IOControllerUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtAciklamaFocusNode?.dispose();
    txtAciklamaController?.dispose();

    txtIdFocusNode?.dispose();
    txtIdController?.dispose();

    txtIpadresFocusNode?.dispose();
    txtIpadresController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
