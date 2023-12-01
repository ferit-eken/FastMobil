import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'abone_arac_detay_widget.dart' show AboneAracDetayWidget;
import 'package:flutter/material.dart';

class AboneAracDetayModel extends FlutterFlowModel<AboneAracDetayWidget> {
  ///  Local state fields for this page.

  int id = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_plaka widget.
  FocusNode? txtPlakaFocusNode;
  TextEditingController? txtPlakaController;
  String? Function(BuildContext, String?)? txtPlakaControllerValidator;
  // State field(s) for ch_isactive widget.
  bool? chIsactiveValue;
  // State field(s) for txt_adsoyad widget.
  FocusNode? txtAdsoyadFocusNode;
  TextEditingController? txtAdsoyadController;
  String? Function(BuildContext, String?)? txtAdsoyadControllerValidator;
  // State field(s) for txt_telefon widget.
  FocusNode? txtTelefonFocusNode;
  TextEditingController? txtTelefonController;
  String? Function(BuildContext, String?)? txtTelefonControllerValidator;
  // State field(s) for txt_kullanimturu widget.
  String? txtKullanimturuValue;
  FormFieldController<String>? txtKullanimturuValueController;
  // State field(s) for txt_aractipi widget.
  String? txtAractipiValue;
  FormFieldController<String>? txtAractipiValueController;
  // Stores action output result for [Backend Call - API (CariAracKayit)] action in btn_save widget.
  ApiCallResponse? apiResultg6j;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtPlakaFocusNode?.dispose();
    txtPlakaController?.dispose();

    txtAdsoyadFocusNode?.dispose();
    txtAdsoyadController?.dispose();

    txtTelefonFocusNode?.dispose();
    txtTelefonController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
