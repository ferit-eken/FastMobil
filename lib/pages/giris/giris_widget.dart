import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/anahtar_liste/anahtar_liste_widget.dart';
import '/pages/keyboard/keyboard_widget.dart';
import '/pages/konum_secim/konum_secim_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'giris_model.dart';
export 'giris_model.dart';

class GirisWidget extends StatefulWidget {
  const GirisWidget({Key? key}) : super(key: key);

  @override
  _GirisWidgetState createState() => _GirisWidgetState();
}

class _GirisWidgetState extends State<GirisWidget> {
  late GirisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GirisModel());

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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).warning,
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
            'ARAC GIRIS',
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: 70.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Color(0xFFC20707),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.photo_camera_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 40.0,
                                      ),
                                      Text(
                                        'Plaka Tanıma',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: 70.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Color(0xFFC20707),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.qr_code_2_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 40.0,
                                      ),
                                      Text(
                                        'Kart okuma',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: 70.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Color(0xFFC20707),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.cast_for_education,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 40.0,
                                      ),
                                      Text(
                                        'RFID',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 162.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .txtAractipiValueController ??=
                                            FormFieldController<String>(
                                          _model.txtAractipiValue ??=
                                              FFAppState().DefAracTipi,
                                        ),
                                        options: FFAppState()
                                            .AracTipleri
                                            .map((e) => getJsonField(
                                                  e,
                                                  r'''$.Id''',
                                                ))
                                            .toList()
                                            .map((e) => e.toString())
                                            .toList(),
                                        optionLabels: FFAppState()
                                            .AracTipleri
                                            .map((e) => getJsonField(
                                                  e,
                                                  r'''$.AracTipi''',
                                                ))
                                            .toList()
                                            .map((e) => e.toString())
                                            .toList(),
                                        onChanged: (val) => setState(() =>
                                            _model.txtAractipiValue = val),
                                        width: 163.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        hintText: 'Araç Türü',
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: AnahtarListeWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() =>
                                                _model.resAnahtarsecim =
                                                    value));

                                            setState(() {});
                                          },
                                          child: Container(
                                            width: 163.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Anahtar No',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            _model
                                                                .resAnahtarsecim
                                                                ?.toString(),
                                                            '-',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 163.0,
                                        height: 41.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: Container(
                                                      height: 480.0,
                                                      child: KeyboardWidget(
                                                        def: '',
                                                        baslik: 'Ad Soyad',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() =>
                                                _model.resultAdsoyad = value));

                                            setState(() {});
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Ad Soyad',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    _model.resultAdsoyad,
                                                    '--',
                                                  ),
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
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: Container(
                                                      height: 480.0,
                                                      child: KeyboardWidget(
                                                        def: '',
                                                        baslik: 'Telefon No',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() =>
                                                _model.resulttelefonno =
                                                    value));

                                            setState(() {});
                                          },
                                          child: Container(
                                            width: 163.0,
                                            height: 41.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Telefon',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.resulttelefonno,
                                                      '--',
                                                    ),
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
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 163.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => FocusScope
                                                              .of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height: 480.0,
                                                          child: KeyboardWidget(
                                                            def: FFAppState()
                                                                .defPlaka,
                                                            baslik:
                                                                'Plaka Giriniz',
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) => setState(() =>
                                                    _model.resultPlakakeyb =
                                                        value));

                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Plaka',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model
                                                              .resultPlakakeyb,
                                                          '--',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 163.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => FocusScope
                                                                .of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              KonumSecimWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) => setState(
                                                      () => _model
                                                              .resultkonumsecim =
                                                          value));

                                                  setState(() {});
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Park Konumu',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          _model.resultkonumsecim !=
                                                                  null
                                                              ? getJsonField(
                                                                  _model
                                                                      .resultkonumsecim,
                                                                  r'''$.KonumAdi''',
                                                                ).toString()
                                                              : '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
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
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hasarlı bölgeleri işaretleyiniz',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 383.0,
                          height: 200.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/hasartespit.png',
                                    width: 390.0,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.59, -0.77),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch4Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch4Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.17, -0.79),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch3Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch3Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.08, -0.77),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch2Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch2Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.51, -0.7),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch1Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch1Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.82, 0.02),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch5Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch5Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.56, 0.01),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch6Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch6Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.09, 0.01),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch13Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch13Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.44, 0.0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch12Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch12Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.82, -0.02),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch11Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch11Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.57, 0.76),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch7Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch7Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.17, 0.79),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch8Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch8Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.1, 0.81),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch9Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch9Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.54, 0.74),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.ch10Value ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.ch10Value = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResultork =
                                      await PtsGroup.aracGirisCall.call(
                                    db: FFAppState().veritabani,
                                    command: 'GIRIS',
                                    otoparkId: valueOrDefault<String>(
                                      FFAppState().OtoparkId,
                                      '1',
                                    ),
                                    kapiGrupId: valueOrDefault<String>(
                                      FFAppState().KapiGrupId,
                                      '1',
                                    ),
                                    kapiId: valueOrDefault<String>(
                                      FFAppState().KapiId,
                                      '1',
                                    ),
                                    aracTipId: valueOrDefault<String>(
                                      _model.txtAractipiValue,
                                      '1',
                                    ),
                                    personelKod: FFAppState().UserId,
                                    girisTuru: 'UCRETLI',
                                    plaka: _model.resultPlakakeyb,
                                    hasar1: _model.ch1Value,
                                    hasar2: _model.ch2Value,
                                    hasar3: _model.ch3Value,
                                    hasar4: _model.ch4Value,
                                    hasar5: _model.ch5Value,
                                    hasar6: _model.ch6Value,
                                    hasar7: _model.ch7Value,
                                    hasar8: _model.ch8Value,
                                    hasar9: _model.ch9Value,
                                    hasar10: _model.ch10Value,
                                    hasar11: _model.ch11Value,
                                    hasar12: _model.ch12Value,
                                    hasar13: _model.ch13Value,
                                    id: 0,
                                    adSoyad: valueOrDefault<String>(
                                      _model.resultAdsoyad,
                                      '-',
                                    ),
                                    telefon: valueOrDefault<String>(
                                      _model.resulttelefonno,
                                      '-',
                                    ),
                                    parkKonumId: _model.resultkonumsecim != null
                                        ? getJsonField(
                                            _model.resultkonumsecim,
                                            r'''$.Id''',
                                          ).toString()
                                        : '0',
                                    anahtarKodu: valueOrDefault<int>(
                                      _model.resAnahtarsecim,
                                      0,
                                    ),
                                  );
                                  if (PtsGroup.aracGirisCall.succeeded(
                                    (_model.apiResultork?.jsonBody ?? ''),
                                  )) {
                                    if (FFAppState().yazicidurum) {
                                      _model.resultprint =
                                          await actions.girisFisiYazdir(
                                        valueOrDefault<String>(
                                          getJsonField(
                                            FFAppState().Otopark,
                                            r'''$.OtoparkAdi''',
                                          ).toString(),
                                          'OTOPARK ISLETMESI',
                                        ),
                                        _model.resultPlakakeyb!,
                                        getCurrentTimestamp,
                                        valueOrDefault<String>(
                                          getJsonField(
                                            FFAppState().Kapi,
                                            r'''$.KapiAdi''',
                                          ).toString(),
                                          'Kapı',
                                        ),
                                        PtsGroup.aracGirisCall
                                            .aracTipi(
                                              (_model.apiResultork?.jsonBody ??
                                                  ''),
                                            )
                                            .toString(),
                                        getJsonField(
                                          FFAppState().UserInfo,
                                          r'''$.Username''',
                                        ).toString(),
                                        '# Mali Degeri Yoktur #',
                                        FFAppState().FisUstBilgi1,
                                        FFAppState().FisUstBilgi2,
                                        FFAppState().FisAltBilgi1,
                                        FFAppState().FisAltBilgi2,
                                        PtsGroup.aracGirisCall
                                            .fisNo(
                                              (_model.apiResultork?.jsonBody ??
                                                  ''),
                                            )
                                            .toString(),
                                      );
                                      context.safePop();
                                    } else {
                                      context.safePop();
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Hata'),
                                          content: Text(PtsGroup.aracGirisCall
                                              .message(
                                                (_model.apiResultork
                                                        ?.jsonBody ??
                                                    ''),
                                              )
                                              .toString()),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  setState(() {});
                                },
                                text: 'Giriş',
                                options: FFButtonOptions(
                                  width: 182.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).warning,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF020000),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
