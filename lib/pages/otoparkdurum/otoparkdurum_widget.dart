import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otoparkdurum_model.dart';
export 'otoparkdurum_model.dart';

class OtoparkdurumWidget extends StatefulWidget {
  const OtoparkdurumWidget({Key? key}) : super(key: key);

  @override
  _OtoparkdurumWidgetState createState() => _OtoparkdurumWidgetState();
}

class _OtoparkdurumWidgetState extends State<OtoparkdurumWidget> {
  late OtoparkdurumModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtoparkdurumModel());

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
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF020000),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Otopark Durumu',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'ParkKonumDetay',
                    queryParameters: {
                      'id': serializeParam(
                        0,
                        ParamType.int,
                      ),
                      'kapiGrupId': serializeParam(
                        FFAppState().KapiGrupId,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Icon(
                  Icons.add_circle_outline,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 32.0,
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
                      Text(
                        getJsonField(
                          FFAppState().KapiGrup,
                          r'''$.GrupAdi''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Expanded(
                        child: FutureBuilder<ApiCallResponse>(
                          future: SettingsGroup.getFilterDataCall.call(
                            db: FFAppState().veritabani,
                            tablename: 'ParkKonumDoluluk',
                            filtre: 'KapiGrupId=${FFAppState().KapiGrupId}',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              );
                            }
                            final gridViewGetFilterDataResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final konumListe =
                                    SettingsGroup.getFilterDataCall
                                            .data(
                                              gridViewGetFilterDataResponse
                                                  .jsonBody,
                                            )
                                            ?.toList() ??
                                        [];
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: konumListe.length,
                                  itemBuilder: (context, konumListeIndex) {
                                    final konumListeItem =
                                        konumListe[konumListeIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 3.0, 3.0, 3.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.apiResultqqb =
                                              await SettingsGroup
                                                  .getRowFilterDataCall
                                                  .call(
                                            db: FFAppState().veritabani,
                                            tablename: 'AracGecisleri',
                                            keyfield:
                                                'isActive = 1 and ParkKonumId = ',
                                            keyvalue: getJsonField(
                                              konumListeItem,
                                              r'''$.Id''',
                                            ).toString(),
                                          );
                                          if (getJsonField(
                                            (_model.apiResultqqb?.jsonBody ??
                                                ''),
                                            r'''$.Successed''',
                                          )) {
                                            context.pushNamed(
                                              'CikisBilgi',
                                              queryParameters: {
                                                'gecisId': serializeParam(
                                                  getJsonField(
                                                    (_model.apiResultqqb
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data.Id''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Hata'),
                                                  content:
                                                      Text('Geçiş yüklenemedi'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
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
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                            ),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onLongPress: () async {
                                              context.pushNamed(
                                                'ParkKonumDetay',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    getJsonField(
                                                      konumListeItem,
                                                      r'''$.Id''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                  'kapiGrupId': serializeParam(
                                                    getJsonField(
                                                      konumListeItem,
                                                      r'''$.KapiGrupId''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.directions_car,
                                                  color: colorFromCssString(
                                                    getJsonField(
                                                              konumListeItem,
                                                              r'''$.Durum''',
                                                            ) ==
                                                            'DOLU'
                                                        ? '#EB1313'
                                                        : '#275F08',
                                                    defaultColor: Colors.black,
                                                  ),
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  getJsonField(
                                                    konumListeItem,
                                                    r'''$.KonumAdi''',
                                                  ).toString(),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
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
    );
  }
}
