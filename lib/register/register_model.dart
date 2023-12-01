import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_firmakodu widget.
  FocusNode? txtFirmakoduFocusNode;
  TextEditingController? txtFirmakoduController;
  String? Function(BuildContext, String?)? txtFirmakoduControllerValidator;
  // State field(s) for txt_firmaadi widget.
  FocusNode? txtFirmaadiFocusNode;
  TextEditingController? txtFirmaadiController;
  String? Function(BuildContext, String?)? txtFirmaadiControllerValidator;
  // State field(s) for txt_unvan widget.
  FocusNode? txtUnvanFocusNode;
  TextEditingController? txtUnvanController;
  String? Function(BuildContext, String?)? txtUnvanControllerValidator;
  // State field(s) for txt_adres widget.
  FocusNode? txtAdresFocusNode;
  TextEditingController? txtAdresController;
  String? Function(BuildContext, String?)? txtAdresControllerValidator;
  // State field(s) for txt_vergidaire widget.
  FocusNode? txtVergidaireFocusNode;
  TextEditingController? txtVergidaireController;
  String? Function(BuildContext, String?)? txtVergidaireControllerValidator;
  // State field(s) for txt_vergino widget.
  FocusNode? txtVerginoFocusNode;
  TextEditingController? txtVerginoController;
  String? Function(BuildContext, String?)? txtVerginoControllerValidator;
  // State field(s) for txt_yetkili widget.
  FocusNode? txtYetkiliFocusNode;
  TextEditingController? txtYetkiliController;
  String? Function(BuildContext, String?)? txtYetkiliControllerValidator;
  // State field(s) for txt_telefon widget.
  FocusNode? txtTelefonFocusNode;
  TextEditingController? txtTelefonController;
  String? Function(BuildContext, String?)? txtTelefonControllerValidator;
  // State field(s) for txt_ulke widget.
  FocusNode? txtUlkeFocusNode;
  TextEditingController? txtUlkeController;
  String? Function(BuildContext, String?)? txtUlkeControllerValidator;
  // State field(s) for txt_sehir widget.
  FocusNode? txtSehirFocusNode;
  TextEditingController? txtSehirController;
  String? Function(BuildContext, String?)? txtSehirControllerValidator;
  // State field(s) for txt_ilce widget.
  FocusNode? txtIlceFocusNode;
  TextEditingController? txtIlceController;
  String? Function(BuildContext, String?)? txtIlceControllerValidator;
  // State field(s) for txt_mail widget.
  FocusNode? txtMailFocusNode;
  TextEditingController? txtMailController;
  String? Function(BuildContext, String?)? txtMailControllerValidator;
  // State field(s) for txt_password widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? apiResultregister;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtFirmakoduFocusNode?.dispose();
    txtFirmakoduController?.dispose();

    txtFirmaadiFocusNode?.dispose();
    txtFirmaadiController?.dispose();

    txtUnvanFocusNode?.dispose();
    txtUnvanController?.dispose();

    txtAdresFocusNode?.dispose();
    txtAdresController?.dispose();

    txtVergidaireFocusNode?.dispose();
    txtVergidaireController?.dispose();

    txtVerginoFocusNode?.dispose();
    txtVerginoController?.dispose();

    txtYetkiliFocusNode?.dispose();
    txtYetkiliController?.dispose();

    txtTelefonFocusNode?.dispose();
    txtTelefonController?.dispose();

    txtUlkeFocusNode?.dispose();
    txtUlkeController?.dispose();

    txtSehirFocusNode?.dispose();
    txtSehirController?.dispose();

    txtIlceFocusNode?.dispose();
    txtIlceController?.dispose();

    txtMailFocusNode?.dispose();
    txtMailController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
