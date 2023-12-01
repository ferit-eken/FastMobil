import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'urun_detay_widget.dart' show UrunDetayWidget;
import 'package:flutter/material.dart';

class UrunDetayModel extends FlutterFlowModel<UrunDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_kod widget.
  FocusNode? txtKodFocusNode;
  TextEditingController? txtKodController;
  String? Function(BuildContext, String?)? txtKodControllerValidator;
  // State field(s) for ch_durum widget.
  int? chDurumValue;
  FormFieldController<int>? chDurumValueController;
  // State field(s) for txt_urunadi widget.
  FocusNode? txtUrunadiFocusNode;
  TextEditingController? txtUrunadiController;
  String? Function(BuildContext, String?)? txtUrunadiControllerValidator;
  // State field(s) for txt_fiyat widget.
  FocusNode? txtFiyatFocusNode;
  TextEditingController? txtFiyatController;
  String? Function(BuildContext, String?)? txtFiyatControllerValidator;
  // Stores action output result for [Backend Call - API (StokKayit)] action in Icon widget.
  ApiCallResponse? apiResultstokupdate;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtKodFocusNode?.dispose();
    txtKodController?.dispose();

    txtUrunadiFocusNode?.dispose();
    txtUrunadiController?.dispose();

    txtFiyatFocusNode?.dispose();
    txtFiyatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
