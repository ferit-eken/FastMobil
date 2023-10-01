import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/tahsilat_form/tahsilat_form_widget.dart';
import '/pages/ucretsiz_secim/ucretsiz_secim_widget.dart';
import '/settings/menus/hasar_formu/hasar_formu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cikis_bilgi_model.dart';
export 'cikis_bilgi_model.dart';

class CikisBilgiWidget extends StatefulWidget {
  const CikisBilgiWidget({
    Key? key,
    required this.gecisId,
  }) : super(key: key);

  final int? gecisId;

  @override
  _CikisBilgiWidgetState createState() => _CikisBilgiWidgetState();
}

class _CikisBilgiWidgetState extends State<CikisBilgiWidget> {
  late CikisBilgiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CikisBilgiModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.resYazicidurum = await actions.getYaziciDurum();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'CikisBilgi',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF020000),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'ARAÇ ÇIKIŞI',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                    ),
              ),
              actions: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (_model.resYazicidurum == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              Icons.print_sharp,
                              color: Color(0xFF275F08),
                              size: 32.0,
                            ),
                          ),
                        if (_model.resYazicidurum == false)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              Icons.print_disabled,
                              color: Color(0xDBEB1313),
                              size: 32.0,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 15.0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: (_model.apiRequestCompleter ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(
                                                  PtsGroup.aracSorguCall.call(
                                                db: FFAppState().veritabani,
                                                command: 'HESAP',
                                                kapiGrupId: '1',
                                                aracTipId: '1',
                                                plaka: 'xx',
                                                id: widget.gecisId,
                                              )))
                                        .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final columnAracSorguResponse =
                                          snapshot.data!;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            child: Text(
                                              'Park Bilgileri',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Plaka',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .plaka(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Konum :',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .parkKonumAdi(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  'Anahtar :',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .anahtarKodu(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Ad Soyad',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .adSoyad(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .telefon(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Giriş Kapısı',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .girisKapiAd(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Giriş Zamanı',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .girisTarih(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Geçen Süre',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .gecenSure(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Geçiş Türü',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .girisTuru(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Park Ücreti',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .ucret(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF05055A),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Ek Hizmetler',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  '0',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFF4600),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'İndirim',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    PtsGroup.aracSorguCall
                                                        .indirim(
                                                          columnAracSorguResponse
                                                              .jsonBody,
                                                        )
                                                        .toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFF4600),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Tahsil Edilen',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .tahsilat(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF275F08),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Ödenecek Toplam',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Text(
                                                  PtsGroup.aracSorguCall
                                                      .kalan(
                                                        columnAracSorguResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 205.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 24.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Text(
                                                      'İşlemler',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: GridView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 5,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 1.0,
                                                        ),
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            TahsilatFormWidget(
                                                                          bakiye:
                                                                              valueOrDefault<double>(
                                                                            PtsGroup.aracSorguCall
                                                                                .kalan(
                                                                                  columnAracSorguResponse.jsonBody,
                                                                                )
                                                                                .toDouble(),
                                                                            0.0,
                                                                          ),
                                                                          baslik:
                                                                              'NAKIT TAHSILAT',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(() =>
                                                                        _model.resulttahsilatform =
                                                                            value));

                                                                if (_model
                                                                        .resulttahsilatform !=
                                                                    0.0) {
                                                                  _model.apiResultnakitislem =
                                                                      await PtsGroup
                                                                          .tahsilatCall
                                                                          .call(
                                                                    db: FFAppState()
                                                                        .veritabani,
                                                                    command:
                                                                        'NAKIT',
                                                                    id: widget
                                                                        .gecisId,
                                                                    userId: FFAppState()
                                                                        .UserId,
                                                                    kasaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.KasaKodu''',
                                                                    ).toString(),
                                                                    bankaKodu:
                                                                        0,
                                                                    tutar: _model
                                                                        .resulttahsilatform,
                                                                  );
                                                                  if (PtsGroup
                                                                      .tahsilatCall
                                                                      .succeeded(
                                                                    (_model.apiResultnakitislem
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )) {
                                                                    setState(() =>
                                                                        _model.apiRequestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                    if (PtsGroup
                                                                            .aracSorguCall
                                                                            .kalan(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        0) {
                                                                      _model.resultcikisfisprint1 =
                                                                          await actions
                                                                              .cikisFisiYazdir(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .Otopark,
                                                                          r'''$.OtoparkAdi''',
                                                                        ).toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .plaka(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .girisTarih(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .Kapi,
                                                                          r'''$.KapiAdi''',
                                                                        ).toString(),
                                                                        'OTOMOBIL',
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .UserInfo,
                                                                          r'''$.Username''',
                                                                        ).toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .cikisTarih(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .gecenSure(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .ucret(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .indirim(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .tutar(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        0.0,
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .tutar(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        '* Iyi Gunler Dileriz *',
                                                                        FFAppState()
                                                                            .FisUstBilgi1,
                                                                        FFAppState()
                                                                            .FisUstBilgi2,
                                                                        FFAppState()
                                                                            .FisAltBilgi1,
                                                                        FFAppState()
                                                                            .FisAltBilgi2,
                                                                        'PP4',
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .id(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                      );
                                                                    }
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Hata'),
                                                                          content: Text(PtsGroup
                                                                              .tahsilatCall
                                                                              .message(
                                                                                (_model.apiResultnakitislem?.jsonBody ?? ''),
                                                                              )
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .attach_money_outlined,
                                                                    color: Color(
                                                                        0xFF182C03),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Nakit Tahsilat',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            TahsilatFormWidget(
                                                                          bakiye:
                                                                              valueOrDefault<double>(
                                                                            PtsGroup.aracSorguCall
                                                                                .kalan(
                                                                                  columnAracSorguResponse.jsonBody,
                                                                                )
                                                                                .toDouble(),
                                                                            0.0,
                                                                          ),
                                                                          baslik:
                                                                              'KREDI KARTI',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(() =>
                                                                        _model.resulttahsilatformkredi =
                                                                            value));

                                                                if (_model
                                                                        .resulttahsilatformkredi !=
                                                                    0.0) {
                                                                  _model.apiResultkrediislem =
                                                                      await PtsGroup
                                                                          .tahsilatCall
                                                                          .call(
                                                                    db: FFAppState()
                                                                        .veritabani,
                                                                    command:
                                                                        'KREDI',
                                                                    id: widget
                                                                        .gecisId,
                                                                    userId: FFAppState()
                                                                        .UserId,
                                                                    kasaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.KasaKodu''',
                                                                    ).toString(),
                                                                    bankaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.BankaKodu''',
                                                                    ),
                                                                    tutar: valueOrDefault<
                                                                        double>(
                                                                      _model
                                                                          .resulttahsilatformkredi,
                                                                      0.0,
                                                                    ),
                                                                  );
                                                                  if (PtsGroup
                                                                      .tahsilatCall
                                                                      .succeeded(
                                                                    (_model.apiResultkrediislem
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )) {
                                                                    setState(() =>
                                                                        _model.apiRequestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                    if (PtsGroup
                                                                            .aracSorguCall
                                                                            .kalan(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        0) {
                                                                      _model.resultcikisfisprint2 =
                                                                          await actions
                                                                              .cikisFisiYazdir(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .Otopark,
                                                                          r'''$.OtoparkAdi''',
                                                                        ).toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .plaka(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .girisTarih(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .Kapi,
                                                                          r'''$.KapiAdi''',
                                                                        ).toString(),
                                                                        'OTOMOBIL',
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .UserInfo,
                                                                          r'''$.Username''',
                                                                        ).toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .cikisTarih(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .gecenSure(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .ucret(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .indirim(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .tutar(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        0.0,
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .tutar(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toDouble(),
                                                                        '* Iyi Gunler Dileriz *',
                                                                        FFAppState()
                                                                            .FisUstBilgi1,
                                                                        FFAppState()
                                                                            .FisUstBilgi2,
                                                                        FFAppState()
                                                                            .FisAltBilgi1,
                                                                        FFAppState()
                                                                            .FisAltBilgi2,
                                                                        'PP4',
                                                                        PtsGroup
                                                                            .aracSorguCall
                                                                            .id(
                                                                              columnAracSorguResponse.jsonBody,
                                                                            )
                                                                            .toString(),
                                                                      );
                                                                    }
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Hata'),
                                                                          content: Text(PtsGroup
                                                                              .tahsilatCall
                                                                              .message(
                                                                                (_model.apiResultkrediislem?.jsonBody ?? ''),
                                                                              )
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .credit_card_outlined,
                                                                    color: Color(
                                                                        0xFF182C03),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Kredi K. Tahsilat',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            TahsilatFormWidget(
                                                                          bakiye:
                                                                              valueOrDefault<double>(
                                                                            PtsGroup.aracSorguCall
                                                                                .kalan(
                                                                                  columnAracSorguResponse.jsonBody,
                                                                                )
                                                                                .toDouble(),
                                                                            0.0,
                                                                          ),
                                                                          baslik:
                                                                              'NAKIT IADE',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(() =>
                                                                        _model.resulttahsilatformiade =
                                                                            value));

                                                                if (_model
                                                                        .resulttahsilatformiade !=
                                                                    0.0) {
                                                                  _model.apiResultnakitiade =
                                                                      await PtsGroup
                                                                          .tahsilatCall
                                                                          .call(
                                                                    db: FFAppState()
                                                                        .veritabani,
                                                                    command:
                                                                        'NAKIT_IADE',
                                                                    id: widget
                                                                        .gecisId,
                                                                    userId: FFAppState()
                                                                        .UserId,
                                                                    kasaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.KasaKodu''',
                                                                    ).toString(),
                                                                    bankaKodu:
                                                                        0,
                                                                    tutar: _model
                                                                        .resulttahsilatformiade,
                                                                  );
                                                                  if (PtsGroup
                                                                      .tahsilatCall
                                                                      .succeeded(
                                                                    (_model.apiResultnakitiade
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )) {
                                                                    setState(() =>
                                                                        _model.apiRequestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Hata'),
                                                                          content: Text(PtsGroup
                                                                              .tahsilatCall
                                                                              .message(
                                                                                (_model.apiResultnakitiade?.jsonBody ?? ''),
                                                                              )
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .money_off,
                                                                    color: Color(
                                                                        0xDBEB1313),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Nakit\nİade',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            TahsilatFormWidget(
                                                                          bakiye:
                                                                              valueOrDefault<double>(
                                                                            PtsGroup.aracSorguCall
                                                                                .kalan(
                                                                                  columnAracSorguResponse.jsonBody,
                                                                                )
                                                                                .toDouble(),
                                                                            0.0,
                                                                          ),
                                                                          baslik:
                                                                              'KREDI KARTI IADE',
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(() =>
                                                                        _model.resulttahsilatformkrediiade =
                                                                            value));

                                                                if (_model
                                                                        .resulttahsilatformkrediiade !=
                                                                    0.0) {
                                                                  _model.apiResultkrediiadeislem =
                                                                      await PtsGroup
                                                                          .tahsilatCall
                                                                          .call(
                                                                    db: FFAppState()
                                                                        .veritabani,
                                                                    command:
                                                                        'KREDI_IADE',
                                                                    id: widget
                                                                        .gecisId,
                                                                    userId: FFAppState()
                                                                        .UserId,
                                                                    kasaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.KasaKodu''',
                                                                    ).toString(),
                                                                    bankaKodu:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.BankaKodu''',
                                                                    ),
                                                                    tutar: _model
                                                                        .resulttahsilatformkrediiade,
                                                                  );
                                                                  if (PtsGroup
                                                                      .tahsilatCall
                                                                      .succeeded(
                                                                    (_model.apiResultkrediiadeislem
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )) {
                                                                    setState(() =>
                                                                        _model.apiRequestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Hata'),
                                                                          content: Text(PtsGroup
                                                                              .tahsilatCall
                                                                              .message(
                                                                                (_model.apiResultkrediiadeislem?.jsonBody ?? ''),
                                                                              )
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .credit_card_outlined,
                                                                    color: Color(
                                                                        0xDBEB1313),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Kredi K. İade',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF275F08),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.9,
                                                                          child:
                                                                              UcretsizSecimWidget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(() =>
                                                                        _model.resultucretsizsecim =
                                                                            value));

                                                                if (_model
                                                                        .resultucretsizsecim !=
                                                                    null) {
                                                                  _model.apiResultucretsizcikis =
                                                                      await PtsGroup
                                                                          .hesapKapatCall
                                                                          .call(
                                                                    db: FFAppState()
                                                                        .veritabani,
                                                                    command:
                                                                        'CIKIS',
                                                                    id: widget
                                                                        .gecisId,
                                                                    userId: FFAppState()
                                                                        .UserId,
                                                                    kapiGrupId:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .KapiGrup,
                                                                      r'''$.Id''',
                                                                    ),
                                                                    kapiId:
                                                                        getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.Id''',
                                                                    ),
                                                                    cikisTuru:
                                                                        'UCRETSIZ',
                                                                    ucretsizEtiketId:
                                                                        _model
                                                                            .resultucretsizsecim,
                                                                  );
                                                                  if (PtsGroup
                                                                      .hesapKapatCall
                                                                      .succeeded(
                                                                    (_model.apiResultucretsizcikis
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )) {
                                                                    context
                                                                        .safePop();
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Hata'),
                                                                          content: Text(PtsGroup
                                                                              .hesapKapatCall
                                                                              .message(
                                                                                (_model.apiResultucretsizcikis?.jsonBody ?? ''),
                                                                              )
                                                                              .toString()),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .compare_arrows,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Ücretsiz',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.apiResultgef =
                                                                    await PtsGroup
                                                                        .hesapKapatCall
                                                                        .call(
                                                                  db: FFAppState()
                                                                      .veritabani,
                                                                  command:
                                                                      'CIKIS',
                                                                  id: widget
                                                                      .gecisId,
                                                                  userId:
                                                                      FFAppState()
                                                                          .UserId,
                                                                  kapiGrupId:
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .KapiGrup,
                                                                    r'''$.Id''',
                                                                  ),
                                                                  kapiId:
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .Kapi,
                                                                    r'''$.Id''',
                                                                  ),
                                                                  cikisTuru:
                                                                      'UCRETLI',
                                                                  ucretsizEtiketId:
                                                                      0,
                                                                );
                                                                if (PtsGroup
                                                                    .hesapKapatCall
                                                                    .succeeded(
                                                                  (_model.apiResultgef
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )) {
                                                                  context.goNamed(
                                                                      'HomePage');
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Hata'),
                                                                        content: Text(PtsGroup
                                                                            .hesapKapatCall
                                                                            .message(
                                                                              (_model.apiResultgef?.jsonBody ?? ''),
                                                                            )
                                                                            .toString()),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .calculate,
                                                                    color: Color(
                                                                        0xFF182C03),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Hesap Kapat',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (FFAppState()
                                                                  .yaziciAktif ==
                                                              true)
                                                            Container(
                                                              width: 95.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF182C03),
                                                                ),
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.resultcikisfis =
                                                                      await actions
                                                                          .cikisFisiYazdir(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .Otopark,
                                                                      r'''$.OtoparkAdi''',
                                                                    ).toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .plaka(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .girisTarih(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .Kapi,
                                                                      r'''$.KapiAdi''',
                                                                    ).toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .aracTipAdi(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .UserInfo,
                                                                      r'''$.Username''',
                                                                    ).toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .cikisTarih(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .gecenSure(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .ucret(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toDouble(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .indirim(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toDouble(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .tutar(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toDouble(),
                                                                    0.0,
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .tutar(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toDouble(),
                                                                    '* Iyi Gunler Dileriz *',
                                                                    FFAppState()
                                                                        .FisUstBilgi1,
                                                                    FFAppState()
                                                                        .FisUstBilgi2,
                                                                    FFAppState()
                                                                        .FisAltBilgi1,
                                                                    FFAppState()
                                                                        .FisAltBilgi2,
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .parkKonumAdi(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                    PtsGroup
                                                                        .aracSorguCall
                                                                        .id(
                                                                          columnAracSorguResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString(),
                                                                  );

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .print,
                                                                      color: Color(
                                                                          0xFF182C03),
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    Text(
                                                                      'Bilgi Fişi',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            HasarFormuWidget(
                                                                          gecisId:
                                                                              widget.gecisId!,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .report_gmailerrorred_sharp,
                                                                    color: Color(
                                                                        0xFF182C03),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Hasar Formu',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .add_road,
                                                                  color: Color(
                                                                      0xFF182C03),
                                                                  size: 22.0,
                                                                ),
                                                                Text(
                                                                  'Ek Hizmetler',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 95.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF182C03),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .local_parking_rounded,
                                                                  color: Color(
                                                                      0xFF182C03),
                                                                  size: 22.0,
                                                                ),
                                                                Text(
                                                                  'Konum',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
