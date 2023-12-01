import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Settings',
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
                'Sistem Ayarları',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Aktif Otopark',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: SettingsGroup.getALLCall.call(
                                      db: FFAppState().veritabani,
                                      tablename: 'Otopark',
                                    ),
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
                                      final txtOtoparkGetALLResponse =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<String>(
                                        controller:
                                            _model.txtOtoparkValueController ??=
                                                FormFieldController<String>(
                                          _model.txtOtoparkValue ??=
                                              FFAppState().OtoparkId,
                                        ),
                                        options: List<String>.from(
                                            (getJsonField(
                                          txtOtoparkGetALLResponse.jsonBody,
                                          r'''$.data[:].Id''',
                                          true,
                                        ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()!),
                                        optionLabels: (getJsonField(
                                          txtOtoparkGetALLResponse.jsonBody,
                                          r'''$.data[:].OtoparkAdi''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList()!,
                                        onChanged: (val) async {
                                          setState(() =>
                                              _model.txtOtoparkValue = val);
                                          setState(() {
                                            FFAppState().OtoparkId =
                                                _model.txtOtoparkValue!;
                                          });
                                          setState(() => _model
                                              .apiRequestCompleter1 = null);
                                          await _model
                                              .waitForApiRequestCompleted1();
                                        },
                                        width: 200.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        hintText: 'Please select...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Otopark Bölümü',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter1 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(SettingsGroup
                                                    .getALLCall
                                                    .call(
                                                  db: FFAppState().veritabani,
                                                  tablename: 'OtoparkKapiGrup',
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final txtKapigrupGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtKapigrupValueController ??=
                                              FormFieldController<String>(
                                            _model.txtKapigrupValue ??=
                                                FFAppState().KapiGrupId,
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtKapigrupGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtKapigrupGetALLResponse.jsonBody,
                                            r'''$.data[:].GrupAdi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) async {
                                            setState(() =>
                                                _model.txtKapigrupValue = val);
                                            setState(() {
                                              FFAppState().KapiGrupId =
                                                  _model.txtKapigrupValue!;
                                            });
                                            setState(() => _model
                                                .apiRequestCompleter2 = null);
                                            await _model
                                                .waitForApiRequestCompleted2();
                                          },
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Please select...',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Aktif Kapı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter2 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(SettingsGroup
                                                    .getALLCall
                                                    .call(
                                                  db: FFAppState().veritabani,
                                                  tablename: 'OtoparkKapi',
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final txtKapiGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.txtKapiValueController ??=
                                                  FormFieldController<String>(
                                            _model.txtKapiValue ??=
                                                FFAppState().KapiId,
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtKapiGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtKapiGetALLResponse.jsonBody,
                                            r'''$.data[:].KapiAdi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) async {
                                            setState(() =>
                                                _model.txtKapiValue = val);
                                            setState(() {
                                              FFAppState().KapiId =
                                                  _model.txtKapiValue!;
                                            });
                                          },
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Please select...',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Varsayılan Araç Tipi',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'AracTipleri',
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final txtAractipiGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtAractipiValueController ??=
                                              FormFieldController<String>(
                                            _model.txtAractipiValue ??=
                                                FFAppState().DefAracTipi,
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtAractipiGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtAractipiGetALLResponse.jsonBody,
                                            r'''$.data[:].AracTipi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) async {
                                            setState(() =>
                                                _model.txtAractipiValue = val);
                                            setState(() {
                                              FFAppState().DefAracTipi =
                                                  _model.txtAractipiValue!;
                                            });
                                          },
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Please select...',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                ),
                                child: CheckboxListTile(
                                  value: _model.chYazicidurumValue ??=
                                      FFAppState().yaziciAktif,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.chYazicidurumValue = newValue!);
                                    if (newValue!) {
                                      setState(() {
                                        FFAppState().yaziciAktif = true;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().yaziciAktif = false;
                                      });
                                    }
                                  },
                                  title: Text(
                                    'Fis Yazıcı aktif',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                  subtitle: Text(
                                    'Pasif olduğunda fiş yazdırılamayacaktır',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ],
                          ),
                        ),
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
