import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kullanici_detay_widget.dart' show KullaniciDetayWidget;
import 'package:flutter/material.dart';

class KullaniciDetayModel extends FlutterFlowModel<KullaniciDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_username widget.
  FocusNode? txtUsernameFocusNode;
  TextEditingController? txtUsernameController;
  String? Function(BuildContext, String?)? txtUsernameControllerValidator;
  // State field(s) for txt_kod widget.
  FocusNode? txtKodFocusNode;
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_ad widget.
  FocusNode? txtAdFocusNode;
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_soyad widget.
  FocusNode? txtSoyadFocusNode;
  TextEditingController? txtSoyadController;
  String? Function(BuildContext, String?)? txtSoyadControllerValidator;
  // State field(s) for txt_gsm widget.
  FocusNode? txtGsmFocusNode;
  TextEditingController? txtGsmController;
  String? Function(BuildContext, String?)? txtGsmControllerValidator;
  // State field(s) for txt_sifre widget.
  FocusNode? txtSifreFocusNode;
  TextEditingController? txtSifreController;
  String? Function(BuildContext, String?)? txtSifreControllerValidator;
  // Stores action output result for [Backend Call - API (PersonelUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtUsernameFocusNode?.dispose();
    txtUsernameController?.dispose();

    txtKodFocusNode?.dispose();
    txtKodController?.dispose();

    txtAdFocusNode?.dispose();
    txtAdController?.dispose();

    txtSoyadFocusNode?.dispose();
    txtSoyadController?.dispose();

    txtGsmFocusNode?.dispose();
    txtGsmController?.dispose();

    txtSifreFocusNode?.dispose();
    txtSifreController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
