import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'i_o_controller_detay_model.dart';
export 'i_o_controller_detay_model.dart';

class IOControllerDetayWidget extends StatefulWidget {
  const IOControllerDetayWidget({
    Key? key,
    String? command,
    int? id,
  })  : this.command = command ?? 'UPDATE',
        this.id = id ?? 0,
        super(key: key);

  final String command;
  final int id;

  @override
  _IOControllerDetayWidgetState createState() =>
      _IOControllerDetayWidgetState();
}

class _IOControllerDetayWidgetState extends State<IOControllerDetayWidget> {
  late IOControllerDetayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IOControllerDetayModel());

    _model.txtAciklamaController ??= TextEditingController(
        text: getJsonField(
      FFAppState().ActiveRow,
      r'''$.Aciklama''',
    ).toString().toString());
    _model.txtIdController ??= TextEditingController(
        text: getJsonField(
      FFAppState().ActiveRow,
      r'''$.Id''',
    ).toString().toString());
    _model.txtIpadresController ??= TextEditingController(
        text: valueOrDefault<String>(
      getJsonField(
        FFAppState().ActiveRow,
        r'''$.Adres''',
      ).toString().toString(),
      '192.168.1.123',
    ));
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
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'IO Controller Detay',
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
                      await SettingsGroup.iOControllerUpdateCall.call(
                    db: FFAppState().veritabani,
                    tablename: 'IOControler',
                    keyField: 'Id',
                    keyvalue: _model.txtIdController.text,
                    command: 'UPDATE',
                    id: int.tryParse(_model.txtIdController.text),
                    aciklama: _model.txtAciklamaController.text,
                    cikisSayisi: _model.txtCikissayisiValue,
                    baglantiTuru: _model.txtBaglantituruValue,
                    adres: _model.txtIpadresController.text,
                    baudrate: _model.txtBaudrateValue,
                    tCPPort: _model.txtPortnoValue,
                    tetikAraligi: _model.txtTetikaralikValue,
                    isActive: _model.chIsactiveValue,
                  );
                  if (SettingsGroup.iOControllerUpdateCall.successed(
                    (_model.apiResultgar?.jsonBody ?? ''),
                  )) {
                    context.safePop();
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Hata'),
                          content: Text(SettingsGroup.iOControllerUpdateCall
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 90.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.construction_rounded,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller:
                                              _model.txtAciklamaController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'KOntrol Kartı',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          validator: _model
                                              .txtAciklamaControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width: 200.0,
                                        decoration: BoxDecoration(),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .txtBaglantituruValueController ??=
                                              FormFieldController<String>(
                                            _model.txtBaglantituruValue ??=
                                                valueOrDefault<String>(
                                              getJsonField(
                                                FFAppState().ActiveRow,
                                                r'''$.BaglantiTuru''',
                                              ).toString(),
                                              'TCP',
                                            ),
                                          ),
                                          options: ['TCP', 'COM'],
                                          onChanged: (val) => setState(() =>
                                              _model.txtBaglantituruValue =
                                                  val),
                                          width: 300.0,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.txtIdController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Aktif',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
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
                                    value: _model.chIsactiveValue ??=
                                        getJsonField(
                                      FFAppState().ActiveRow,
                                      r'''$.isActive''',
                                    ),
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.chIsactiveValue = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Ip Adres',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.txtIpadresController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Ip Adres',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .txtIpadresControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [_model.txtIpadresMask],
                                    ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Çıkış Sayısı',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FlutterFlowDropDown<int>(
                                      controller: _model
                                              .txtCikissayisiValueController ??=
                                          FormFieldController<int>(
                                        _model.txtCikissayisiValue ??=
                                            valueOrDefault<int>(
                                          getJsonField(
                                            FFAppState().ActiveRow,
                                            r'''$.CikisSayisi''',
                                          ),
                                          2,
                                        ),
                                      ),
                                      options: [1, 2, 3, 4, 5, 6, 7, 8],
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
                                          _model.txtCikissayisiValue = val),
                                      width: 200.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bağlantı Portu',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                FlutterFlowDropDown<int>(
                                  controller:
                                      _model.txtPortnoValueController ??=
                                          FormFieldController<int>(
                                    _model.txtPortnoValue ??=
                                        valueOrDefault<int>(
                                      getJsonField(
                                        FFAppState().ActiveRow,
                                        r'''$.TCPPort''',
                                      ),
                                      23,
                                    ),
                                  ),
                                  options: [5000, 23],
                                  optionLabels: ['5000', '23'],
                                  onChanged: (val) => setState(
                                      () => _model.txtPortnoValue = val),
                                  width: 200.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
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
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Com Bağlantı hızı',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                FlutterFlowDropDown<int>(
                                  controller:
                                      _model.txtBaudrateValueController ??=
                                          FormFieldController<int>(
                                    _model.txtBaudrateValue ??=
                                        valueOrDefault<int>(
                                      getJsonField(
                                        FFAppState().ActiveRow,
                                        r'''$.Baudrate''',
                                      ),
                                      9600,
                                    ),
                                  ),
                                  options: [9600, 38400, 56000],
                                  optionLabels: ['9600', '38400', '56000'],
                                  onChanged: (val) => setState(
                                      () => _model.txtBaudrateValue = val),
                                  width: 200.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
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
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tetik Aralığı',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Container(
                                  width: 200.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.minus,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 20.0,
                                    ),
                                    incrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.plus,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 20.0,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                    count: _model.txtTetikaralikValue ??=
                                        valueOrDefault<int>(
                                      getJsonField(
                                        FFAppState().ActiveRow,
                                        r'''$.TetikAraligi''',
                                      ),
                                      5,
                                    ),
                                    updateCount: (count) => setState(() =>
                                        _model.txtTetikaralikValue = count),
                                    stepSize: 1,
                                    minimum: 0,
                                    maximum: 999,
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
    );
  }
}
