import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/tahsilat_form/tahsilat_form_widget.dart';
import '/pages/ucretsiz_secim/ucretsiz_secim_widget.dart';
import '/settings/menus/hasar_formu/hasar_formu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cikis_bilgi_widget.dart' show CikisBilgiWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CikisBilgiModel extends FlutterFlowModel<CikisBilgiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getYaziciDurum] action in CikisBilgi widget.
  bool? resYazicidurum;
  // Stores action output result for [Bottom Sheet - TahsilatForm] action in Column widget.
  double? resulttahsilatform;
  // Stores action output result for [Backend Call - API (Tahsilat)] action in Column widget.
  ApiCallResponse? apiResultnakitislem;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Custom Action - cikisFisiYazdir] action in Column widget.
  String? resultcikisfisprint1;
  // Stores action output result for [Bottom Sheet - TahsilatForm] action in Column widget.
  double? resulttahsilatformkredi;
  // Stores action output result for [Backend Call - API (Tahsilat)] action in Column widget.
  ApiCallResponse? apiResultkrediislem;
  // Stores action output result for [Custom Action - cikisFisiYazdir] action in Column widget.
  String? resultcikisfisprint2;
  // Stores action output result for [Bottom Sheet - TahsilatForm] action in Column widget.
  double? resulttahsilatformiade;
  // Stores action output result for [Backend Call - API (Tahsilat)] action in Column widget.
  ApiCallResponse? apiResultnakitiade;
  // Stores action output result for [Bottom Sheet - TahsilatForm] action in Column widget.
  double? resulttahsilatformkrediiade;
  // Stores action output result for [Backend Call - API (Tahsilat)] action in Column widget.
  ApiCallResponse? apiResultkrediiadeislem;
  // Stores action output result for [Bottom Sheet - ucretsiz_secim] action in Column widget.
  int? resultucretsizsecim;
  // Stores action output result for [Backend Call - API (HesapKapat)] action in Column widget.
  ApiCallResponse? apiResultucretsizcikis;
  // Stores action output result for [Backend Call - API (HesapKapat)] action in Column widget.
  ApiCallResponse? apiResultgef;
  // Stores action output result for [Custom Action - cikisFisiYazdir] action in Column widget.
  String? resultcikisfis;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
