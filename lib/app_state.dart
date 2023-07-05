import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _OtoparkId = prefs.getString('ff_OtoparkId') ?? _OtoparkId;
    });
    _safeInit(() {
      _KapiGrupId = prefs.getString('ff_KapiGrupId') ?? _KapiGrupId;
    });
    _safeInit(() {
      _KapiId = prefs.getString('ff_KapiId') ?? _KapiId;
    });
    _safeInit(() {
      _DefAracTipi = prefs.getString('ff_DefAracTipi') ?? _DefAracTipi;
    });
    _safeInit(() {
      _FisUstBilgi1 = prefs.getString('ff_FisUstBilgi1') ?? _FisUstBilgi1;
    });
    _safeInit(() {
      _FisUstBilgi2 = prefs.getString('ff_FisUstBilgi2') ?? _FisUstBilgi2;
    });
    _safeInit(() {
      _FisAltBilgi1 = prefs.getString('ff_FisAltBilgi1') ?? _FisAltBilgi1;
    });
    _safeInit(() {
      _FisAltBilgi2 = prefs.getString('ff_FisAltBilgi2') ?? _FisAltBilgi2;
    });
    _safeInit(() {
      _defPlaka = prefs.getString('ff_defPlaka') ?? _defPlaka;
    });
    _safeInit(() {
      _girisFirmaKodu = prefs.getString('ff_girisFirmaKodu') ?? _girisFirmaKodu;
    });
    _safeInit(() {
      _girisKullanici = prefs.getString('ff_girisKullanici') ?? _girisKullanici;
    });
    _safeInit(() {
      _para1 = prefs.getInt('ff_para1') ?? _para1;
    });
    _safeInit(() {
      _para2 = prefs.getInt('ff_para2') ?? _para2;
    });
    _safeInit(() {
      _para3 = prefs.getInt('ff_para3') ?? _para3;
    });
    _safeInit(() {
      _para4 = prefs.getInt('ff_para4') ?? _para4;
    });
    _safeInit(() {
      _para5 = prefs.getInt('ff_para5') ?? _para5;
    });
    _safeInit(() {
      _para6 = prefs.getInt('ff_para6') ?? _para6;
    });
    _safeInit(() {
      _para7 = prefs.getInt('ff_para7') ?? _para7;
    });
    _safeInit(() {
      _defprinterindex = prefs.getInt('ff_defprinterindex') ?? _defprinterindex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _UserInfo;
  dynamic get UserInfo => _UserInfo;
  set UserInfo(dynamic _value) {
    _UserInfo = _value;
  }

  String _veritabani = '';
  String get veritabani => _veritabani;
  set veritabani(String _value) {
    _veritabani = _value;
  }

  dynamic _ActiveRow;
  dynamic get ActiveRow => _ActiveRow;
  set ActiveRow(dynamic _value) {
    _ActiveRow = _value;
  }

  dynamic _Otopark;
  dynamic get Otopark => _Otopark;
  set Otopark(dynamic _value) {
    _Otopark = _value;
  }

  dynamic _KapiGrup;
  dynamic get KapiGrup => _KapiGrup;
  set KapiGrup(dynamic _value) {
    _KapiGrup = _value;
  }

  dynamic _Kapi;
  dynamic get Kapi => _Kapi;
  set Kapi(dynamic _value) {
    _Kapi = _value;
  }

  String _OtoparkId = '';
  String get OtoparkId => _OtoparkId;
  set OtoparkId(String _value) {
    _OtoparkId = _value;
    prefs.setString('ff_OtoparkId', _value);
  }

  String _KapiGrupId = '';
  String get KapiGrupId => _KapiGrupId;
  set KapiGrupId(String _value) {
    _KapiGrupId = _value;
    prefs.setString('ff_KapiGrupId', _value);
  }

  String _KapiId = '';
  String get KapiId => _KapiId;
  set KapiId(String _value) {
    _KapiId = _value;
    prefs.setString('ff_KapiId', _value);
  }

  String _DefAracTipi = '';
  String get DefAracTipi => _DefAracTipi;
  set DefAracTipi(String _value) {
    _DefAracTipi = _value;
    prefs.setString('ff_DefAracTipi', _value);
  }

  List<dynamic> _AracTipleri = [];
  List<dynamic> get AracTipleri => _AracTipleri;
  set AracTipleri(List<dynamic> _value) {
    _AracTipleri = _value;
  }

  void addToAracTipleri(dynamic _value) {
    _AracTipleri.add(_value);
  }

  void removeFromAracTipleri(dynamic _value) {
    _AracTipleri.remove(_value);
  }

  void removeAtIndexFromAracTipleri(int _index) {
    _AracTipleri.removeAt(_index);
  }

  void updateAracTipleriAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AracTipleri[_index] = updateFn(_AracTipleri[_index]);
  }

  int _UserId = 0;
  int get UserId => _UserId;
  set UserId(int _value) {
    _UserId = _value;
  }

  bool _yazicidurum = false;
  bool get yazicidurum => _yazicidurum;
  set yazicidurum(bool _value) {
    _yazicidurum = _value;
  }

  String _FisUstBilgi1 = '';
  String get FisUstBilgi1 => _FisUstBilgi1;
  set FisUstBilgi1(String _value) {
    _FisUstBilgi1 = _value;
    prefs.setString('ff_FisUstBilgi1', _value);
  }

  String _FisUstBilgi2 = '';
  String get FisUstBilgi2 => _FisUstBilgi2;
  set FisUstBilgi2(String _value) {
    _FisUstBilgi2 = _value;
    prefs.setString('ff_FisUstBilgi2', _value);
  }

  String _FisAltBilgi1 = '';
  String get FisAltBilgi1 => _FisAltBilgi1;
  set FisAltBilgi1(String _value) {
    _FisAltBilgi1 = _value;
    prefs.setString('ff_FisAltBilgi1', _value);
  }

  String _FisAltBilgi2 = '';
  String get FisAltBilgi2 => _FisAltBilgi2;
  set FisAltBilgi2(String _value) {
    _FisAltBilgi2 = _value;
    prefs.setString('ff_FisAltBilgi2', _value);
  }

  dynamic _firmabilgi;
  dynamic get firmabilgi => _firmabilgi;
  set firmabilgi(dynamic _value) {
    _firmabilgi = _value;
  }

  String _defPlaka = '';
  String get defPlaka => _defPlaka;
  set defPlaka(String _value) {
    _defPlaka = _value;
    prefs.setString('ff_defPlaka', _value);
  }

  String _girisFirmaKodu = '';
  String get girisFirmaKodu => _girisFirmaKodu;
  set girisFirmaKodu(String _value) {
    _girisFirmaKodu = _value;
    prefs.setString('ff_girisFirmaKodu', _value);
  }

  String _girisKullanici = '';
  String get girisKullanici => _girisKullanici;
  set girisKullanici(String _value) {
    _girisKullanici = _value;
    prefs.setString('ff_girisKullanici', _value);
  }

  List<dynamic> _anahtarlar = [];
  List<dynamic> get anahtarlar => _anahtarlar;
  set anahtarlar(List<dynamic> _value) {
    _anahtarlar = _value;
  }

  void addToAnahtarlar(dynamic _value) {
    _anahtarlar.add(_value);
  }

  void removeFromAnahtarlar(dynamic _value) {
    _anahtarlar.remove(_value);
  }

  void removeAtIndexFromAnahtarlar(int _index) {
    _anahtarlar.removeAt(_index);
  }

  void updateAnahtarlarAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _anahtarlar[_index] = updateFn(_anahtarlar[_index]);
  }

  List<dynamic> _parkkonumlari = [];
  List<dynamic> get parkkonumlari => _parkkonumlari;
  set parkkonumlari(List<dynamic> _value) {
    _parkkonumlari = _value;
  }

  void addToParkkonumlari(dynamic _value) {
    _parkkonumlari.add(_value);
  }

  void removeFromParkkonumlari(dynamic _value) {
    _parkkonumlari.remove(_value);
  }

  void removeAtIndexFromParkkonumlari(int _index) {
    _parkkonumlari.removeAt(_index);
  }

  void updateParkkonumlariAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _parkkonumlari[_index] = updateFn(_parkkonumlari[_index]);
  }

  int _para1 = 0;
  int get para1 => _para1;
  set para1(int _value) {
    _para1 = _value;
    prefs.setInt('ff_para1', _value);
  }

  int _para2 = 0;
  int get para2 => _para2;
  set para2(int _value) {
    _para2 = _value;
    prefs.setInt('ff_para2', _value);
  }

  int _para3 = 0;
  int get para3 => _para3;
  set para3(int _value) {
    _para3 = _value;
    prefs.setInt('ff_para3', _value);
  }

  int _para4 = 0;
  int get para4 => _para4;
  set para4(int _value) {
    _para4 = _value;
    prefs.setInt('ff_para4', _value);
  }

  int _para5 = 0;
  int get para5 => _para5;
  set para5(int _value) {
    _para5 = _value;
    prefs.setInt('ff_para5', _value);
  }

  int _para6 = 0;
  int get para6 => _para6;
  set para6(int _value) {
    _para6 = _value;
    prefs.setInt('ff_para6', _value);
  }

  int _para7 = 0;
  int get para7 => _para7;
  set para7(int _value) {
    _para7 = _value;
    prefs.setInt('ff_para7', _value);
  }

  int _defprinterindex = 0;
  int get defprinterindex => _defprinterindex;
  set defprinterindex(int _value) {
    _defprinterindex = _value;
    prefs.setInt('ff_defprinterindex', _value);
  }

  List<dynamic> _PrinterList = [];
  List<dynamic> get PrinterList => _PrinterList;
  set PrinterList(List<dynamic> _value) {
    _PrinterList = _value;
  }

  void addToPrinterList(dynamic _value) {
    _PrinterList.add(_value);
  }

  void removeFromPrinterList(dynamic _value) {
    _PrinterList.remove(_value);
  }

  void removeAtIndexFromPrinterList(int _index) {
    _PrinterList.removeAt(_index);
  }

  void updatePrinterListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _PrinterList[_index] = updateFn(_PrinterList[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
