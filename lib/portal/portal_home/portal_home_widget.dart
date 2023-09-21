import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/portal/poral_menu/portal_mainmenu/portal_mainmenu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'portal_home_model.dart';
export 'portal_home_model.dart';

class PortalHomeWidget extends StatefulWidget {
  const PortalHomeWidget({Key? key}) : super(key: key);

  @override
  _PortalHomeWidgetState createState() => _PortalHomeWidgetState();
}

class _PortalHomeWidgetState extends State<PortalHomeWidget> {
  late PortalHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PortalHomeModel());

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
        title: 'portal_home',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  pinned: false,
                  floating: false,
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  automaticallyImplyLeading: false,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.menu_outlined,
                      color: Color(0xFF020000),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: PortalMainmenuWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                  ),
                  title: Text(
                    'Fastpark Vale Yönetim Sistemi',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 22.0,
                        ),
                  ),
                  actions: [],
                  centerTitle: true,
                  elevation: 2.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 12.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 73.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Otopark Adı',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Dolu',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Bos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.12,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Kasa Bakiyesi',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.12,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Pos Bakiyesi',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [],
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
                          FutureBuilder<ApiCallResponse>(
                            future: SettingsGroup.getALLCall.call(
                              db: FFAppState().veritabani,
                              tablename: 'p_OtoparkDurum',
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final listViewGetALLResponse = snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final otoparklar = SettingsGroup.getALLCall
                                          .data(
                                            listViewGetALLResponse.jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: otoparklar.length,
                                    itemBuilder: (context, otoparklarIndex) {
                                      final otoparklarItem =
                                          otoparklar[otoparklarIndex];
                                      return Container(
                                        width: 100.0,
                                        height: 121.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CircularPercentIndicator(
                                                  percent: getJsonField(
                                                    otoparklarItem,
                                                    r'''$.Doluluk''',
                                                  ),
                                                  radius: 35.0,
                                                  lineWidth: 12.0,
                                                  animation: true,
                                                  progressColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  center: Text(
                                                    formatNumber(
                                                      getJsonField(
                                                        otoparklarItem,
                                                        r'''$.Doluluk''',
                                                      ),
                                                      formatType:
                                                          FormatType.percent,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall,
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.15,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          otoparklarItem,
                                                          r'''$.OtoparkAdi''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          otoparklarItem,
                                                          r'''$.Dolu''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          otoparklarItem,
                                                          r'''$.Bos''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          otoparklarItem,
                                                          r'''$.KasaBakiye''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.12,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          otoparklarItem,
                                                          r'''$.BankaBakiye''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text: 'Raporlar',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
