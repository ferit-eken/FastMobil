import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'kapi_detay_widget.dart' show KapiDetayWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KapiDetayModel extends FlutterFlowModel<KapiDetayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_kapiadi widget.
  FocusNode? txtKapiadiFocusNode;
  TextEditingController? txtKapiadiController;
  String? Function(BuildContext, String?)? txtKapiadiControllerValidator;
  // State field(s) for txt_giristuru widget.
  String? txtGiristuruValue;
  FormFieldController<String>? txtGiristuruValueController;
  // State field(s) for txt_Id widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdController;
  String? Function(BuildContext, String?)? txtIdControllerValidator;
  // State field(s) for ch_tanimsizonay widget.
  bool? chTanimsizonayValue;
  // State field(s) for ch_geciskaydi widget.
  bool? chGeciskaydiValue;
  // State field(s) for ch_goruntuisleme widget.
  bool? chGoruntuislemeValue;
  // State field(s) for txt_kamera widget.
  String? txtKameraValue;
  FormFieldController<String>? txtKameraValueController;
  // State field(s) for txt_iocontroller widget.
  String? txtIocontrollerValue;
  FormFieldController<String>? txtIocontrollerValueController;
  // State field(s) for txt_tetikno widget.
  int? txtTetiknoValue;
  FormFieldController<int>? txtTetiknoValueController;
  // State field(s) for txt_ledpanel widget.
  String? txtLedpanelValue;
  FormFieldController<String>? txtLedpanelValueController;
  // State field(s) for txt_kasalar widget.
  String? txtKasalarValue;
  FormFieldController<String>? txtKasalarValueController;
  // State field(s) for txt_banka widget.
  String? txtBankaValue;
  FormFieldController<String>? txtBankaValueController;
  // State field(s) for ch_poscihazi widget.
  String? chPoscihaziValue;
  FormFieldController<String>? chPoscihaziValueController;
  // State field(s) for ch_abonegecis widget.
  bool? chAbonegecisValue;
  // State field(s) for ch_ucretligecis widget.
  bool? chUcretligecisValue;
  // State field(s) for ch_misafirgecis widget.
  bool? chMisafirgecisValue;
  // State field(s) for ch_odemenoktasi widget.
  bool? chOdemenoktasiValue;
  // Stores action output result for [Backend Call - API (OtoparkKapiUpdate)] action in Icon widget.
  ApiCallResponse? apiResultgar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtKapiadiFocusNode?.dispose();
    txtKapiadiController?.dispose();

    txtIdFocusNode?.dispose();
    txtIdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
