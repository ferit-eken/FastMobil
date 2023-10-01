import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'kullanici_detay_widget.dart' show KullaniciDetayWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KullaniciDetayModel extends FlutterFlowModel<KullaniciDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_username widget.
  TextEditingController? txtUsernameController;
  String? Function(BuildContext, String?)? txtUsernameControllerValidator;
  // State field(s) for txt_kod widget.
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for txt_ad widget.
  TextEditingController? txtAdController;
  String? Function(BuildContext, String?)? txtAdControllerValidator;
  // State field(s) for txt_soyad widget.
  TextEditingController? txtSoyadController;
  String? Function(BuildContext, String?)? txtSoyadControllerValidator;
  // State field(s) for txt_gsm widget.
  TextEditingController? txtGsmController;
  String? Function(BuildContext, String?)? txtGsmControllerValidator;
  // State field(s) for txt_sifre widget.
  TextEditingController? txtSifreController;
  String? Function(BuildContext, String?)? txtSifreControllerValidator;
  // Stores action output result for [Backend Call - API (PersonelUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtUsernameController?.dispose();
    txtKodController?.dispose();
    txtAdController?.dispose();
    txtSoyadController?.dispose();
    txtGsmController?.dispose();
    txtSifreController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
