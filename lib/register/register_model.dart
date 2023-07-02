import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_firmakodu widget.
  TextEditingController? txtFirmakoduController;
  String? Function(BuildContext, String?)? txtFirmakoduControllerValidator;
  // State field(s) for txt_firmaadi widget.
  TextEditingController? txtFirmaadiController;
  String? Function(BuildContext, String?)? txtFirmaadiControllerValidator;
  // State field(s) for txt_unvan widget.
  TextEditingController? txtUnvanController;
  String? Function(BuildContext, String?)? txtUnvanControllerValidator;
  // State field(s) for txt_adres widget.
  TextEditingController? txtAdresController;
  String? Function(BuildContext, String?)? txtAdresControllerValidator;
  // State field(s) for txt_vergidaire widget.
  TextEditingController? txtVergidaireController;
  String? Function(BuildContext, String?)? txtVergidaireControllerValidator;
  // State field(s) for txt_vergino widget.
  TextEditingController? txtVerginoController;
  String? Function(BuildContext, String?)? txtVerginoControllerValidator;
  // State field(s) for txt_yetkili widget.
  TextEditingController? txtYetkiliController;
  String? Function(BuildContext, String?)? txtYetkiliControllerValidator;
  // State field(s) for txt_telefon widget.
  TextEditingController? txtTelefonController;
  String? Function(BuildContext, String?)? txtTelefonControllerValidator;
  // State field(s) for txt_ulke widget.
  TextEditingController? txtUlkeController;
  String? Function(BuildContext, String?)? txtUlkeControllerValidator;
  // State field(s) for txt_sehir widget.
  TextEditingController? txtSehirController;
  String? Function(BuildContext, String?)? txtSehirControllerValidator;
  // State field(s) for txt_ilce widget.
  TextEditingController? txtIlceController;
  String? Function(BuildContext, String?)? txtIlceControllerValidator;
  // State field(s) for txt_mail widget.
  TextEditingController? txtMailController;
  String? Function(BuildContext, String?)? txtMailControllerValidator;
  // State field(s) for txt_password widget.
  TextEditingController? txtPasswordController;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? apiResultregister;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtFirmakoduController?.dispose();
    txtFirmaadiController?.dispose();
    txtUnvanController?.dispose();
    txtAdresController?.dispose();
    txtVergidaireController?.dispose();
    txtVerginoController?.dispose();
    txtYetkiliController?.dispose();
    txtTelefonController?.dispose();
    txtUlkeController?.dispose();
    txtSehirController?.dispose();
    txtIlceController?.dispose();
    txtMailController?.dispose();
    txtPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
