import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

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
    _safeInit(() {
      _yaziciAktif = prefs.getBool('ff_yaziciAktif') ?? _yaziciAktif;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _UserInfo;
  dynamic get UserInfo => _UserInfo;
  set UserInfo(dynamic value) {
    _UserInfo = value;
  }

  String _veritabani = '';
  String get veritabani => _veritabani;
  set veritabani(String value) {
    _veritabani = value;
  }

  dynamic _ActiveRow;
  dynamic get ActiveRow => _ActiveRow;
  set ActiveRow(dynamic value) {
    _ActiveRow = value;
  }

  dynamic _Otopark;
  dynamic get Otopark => _Otopark;
  set Otopark(dynamic value) {
    _Otopark = value;
  }

  dynamic _KapiGrup;
  dynamic get KapiGrup => _KapiGrup;
  set KapiGrup(dynamic value) {
    _KapiGrup = value;
  }

  dynamic _Kapi;
  dynamic get Kapi => _Kapi;
  set Kapi(dynamic value) {
    _Kapi = value;
  }

  String _OtoparkId = '';
  String get OtoparkId => _OtoparkId;
  set OtoparkId(String value) {
    _OtoparkId = value;
    prefs.setString('ff_OtoparkId', value);
  }

  String _KapiGrupId = '';
  String get KapiGrupId => _KapiGrupId;
  set KapiGrupId(String value) {
    _KapiGrupId = value;
    prefs.setString('ff_KapiGrupId', value);
  }

  String _KapiId = '';
  String get KapiId => _KapiId;
  set KapiId(String value) {
    _KapiId = value;
    prefs.setString('ff_KapiId', value);
  }

  String _DefAracTipi = '';
  String get DefAracTipi => _DefAracTipi;
  set DefAracTipi(String value) {
    _DefAracTipi = value;
    prefs.setString('ff_DefAracTipi', value);
  }

  List<dynamic> _AracTipleri = [];
  List<dynamic> get AracTipleri => _AracTipleri;
  set AracTipleri(List<dynamic> value) {
    _AracTipleri = value;
  }

  void addToAracTipleri(dynamic value) {
    _AracTipleri.add(value);
  }

  void removeFromAracTipleri(dynamic value) {
    _AracTipleri.remove(value);
  }

  void removeAtIndexFromAracTipleri(int index) {
    _AracTipleri.removeAt(index);
  }

  void updateAracTipleriAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AracTipleri[index] = updateFn(_AracTipleri[index]);
  }

  void insertAtIndexInAracTipleri(int index, dynamic value) {
    _AracTipleri.insert(index, value);
  }

  int _UserId = 0;
  int get UserId => _UserId;
  set UserId(int value) {
    _UserId = value;
  }

  bool _yazicidurum = false;
  bool get yazicidurum => _yazicidurum;
  set yazicidurum(bool value) {
    _yazicidurum = value;
  }

  String _FisUstBilgi1 = '';
  String get FisUstBilgi1 => _FisUstBilgi1;
  set FisUstBilgi1(String value) {
    _FisUstBilgi1 = value;
    prefs.setString('ff_FisUstBilgi1', value);
  }

  String _FisUstBilgi2 = '';
  String get FisUstBilgi2 => _FisUstBilgi2;
  set FisUstBilgi2(String value) {
    _FisUstBilgi2 = value;
    prefs.setString('ff_FisUstBilgi2', value);
  }

  String _FisAltBilgi1 = '';
  String get FisAltBilgi1 => _FisAltBilgi1;
  set FisAltBilgi1(String value) {
    _FisAltBilgi1 = value;
    prefs.setString('ff_FisAltBilgi1', value);
  }

  String _FisAltBilgi2 = '';
  String get FisAltBilgi2 => _FisAltBilgi2;
  set FisAltBilgi2(String value) {
    _FisAltBilgi2 = value;
    prefs.setString('ff_FisAltBilgi2', value);
  }

  dynamic _firmabilgi;
  dynamic get firmabilgi => _firmabilgi;
  set firmabilgi(dynamic value) {
    _firmabilgi = value;
  }

  String _defPlaka = '';
  String get defPlaka => _defPlaka;
  set defPlaka(String value) {
    _defPlaka = value;
    prefs.setString('ff_defPlaka', value);
  }

  String _girisFirmaKodu = '';
  String get girisFirmaKodu => _girisFirmaKodu;
  set girisFirmaKodu(String value) {
    _girisFirmaKodu = value;
    prefs.setString('ff_girisFirmaKodu', value);
  }

  String _girisKullanici = '';
  String get girisKullanici => _girisKullanici;
  set girisKullanici(String value) {
    _girisKullanici = value;
    prefs.setString('ff_girisKullanici', value);
  }

  List<dynamic> _anahtarlar = [];
  List<dynamic> get anahtarlar => _anahtarlar;
  set anahtarlar(List<dynamic> value) {
    _anahtarlar = value;
  }

  void addToAnahtarlar(dynamic value) {
    _anahtarlar.add(value);
  }

  void removeFromAnahtarlar(dynamic value) {
    _anahtarlar.remove(value);
  }

  void removeAtIndexFromAnahtarlar(int index) {
    _anahtarlar.removeAt(index);
  }

  void updateAnahtarlarAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _anahtarlar[index] = updateFn(_anahtarlar[index]);
  }

  void insertAtIndexInAnahtarlar(int index, dynamic value) {
    _anahtarlar.insert(index, value);
  }

  List<dynamic> _parkkonumlari = [];
  List<dynamic> get parkkonumlari => _parkkonumlari;
  set parkkonumlari(List<dynamic> value) {
    _parkkonumlari = value;
  }

  void addToParkkonumlari(dynamic value) {
    _parkkonumlari.add(value);
  }

  void removeFromParkkonumlari(dynamic value) {
    _parkkonumlari.remove(value);
  }

  void removeAtIndexFromParkkonumlari(int index) {
    _parkkonumlari.removeAt(index);
  }

  void updateParkkonumlariAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _parkkonumlari[index] = updateFn(_parkkonumlari[index]);
  }

  void insertAtIndexInParkkonumlari(int index, dynamic value) {
    _parkkonumlari.insert(index, value);
  }

  int _para1 = 0;
  int get para1 => _para1;
  set para1(int value) {
    _para1 = value;
    prefs.setInt('ff_para1', value);
  }

  int _para2 = 0;
  int get para2 => _para2;
  set para2(int value) {
    _para2 = value;
    prefs.setInt('ff_para2', value);
  }

  int _para3 = 0;
  int get para3 => _para3;
  set para3(int value) {
    _para3 = value;
    prefs.setInt('ff_para3', value);
  }

  int _para4 = 0;
  int get para4 => _para4;
  set para4(int value) {
    _para4 = value;
    prefs.setInt('ff_para4', value);
  }

  int _para5 = 0;
  int get para5 => _para5;
  set para5(int value) {
    _para5 = value;
    prefs.setInt('ff_para5', value);
  }

  int _para6 = 0;
  int get para6 => _para6;
  set para6(int value) {
    _para6 = value;
    prefs.setInt('ff_para6', value);
  }

  int _para7 = 0;
  int get para7 => _para7;
  set para7(int value) {
    _para7 = value;
    prefs.setInt('ff_para7', value);
  }

  int _defprinterindex = 0;
  int get defprinterindex => _defprinterindex;
  set defprinterindex(int value) {
    _defprinterindex = value;
    prefs.setInt('ff_defprinterindex', value);
  }

  List<dynamic> _PrinterList = [];
  List<dynamic> get PrinterList => _PrinterList;
  set PrinterList(List<dynamic> value) {
    _PrinterList = value;
  }

  void addToPrinterList(dynamic value) {
    _PrinterList.add(value);
  }

  void removeFromPrinterList(dynamic value) {
    _PrinterList.remove(value);
  }

  void removeAtIndexFromPrinterList(int index) {
    _PrinterList.removeAt(index);
  }

  void updatePrinterListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _PrinterList[index] = updateFn(_PrinterList[index]);
  }

  void insertAtIndexInPrinterList(int index, dynamic value) {
    _PrinterList.insert(index, value);
  }

  bool _yaziciAktif = false;
  bool get yaziciAktif => _yaziciAktif;
  set yaziciAktif(bool value) {
    _yaziciAktif = value;
    prefs.setBool('ff_yaziciAktif', value);
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
