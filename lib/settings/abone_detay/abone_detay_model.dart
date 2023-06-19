import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboneDetayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ch_carigrup widget.
  String? chCarigrupValue;
  FormFieldController<String>? chCarigrupValueController;
  // State field(s) for ch_durum widget.
  int? chDurumValue;
  FormFieldController<int>? chDurumValueController;
  // State field(s) for txt_kod widget.
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_unvan widget.
  TextEditingController? txtUnvanController;
  String? Function(BuildContext, String?)? txtUnvanControllerValidator;
  // State field(s) for txt_telefon widget.
  TextEditingController? txtTelefonController;
  String? Function(BuildContext, String?)? txtTelefonControllerValidator;
  // State field(s) for txt_mail widget.
  TextEditingController? txtMailController;
  String? Function(BuildContext, String?)? txtMailControllerValidator;
  // State field(s) for txt_adres widget.
  TextEditingController? txtAdresController;
  String? Function(BuildContext, String?)? txtAdresControllerValidator;
  // State field(s) for txt_not widget.
  TextEditingController? txtNotController;
  String? Function(BuildContext, String?)? txtNotControllerValidator;
  // Stores action output result for [Backend Call - API (CariKayit)] action in Icon widget.
  ApiCallResponse? apiResultcariupdate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtKodController?.dispose();
    txtUnvanController?.dispose();
    txtTelefonController?.dispose();
    txtMailController?.dispose();
    txtAdresController?.dispose();
    txtNotController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
