import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'urun_detay_widget.dart' show UrunDetayWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UrunDetayModel extends FlutterFlowModel<UrunDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_kod widget.
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for ch_durum widget.
  int? chDurumValue;
  FormFieldController<int>? chDurumValueController;
  // State field(s) for txt_urunadi widget.
  TextEditingController? txtUrunadiController;
  String? Function(BuildContext, String?)? txtUrunadiControllerValidator;
  // State field(s) for txt_fiyat widget.
  TextEditingController? txtFiyatController;
  String? Function(BuildContext, String?)? txtFiyatControllerValidator;
  // Stores action output result for [Backend Call - API (StokKayit)] action in Icon widget.
  ApiCallResponse? apiResultstokupdate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtKodController?.dispose();
    txtUrunadiController?.dispose();
    txtFiyatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
