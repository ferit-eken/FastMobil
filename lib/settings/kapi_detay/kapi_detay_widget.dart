import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kapi_detay_model.dart';
export 'kapi_detay_model.dart';

class KapiDetayWidget extends StatefulWidget {
  const KapiDetayWidget({
    Key? key,
    required this.kapi,
    required this.kapigrup,
  }) : super(key: key);

  final dynamic kapi;
  final dynamic kapigrup;

  @override
  _KapiDetayWidgetState createState() => _KapiDetayWidgetState();
}

class _KapiDetayWidgetState extends State<KapiDetayWidget> {
  late KapiDetayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KapiDetayModel());

    _model.txtKapiadiController ??= TextEditingController(
        text: getJsonField(
      widget.kapi,
      r'''$.KapiAdi''',
    ).toString().toString());
    _model.txtKapiadiFocusNode ??= FocusNode();

    _model.txtIdController ??= TextEditingController(
        text: getJsonField(
      widget.kapi,
      r'''$.Id''',
    ).toString().toString());
    _model.txtIdFocusNode ??= FocusNode();

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
        title: 'kapi_detay',
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
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                'Kapı Tanımları',
                style: FlutterFlowTheme.of(context).bodyLarge,
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
                      _model.apiResultgar =
                          await SettingsGroup.otoparkKapiUpdateCall.call(
                        db: FFAppState().veritabani,
                        tablename: 'OtoparkKapi',
                        keyField: 'Id',
                        keyvalue: _model.txtIdController.text,
                        command: 'UPDATE',
                        kapiId: int.tryParse(_model.txtIdController.text),
                        kapiGrupId: getJsonField(
                          widget.kapigrup,
                          r'''$.Id''',
                        ),
                        kapiAdi: _model.txtKapiadiController.text,
                        gecisYonu: _model.txtGiristuruValue,
                        tanimsizOnayi: _model.chTanimsizonayValue! ? 1 : 0,
                        gecisKaydi: _model.chGeciskaydiValue! ? 1 : 0,
                        girisKameraId: _model.txtKameraValue,
                        goruntuIsleme: _model.chGoruntuislemeValue! ? 1 : 0,
                        iOControllerId: '1',
                        tetikNo: _model.txtTetiknoValue,
                        ledPanelId: _model.txtLedpanelValue,
                        kasaKodu: _model.txtKasalarValue,
                        bankaKodu: _model.txtBankaValue,
                        aboneGecisi: _model.chAbonegecisValue! ? 1 : 0,
                        ucretliGecis: _model.chUcretligecisValue! ? 1 : 0,
                        misafirGecis: _model.chMisafirgecisValue! ? 1 : 0,
                        odemeNoktasi: _model.chOdemenoktasiValue! ? 1 : 0,
                        posId: _model.chPoscihaziValue,
                      );
                      if (SettingsGroup.otoparkKapiUpdateCall.successed(
                        (_model.apiResultgar?.jsonBody ?? ''),
                      )) {
                        context.safePop();
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Hata'),
                              content: Text(SettingsGroup.otoparkKapiUpdateCall
                                  .message(
                                    (_model.apiResultgar?.jsonBody ?? ''),
                                  )
                                  .toString()),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }

                      setState(() {});
                    },
                    child: Icon(
                      Icons.save_sharp,
                      color: Color(0xFF020000),
                      size: 42.0,
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.sensor_door_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 64.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 200.0,
                                            child: TextFormField(
                                              controller:
                                                  _model.txtKapiadiController,
                                              focusNode:
                                                  _model.txtKapiadiFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Kapı Adı',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              validator: _model
                                                  .txtKapiadiControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Container(
                                            width: 200.0,
                                            decoration: BoxDecoration(),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .txtGiristuruValueController ??=
                                                  FormFieldController<String>(
                                                _model.txtGiristuruValue ??=
                                                    getJsonField(
                                                  widget.kapi,
                                                  r'''$.GecisYonu''',
                                                ).toString(),
                                              ),
                                              options: ['GIRIS', 'CIKIS'],
                                              onChanged: (val) => setState(() =>
                                                  _model.txtGiristuruValue =
                                                      val),
                                              width: 300.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Please select...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.txtIdController,
                                            focusNode: _model.txtIdFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .txtIdControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Tanımsız Onayı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chTanimsizonayValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.TanimsizOnayi''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chTanimsizonayValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Geçiş Kaydı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chGeciskaydiValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.GecisKaydi''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chGeciskaydiValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Görüntü İşleme',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chGoruntuislemeValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.Goruntu_Isleme''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.chGoruntuislemeValue =
                                                  newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Kamera',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'Kamera',
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
                                        final txtKameraGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtKameraValueController ??=
                                              FormFieldController<String>(
                                            _model.txtKameraValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.GirisKameraId''',
                                            ).toString(),
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtKameraGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtKameraGetALLResponse.jsonBody,
                                            r'''$.data[:].KameraAdi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.txtKameraValue = val),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Kamera seçiniz',
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
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Kapı Tetikleme',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FutureBuilder<ApiCallResponse>(
                                          future: SettingsGroup.getALLCall.call(
                                            db: FFAppState().veritabani,
                                            tablename: 'IOControler',
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final txtIocontrollerGetALLResponse =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .txtIocontrollerValueController ??=
                                                  FormFieldController<String>(
                                                _model.txtIocontrollerValue ??=
                                                    getJsonField(
                                                  widget.kapi,
                                                  r'''$.IOControllerId''',
                                                ).toString(),
                                              ),
                                              options: List<String>.from(
                                                  (getJsonField(
                                                txtIocontrollerGetALLResponse
                                                    .jsonBody,
                                                r'''$.data[:].Id''',
                                                true,
                                              ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()!),
                                              optionLabels: (getJsonField(
                                                txtIocontrollerGetALLResponse
                                                    .jsonBody,
                                                r'''$.data[:].Aciklama''',
                                                true,
                                              ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!,
                                              onChanged: (val) => setState(() =>
                                                  _model.txtIocontrollerValue =
                                                      val),
                                              width: 115.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Kontrol Kartı',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                        FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .txtTetiknoValueController ??=
                                              FormFieldController<int>(
                                            _model.txtTetiknoValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.TetikNo''',
                                            ),
                                          ),
                                          options: List<int>.from(
                                              [1, 2, 3, 4, 5, 6, 7, 8]),
                                          optionLabels: [
                                            '1',
                                            '2',
                                            '3',
                                            '4',
                                            '5',
                                            '6',
                                            '7',
                                            '8'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.txtTetiknoValue = val),
                                          width: 85.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
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
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Led Panel',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'LedPanel',
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
                                        final txtLedpanelGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtLedpanelValueController ??=
                                              FormFieldController<String>(
                                            _model.txtLedpanelValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.LedPanelId''',
                                            ).toString(),
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtLedpanelGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtLedpanelGetALLResponse.jsonBody,
                                            r'''$.data[:].PanelAdi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.txtLedpanelValue = val),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Led Panel',
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
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Kasa Hesabı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'Kasalar',
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
                                        final txtKasalarGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtKasalarValueController ??=
                                              FormFieldController<String>(
                                            _model.txtKasalarValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.KasaKodu''',
                                            ).toString(),
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtKasalarGetALLResponse.jsonBody,
                                            r'''$.data[:].Kod''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtKasalarGetALLResponse.jsonBody,
                                            r'''$.data[:].Aciklama''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.txtKasalarValue = val),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Kasa Hesabı',
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
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Banka Hesabı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'Bankalar',
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
                                        final txtBankaGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.txtBankaValueController ??=
                                                  FormFieldController<String>(
                                            _model.txtBankaValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.BankaKodu''',
                                            ).toString(),
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            txtBankaGetALLResponse.jsonBody,
                                            r'''$.data[:].Kod''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            txtBankaGetALLResponse.jsonBody,
                                            r'''$.data[:].BankaAd''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(
                                              () => _model.txtBankaValue = val),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Banka Hesabı',
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
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'bağlı Pos cihazı',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SettingsGroup.getALLCall.call(
                                        db: FFAppState().veritabani,
                                        tablename: 'PosCihazlari',
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
                                        final chPoscihaziGetALLResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .chPoscihaziValueController ??=
                                              FormFieldController<String>(
                                            _model.chPoscihaziValue ??=
                                                getJsonField(
                                              widget.kapi,
                                              r'''$.PosId''',
                                            ).toString(),
                                          ),
                                          options: List<String>.from(
                                              (getJsonField(
                                            chPoscihaziGetALLResponse.jsonBody,
                                            r'''$.data[:].Id''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            chPoscihaziGetALLResponse.jsonBody,
                                            r'''$.data[:].PosAdi''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.chPoscihaziValue = val),
                                          width: 200.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Pos Cihazı',
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
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Aboneler geçebilir',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chAbonegecisValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.AboneGecisi''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chAbonegecisValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ücretli Geçiş',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chUcretligecisValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.UcretliGecis''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chUcretligecisValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Misafirler geçebilir',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chMisafirgecisValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.MisafirGecis''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chMisafirgecisValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 3.0, 16.0, 3.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ödeme Noktası',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Theme(
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
                                        value: _model.chOdemenoktasiValue ??=
                                            getJsonField(
                                          widget.kapi,
                                          r'''$.OdemeNoktasi''',
                                        ),
                                        onChanged: (newValue) async {
                                          setState(() => _model
                                              .chOdemenoktasiValue = newValue!);
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
