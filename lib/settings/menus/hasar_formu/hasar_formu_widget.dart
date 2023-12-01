import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hasar_formu_model.dart';
export 'hasar_formu_model.dart';

class HasarFormuWidget extends StatefulWidget {
  const HasarFormuWidget({
    super.key,
    required this.gecisId,
  });

  final int? gecisId;

  @override
  _HasarFormuWidgetState createState() => _HasarFormuWidgetState();
}

class _HasarFormuWidgetState extends State<HasarFormuWidget> {
  late HasarFormuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HasarFormuModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
        child: FutureBuilder<ApiCallResponse>(
          future: SettingsGroup.getRowDataCall.call(
            db: FFAppState().veritabani,
            tablename: 'AracGecisHasar',
            keyfield: 'AracGecisId',
            keyvalue: widget.gecisId?.toString(),
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
            final columnGetRowDataResponse = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 323.0,
                  height: 221.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SizedBox(
                    width: 380.0,
                    height: 200.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/hasartespit.png',
                                width: 390.0,
                                height: 253.0,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.70, -0.60),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch4Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P4''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch4Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.19, -0.61),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch3Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P3''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch3Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.11, -0.61),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch2Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P2''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch2Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.64, -0.69),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch1Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P1''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch1Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, 0.09),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch5Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P5''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch5Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.67, 0.09),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch6Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P6''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch6Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.10, 0.10),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch13Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P13''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch13Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.53, 0.08),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch12Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P12''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch12Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.99, 0.07),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch11Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P11''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch11Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.69, 0.76),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch7Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P7''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch7Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.20, 0.78),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch8Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P8''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch8Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.12, 0.79),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch9Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P9''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch9Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.66, 0.73),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.ch10Value ??= getJsonField(
                                columnGetRowDataResponse.jsonBody,
                                r'''$.data.P10''',
                              ),
                              onChanged: (newValue) async {
                                setState(() => _model.ch10Value = newValue!);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 64.0,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
