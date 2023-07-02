import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'konum_secim_model.dart';
export 'konum_secim_model.dart';

class KonumSecimWidget extends StatefulWidget {
  const KonumSecimWidget({Key? key}) : super(key: key);

  @override
  _KonumSecimWidgetState createState() => _KonumSecimWidgetState();
}

class _KonumSecimWidgetState extends State<KonumSecimWidget> {
  late KonumSecimModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KonumSecimModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Container(
                width: 50.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 32.0,
                    ),
                  ),
                  Text(
                    'Park Konumunu seçiniz',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
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
                    final gridViewGetFilterDataResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final konumListe = SettingsGroup.getFilterDataCall
                                .data(
                                  gridViewGetFilterDataResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];
                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: konumListe.length,
                          itemBuilder: (context, konumListeIndex) {
                            final konumListeItem = konumListe[konumListeIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (getJsonField(
                                      konumListeItem,
                                      r'''$.Durum''',
                                    ) ==
                                    'DOLU') {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Hata'),
                                        content: Text(
                                            'Bu konum dolu, Lütfen faklı bir konum seçiniz.'),
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
                                } else {
                                  Navigator.pop(context, konumListeItem);
                                }
                              },
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: colorFromCssString(
                                    getJsonField(
                                              konumListeItem,
                                              r'''$.Durum''',
                                            ) ==
                                            'DOLU'
                                        ? '#EB1313'
                                        : '#275F08',
                                    defaultColor: Colors.white,
                                  ),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      getJsonField(
                                        konumListeItem,
                                        r'''$.KonumAdi''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                  ],
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
            ),
          ],
        ),
      ),
    );
  }
}
