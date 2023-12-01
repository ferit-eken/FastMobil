import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start User Group Code

class UserGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? firmaKodu = '',
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "FirmaKodu": "$firmaKodu",
  "Username": "$username",
  "Password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${UserGroup.baseUrl}/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.UserId''',
      );
  dynamic firmaAdi(dynamic response) => getJsonField(
        response,
        r'''$.FirmaAdi''',
      );
  dynamic veritabani(dynamic response) => getJsonField(
        response,
        r'''$.Veritabani''',
      );
  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.Username''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? command = 'INSERT',
    String? firmaKodu = '',
    String? firmaAdi = '',
    String? ticariUnvan = '',
    String? adres = '',
    String? vergiDairesi = '',
    String? vergiNo = '',
    String? yetkiliAdi = '',
    String? telefon = '',
    String? ulke = '',
    String? sehir = '',
    String? ilce = '',
    String? mail = '',
    String? userName = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$firmaKodu",
  "Bilgi": {
    "FirmaKodu": "$firmaKodu",
    "FirmaAdi": "$firmaAdi",
    "TicariUnvan": "$ticariUnvan",
    "Adres": "$adres",
    "VergiDairesi": "$vergiDairesi",
    "VergiNo": "$vergiNo",
    "YetkiliAdi": "$yetkiliAdi",
    "Telefon": "$telefon",
    "Ulke": "$ulke",
    "Sehir": "$sehir",
    "Ilce": "$ilce",
    "Mail": "$mail",
    "UserName": "$userName",
    "Password": "$password"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${UserGroup.baseUrl}/Firma',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.UserId''',
      );
  dynamic firmaAdi(dynamic response) => getJsonField(
        response,
        r'''$.FirmaAdi''',
      );
  dynamic veritabani(dynamic response) => getJsonField(
        response,
        r'''$.Veritabani''',
      );
  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.Username''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
}

/// End User Group Code

/// Start Pts Group Code

class PtsGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api/pts';
  static Map<String, String> headers = {};
  static AracGirisCall aracGirisCall = AracGirisCall();
  static AracSorguCall aracSorguCall = AracSorguCall();
  static TahsilatCall tahsilatCall = TahsilatCall();
  static GunsonuRaporCall gunsonuRaporCall = GunsonuRaporCall();
  static GunsonuKapatCall gunsonuKapatCall = GunsonuKapatCall();
  static HesapKapatCall hesapKapatCall = HesapKapatCall();
}

class AracGirisCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = '',
    String? otoparkId = '',
    String? kapiGrupId = '',
    String? kapiId = '',
    String? aracTipId = '1',
    int? personelKod = 1,
    String? girisTuru = 'UCRETLI',
    String? plaka = '',
    bool? hasar1,
    bool? hasar2,
    bool? hasar3,
    bool? hasar4,
    bool? hasar5,
    bool? hasar6,
    bool? hasar7,
    bool? hasar8,
    bool? hasar9,
    bool? hasar10,
    bool? hasar11,
    bool? hasar12,
    bool? hasar13,
    int? id = 0,
    String? adSoyad = '',
    String? telefon = '',
    String? parkKonumId = '',
    int? anahtarKodu,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "Id": $id,
    "OtoparkId": "$otoparkId",
    "KapiGrupId": "$kapiGrupId",
    "kapiId": "$kapiId",
    "AracTipId": "$aracTipId",
    "PersonelKod": $personelKod,
    "GirisTuru": "$girisTuru",
    "Plaka": "$plaka",
    "AdSoyad": "$adSoyad",
    "Telefon": "$telefon",
    "ParkKonumId": "$parkKonumId",
    "AnahtarKodu": $anahtarKodu,
    "Hasar_1": $hasar1,
    "Hasar_2": $hasar2,
    "Hasar_3": $hasar3,
    "Hasar_4": $hasar4,
    "Hasar_5": $hasar5,
    "Hasar_6": $hasar6,
    "Hasar_7": $hasar7,
    "Hasar_8": $hasar8,
    "Hasar_9": $hasar9,
    "Hasar_10": $hasar10,
    "Hasar_11": $hasar11,
    "Hasar_12": $hasar12,
    "Hasar_13": $hasar13
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AracGiris',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic gecisbilgi(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic aracTipi(dynamic response) => getJsonField(
        response,
        r'''$.data.AracTipAdi''',
      );
  dynamic fisNo(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class AracSorguCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = '',
    String? kapiGrupId = '',
    String? aracTipId = '1',
    String? plaka = '',
    int? id,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "GirisKapiGrupId": "$kapiGrupId",
    "AracTipId": "$aracTipId",
    "Plaka": "$plaka",
    "Id": $id
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AracSorgu',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic otoparkId(dynamic response) => getJsonField(
        response,
        r'''$.data.OtoparkId''',
      );
  dynamic girisKapiGrupId(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiGrupId''',
      );
  dynamic girisKapiId(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiId''',
      );
  dynamic otoparkAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.OtoparkAdi''',
      );
  dynamic girisKapiAd(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiAd''',
      );
  dynamic girisTuru(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisTuru''',
      );
  dynamic ulkeKodu(dynamic response) => getJsonField(
        response,
        r'''$.data.UlkeKodu''',
      );
  dynamic tarifeId(dynamic response) => getJsonField(
        response,
        r'''$.data.TarifeId''',
      );
  dynamic tarifeAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.TarifeAdi''',
      );
  dynamic girisTarih(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisTarih''',
      );
  dynamic plaka(dynamic response) => getJsonField(
        response,
        r'''$.data.Plaka''',
      );
  dynamic cariKod(dynamic response) => getJsonField(
        response,
        r'''$.data.CariKod''',
      );
  dynamic unvam(dynamic response) => getJsonField(
        response,
        r'''$.data.Unvam''',
      );
  dynamic cikisKapiId(dynamic response) => getJsonField(
        response,
        r'''$.data.CikisKapiId''',
      );
  dynamic cikisKapiAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.CikisKapiAdi''',
      );
  dynamic gecenSure(dynamic response) => getJsonField(
        response,
        r'''$.data.GecenSure''',
      );
  dynamic ucret(dynamic response) => getJsonField(
        response,
        r'''$.data.Ucret''',
      );
  dynamic indirim(dynamic response) => getJsonField(
        response,
        r'''$.data.Indirim''',
      );
  dynamic tutar(dynamic response) => getJsonField(
        response,
        r'''$.data.Tutar''',
      );
  dynamic isActive(dynamic response) => getJsonField(
        response,
        r'''$.data.isActive''',
      );
  dynamic tahsilat(dynamic response) => getJsonField(
        response,
        r'''$.data.Tahsilat''',
      );
  dynamic kalan(dynamic response) => getJsonField(
        response,
        r'''$.data.Kalan''',
      );
  dynamic cikisTarih(dynamic response) => getJsonField(
        response,
        r'''$.data.CikisTarih''',
      );
  dynamic aracTipId(dynamic response) => getJsonField(
        response,
        r'''$.data.AracTipId''',
      );
  dynamic aracTipAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.AracTipAdi''',
      );
  dynamic adSoyad(dynamic response) => getJsonField(
        response,
        r'''$.data.AdSoyad''',
      );
  dynamic telefon(dynamic response) => getJsonField(
        response,
        r'''$.data.Telefon''',
      );
  dynamic anahtarKodu(dynamic response) => getJsonField(
        response,
        r'''$.data.AnahtarKodu''',
      );
  dynamic parkKonumId(dynamic response) => getJsonField(
        response,
        r'''$.data.ParkKonumId''',
      );
  dynamic parkKonumAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.ParkKonumAdi''',
      );
}

class TahsilatCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = '',
    int? id,
    int? userId,
    String? kasaKodu = '',
    int? bankaKodu,
    double? tutar,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "Id": $id,
    "UserId": $userId,
    "KasaKodu": "$kasaKodu",
    "BankaKodu": $bankaKodu,
    "Tutar": $tutar
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Tahsilat',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic otoparkId(dynamic response) => getJsonField(
        response,
        r'''$.data.OtoparkId''',
      );
  dynamic girisKapiGrupId(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiGrupId''',
      );
  dynamic girisKapiId(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiId''',
      );
  dynamic otoparkAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.OtoparkAdi''',
      );
  dynamic girisKapiAd(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisKapiAd''',
      );
  dynamic girisTuru(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisTuru''',
      );
  dynamic ulkeKodu(dynamic response) => getJsonField(
        response,
        r'''$.data.UlkeKodu''',
      );
  dynamic tarifeId(dynamic response) => getJsonField(
        response,
        r'''$.data.TarifeId''',
      );
  dynamic tarifeAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.TarifeAdi''',
      );
  dynamic girisTarih(dynamic response) => getJsonField(
        response,
        r'''$.data.GirisTarih''',
      );
  dynamic plaka(dynamic response) => getJsonField(
        response,
        r'''$.data.Plaka''',
      );
  dynamic cariKod(dynamic response) => getJsonField(
        response,
        r'''$.data.CariKod''',
      );
  dynamic unvam(dynamic response) => getJsonField(
        response,
        r'''$.data.Unvam''',
      );
  dynamic cikisKapiId(dynamic response) => getJsonField(
        response,
        r'''$.data.CikisKapiId''',
      );
  dynamic cikisKapiAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.CikisKapiAdi''',
      );
  dynamic gecenSure(dynamic response) => getJsonField(
        response,
        r'''$.data.GecenSure''',
      );
  dynamic ucret(dynamic response) => getJsonField(
        response,
        r'''$.data.Ucret''',
      );
  dynamic indirim(dynamic response) => getJsonField(
        response,
        r'''$.data.Indirim''',
      );
  dynamic tutar(dynamic response) => getJsonField(
        response,
        r'''$.data.Tutar''',
      );
  dynamic isActive(dynamic response) => getJsonField(
        response,
        r'''$.data.isActive''',
      );
  dynamic aracTipAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.AracTipAdi''',
      );
  dynamic aracTipId(dynamic response) => getJsonField(
        response,
        r'''$.data.AracTipId''',
      );
  dynamic tahsilat(dynamic response) => getJsonField(
        response,
        r'''$.data.Tahsilat''',
      );
  dynamic adSoyad(dynamic response) => getJsonField(
        response,
        r'''$.data.AdSoyad''',
      );
  dynamic telefon(dynamic response) => getJsonField(
        response,
        r'''$.data.Telefon''',
      );
  dynamic anahtarKodu(dynamic response) => getJsonField(
        response,
        r'''$.data.AnahtarKodu''',
      );
  dynamic parkKonumId(dynamic response) => getJsonField(
        response,
        r'''$.data.ParkKonumId''',
      );
  dynamic parkKonumAdi(dynamic response) => getJsonField(
        response,
        r'''$.data.ParkKonumAdi''',
      );
  dynamic kalan(dynamic response) => getJsonField(
        response,
        r'''$.data.Kalan''',
      );
}

class GunsonuRaporCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = 'GUNSONU_RAPOR',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "UserId": $userId
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GunsonuRapor',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.UserId''',
      );
  dynamic tarih(dynamic response) => getJsonField(
        response,
        r'''$.Tarih''',
      );
  dynamic toplamGiris(dynamic response) => getJsonField(
        response,
        r'''$.ToplamGiris''',
      );
  dynamic toplamCikis(dynamic response) => getJsonField(
        response,
        r'''$.ToplamCikis''',
      );
  dynamic iceridekiAracSayisi(dynamic response) => getJsonField(
        response,
        r'''$.IceridekiAracSayisi''',
      );
  dynamic ucretliSayi(dynamic response) => getJsonField(
        response,
        r'''$.UcretliSayi''',
      );
  dynamic ucretsizSayi(dynamic response) => getJsonField(
        response,
        r'''$.UcretsizSayi''',
      );
  dynamic ucretsizDagilim(dynamic response) => getJsonField(
        response,
        r'''$.UcretsizDagilim''',
      );
  dynamic toplamUcret(dynamic response) => getJsonField(
        response,
        r'''$.ToplamUcret''',
      );
  dynamic nakitTahsilat(dynamic response) => getJsonField(
        response,
        r'''$.NakitTahsilat''',
      );
  dynamic krediKartiToplam(dynamic response) => getJsonField(
        response,
        r'''$.KrediKartiToplam''',
      );
  dynamic vadelitahsilat(dynamic response) => getJsonField(
        response,
        r'''$.Vadelitahsilat''',
      );
}

class GunsonuKapatCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = 'GUNSONU_YAP',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "UserId": $userId
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GunsonuKapat',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
}

class HesapKapatCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? command = '',
    int? id,
    int? userId,
    int? kapiGrupId,
    int? kapiId,
    String? cikisTuru = 'UCRETLI',
    int? ucretsizEtiketId = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "Command": "$command",
  "data": {
    "Id": $id,
    "UserId": $userId,
    "KapiGrupId": $kapiGrupId,
    "kapiId": $kapiId,
    "UcretsizEtiketId": $ucretsizEtiketId,
    "CikisTuru": "$cikisTuru"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'HesapKapat',
      apiUrl: '${PtsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

/// End Pts Group Code

/// Start Cari Group Code

class CariGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api';
  static Map<String, String> headers = {};
  static CariKayitCall cariKayitCall = CariKayitCall();
  static CariAracKayitCall cariAracKayitCall = CariAracKayitCall();
}

class CariKayitCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? kod = '',
    String? ad = '',
    String? soyad = '',
    String? unvan = '',
    String? cariGrup = '',
    String? gsm = '',
    String? mail = '',
    int? durum = 1,
    int? karaListe = 0,
    String? adres = '',
    String? cariNot = '',
    int? createdUserId,
    String? command = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "Cari",
  "KeyField": "Kod",
  "keyvalue": "'$kod'",
  "Command": "$command",
  "data": {
    "Kod": "$kod",
    "Ad": "$ad",
    "Soyad": "$soyad",
    "Unvan": "$unvan",
    "CariGrup": "$cariGrup",
    "VDaire": "",
    "VNo": "",
    "Adres": "$adres",
    "GSM": "$gsm",
    "Mail": "$mail",
    "CariNot": "$cariNot",
    "CariTip": "ALICI",
    "IL": "",
    "ILCE": "",
    "TcKimlik": "",
    "Personel": $createdUserId,
    "EkHesap": 0,
    "Multireferans": 0,
    "isdelete": 0,
    "Durum": $durum,
    "vadelisatis": 1,
    "FiyatKodu": 1,
    "GeciciKart": 0,
    "KaraListe": 0,
    "IletiKabul": 1,
    "Satis_Iskonto_Oran": 0,
    "Puan_Kazansin": 1
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CariKayit',
      apiUrl: '${CariGroup.baseUrl}/values/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class CariAracKayitCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? cariKod = '',
    String? adSoyad = '',
    String? telefon = '',
    String? plaka = '',
    String? kullanimTipi = '',
    int? isActive,
    String? command = '',
    int? id,
    String? aracTipId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "CariAraclar",
  "KeyField": "Id",
  "keyvalue": $id,
  "Command": "$command",
  "data": {
    "CariKod": "$cariKod",
    "FirmaAdi": "",
    "AdSoyad": "$adSoyad",
    "Telefon": "$telefon",
    "Plaka": "$plaka",
    "AracMarkaId": 1,
    "AracModelId": 1,
    "AracTipId": $aracTipId,
    "KullanimTipi": "$kullanimTipi",
    "AracRenkId": 1,
    "EtiketID": "-",
    "Yetkiler": "-",
    "isActive": $isActive
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CariAracKayit',
      apiUrl: '${CariGroup.baseUrl}/values/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

/// End Cari Group Code

/// Start Stok Group Code

class StokGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api/Stok';
  static Map<String, String> headers = {};
  static StokKayitCall stokKayitCall = StokKayitCall();
}

class StokKayitCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? kod = '',
    String? urunAd = '',
    double? satisFiyat1,
    int? durum = 1,
    String? command = '',
  }) async {
    final ffApiRequestBody = '''
{
   "Command": "$command",
  "data": {
    "Kod": "$kod",
    "UrunAd": "$urunAd",
    "SatisFiyat1":$satisFiyat1 ,
    "Durum":$durum 
    
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'StokKayit',
      apiUrl: '${StokGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.Succeeded''',
      );
}

/// End Stok Group Code

/// Start Settings Group Code

class SettingsGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api/values';
  static Map<String, String> headers = {};
  static GetALLCall getALLCall = GetALLCall();
  static GetFilterDataCall getFilterDataCall = GetFilterDataCall();
  static GetRowFilterDataCall getRowFilterDataCall = GetRowFilterDataCall();
  static GetRowDataCall getRowDataCall = GetRowDataCall();
  static OtoparkUpdateCall otoparkUpdateCall = OtoparkUpdateCall();
  static PosUpdateCall posUpdateCall = PosUpdateCall();
  static BankaUpdateCall bankaUpdateCall = BankaUpdateCall();
  static OtoparkKonumUpdateCall otoparkKonumUpdateCall =
      OtoparkKonumUpdateCall();
  static AboneTarifeUpdateCall aboneTarifeUpdateCall = AboneTarifeUpdateCall();
  static AboneTarifeFiyatUpdateCall aboneTarifeFiyatUpdateCall =
      AboneTarifeFiyatUpdateCall();
  static KasaUpdateCall kasaUpdateCall = KasaUpdateCall();
  static PersonelUpdateCall personelUpdateCall = PersonelUpdateCall();
  static IOControllerUpdateCall iOControllerUpdateCall =
      IOControllerUpdateCall();
  static LedPanelUpdateCall ledPanelUpdateCall = LedPanelUpdateCall();
  static UpdateRowCall updateRowCall = UpdateRowCall();
  static GetIDCall getIDCall = GetIDCall();
  static OtoparkKapiUpdateCall otoparkKapiUpdateCall = OtoparkKapiUpdateCall();
  static OtoparkKapiGrupUpdateCall otoparkKapiGrupUpdateCall =
      OtoparkKapiGrupUpdateCall();
}

class GetALLCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetALL',
      apiUrl: '${SettingsGroup.baseUrl}/$db/$tablename',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic tablename(dynamic response) => getJsonField(
        response,
        r'''$.tablename''',
        true,
      );
  dynamic filtre(dynamic response) => getJsonField(
        response,
        r'''$.filtre''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
        true,
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
        true,
      );
}

class GetFilterDataCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? filtre = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetFilterData',
      apiUrl: '${SettingsGroup.baseUrl}/$db/$tablename/$filtre',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic tablename(dynamic response) => getJsonField(
        response,
        r'''$.tablename''',
        true,
      );
  dynamic filtre(dynamic response) => getJsonField(
        response,
        r'''$.filtre''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
        true,
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
        true,
      );
}

class GetRowFilterDataCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyfield = 'Id',
    String? keyvalue = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRowFilterData',
      apiUrl:
          '${SettingsGroup.baseUrl}/$db/$tablename/$keyfield/$keyvalue',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic tablename(dynamic response) => getJsonField(
        response,
        r'''$.tablename''',
        true,
      );
  dynamic filtre(dynamic response) => getJsonField(
        response,
        r'''$.filtre''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
        true,
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
        true,
      );
}

class GetRowDataCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyfield = '',
    String? keyvalue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRowData',
      apiUrl:
          '${SettingsGroup.baseUrl}/$db/$tablename/$keyfield/$keyvalue',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic tablename(dynamic response) => getJsonField(
        response,
        r'''$.tablename''',
      );
  dynamic filtre(dynamic response) => getJsonField(
        response,
        r'''$.filtre''',
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
}

class OtoparkUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? keyvalue = '',
    String? command = '',
    int? otoparkId,
    String? otoparkKodu = '',
    String? otoparkAdi = '',
    String? arsivPath = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $otoparkId,
    "OtoparkKodu": "$otoparkKodu",
    "OtoparkAdi": "$otoparkAdi",
    "ArsivPath": "$arsivPath"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OtoparkUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class PosUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? keyvalue = '',
    String? command = '',
    int? id,
    String? posAdi = '',
    String? marka = '',
    String? baglantiTipi = '',
    String? adres = '',
    int? tcpPort,
    int? baudrate,
    String? posKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "PosAdi": "$posAdi",
    "Marka": "$marka",
    "BaglantiTipi": "$baglantiTipi",
    "Adres": "$adres",
    "TcpPort": $tcpPort,
    "Baudrate": $baudrate,
    "PosKey": "$posKey"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PosUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class BankaUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'Bankalar',
    String? keyField = 'Kod',
    String? keyvalue = '',
    String? command = 'UPDATE',
    String? kod = '',
    String? bankaAd = '',
    String? sube = '',
    String? hesap = '',
    String? dovizKod = 'TL',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Kod": "$kod",
    "BankaAd": "$bankaAd",
    "Sube": "$sube",
    "Hesap": "$hesap",
    "DovizKod": "$dovizKod"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BankaUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class OtoparkKonumUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'OtoparkKonum',
    String? keyField = 'Id',
    String? keyvalue = '',
    String? command = 'UPDATE',
    int? id,
    String? kapiGrupId = '',
    String? konumAdi = '',
    bool? durum = true,
    bool? isActive = true,
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "KapiGrupId": $kapiGrupId,
    "KonumAdi": "$konumAdi",
    "Durum": $durum,
    "isActive": $isActive
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OtoparkKonumUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class AboneTarifeUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'AboneTarife',
    String? keyField = 'Id',
    String? keyvalue = '',
    String? command = 'UPDATE',
    int? id,
    String? otoparkId = '',
    String? tarifeAdi = '',
    String? aracTipId = '',
    String? odemeGecerlilikSuresi = 'TL',
    int? gunlukUcretsizLimitSayi,
    String? gunDonusumSaati = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "OtoparkId": $otoparkId,
    "TarifeAdi": "$tarifeAdi",
    "AracTipId": $aracTipId,
    "OdemeGecerlilikSuresi": "$odemeGecerlilikSuresi",
    "GunlukUcretsizLimitSayi": $gunlukUcretsizLimitSayi,
    "GunDonusumSaati": "$gunDonusumSaati"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AboneTarifeUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class AboneTarifeFiyatUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'AboneTarife',
    String? keyField = 'Id',
    String? keyvalue = '',
    String? command = 'UPDATE',
    int? id,
    int? otoparkId,
    int? tarifeId,
    String? baslangic = '',
    String? bitis = 'TL',
    double? ucret,
    bool? gun0,
    bool? gun1,
    bool? gun2,
    bool? gun3,
    bool? gun4,
    bool? gun5,
    bool? gun6,
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "OtoparkId": $otoparkId,
    "TarifeId": $tarifeId,
    "Baslangic": "$baslangic",
    "Bitis": "$bitis",
    "Ucret": $ucret,
    "Gun0": $gun0,
    "Gun1": $gun1,
    "Gun2": $gun2,
    "Gun3": $gun3,
    "Gun4": $gun4,
    "Gun5": $gun5,
    "Gun6": $gun6
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AboneTarifeFiyatUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class KasaUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'Bankalar',
    String? keyField = 'Kod',
    String? keyvalue = '',
    String? command = 'UPDATE',
    String? kod = '',
    String? aciklama = '',
    String? dovizTuru = 'TL',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Kod": "$kod",
    "Aciklama": "$aciklama",
    "DovizTuru": "$dovizTuru"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KasaUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
}

class PersonelUpdateCall {
  Future<ApiCallResponse> call({
    String? db = 'fastpark',
    String? tablename = 'Bankalar',
    String? keyField = 'Kod',
    String? keyvalue = '',
    String? command = 'UPDATE',
    String? kod = '',
    String? ad = '',
    String? soyad = 'TL',
    String? username = '',
    String? sifre = '',
    String? gsm = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Kod": "$kod",
    "Ad": "$ad",
    "Soyad": "$soyad",
    "Username": "$username",
    "Sifre": "$sifre",
    "GSM": "$gsm"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PersonelUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
}

class IOControllerUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = 'IOController',
    String? keyField = 'Id',
    String? keyvalue = '',
    String? command = 'UPDATE',
    int? id = 0,
    String? aciklama = 'IO1',
    int? cikisSayisi = 2,
    String? baglantiTuru = 'TCP',
    String? adres = '127.0.0.1',
    int? baudrate = 9600,
    int? tCPPort = 23,
    int? tetikAraligi = 5,
    bool? isActive = true,
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "Aciklama": "$aciklama",
    "CikisSayisi": $cikisSayisi,
    "BaglantiTuru": "$baglantiTuru",
    "Adres": "$adres",
    "Baudrate": $baudrate,
    "TCPPort": $tCPPort,
    "TetikAraligi": $tetikAraligi,
    "isActive": $isActive
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'IOControllerUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class LedPanelUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = 'IOController',
    String? keyField = 'Id',
    String? keyvalue = '',
    String? command = 'UPDATE',
    int? id = 0,
    String? panelAdi = 'IO1',
    String? marka = '',
    String? baglantiTuru = 'TCP',
    String? adres = '127.0.0.1',
    int? baudrate = 9600,
    int? tcpPort = 23,
    int? yatayPx = 5,
    int? dikeyPx,
    bool? isActive = true,
    int? beklemeSn,
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "PanelAdi": "$panelAdi",
    "Marka": "$marka",
    "BaglantiTuru": "$baglantiTuru",
    "Adres": "$adres",
    "Baudrate": $baudrate,
    "TcpPort": $tcpPort,
    "Yatay_Px": $yatayPx,
    "Dikey_Px": $dikeyPx,
    "BeklemeSn": $beklemeSn,
    "isActive": $isActive
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LedPanelUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class UpdateRowCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? keyvalue = '',
    String? command = 'UPDATE',
    dynamic dataJson,
  }) async {
    final data = _serializeJson(dataJson);
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": $data
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateRow',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class GetIDCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? command = 'GETID',
  }) async {
    final ffApiRequestBody = '''
{
  "db": "$db",
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "Command": "$command"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetID',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
}

class OtoparkKapiUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? keyvalue = '',
    String? command = '',
    int? kapiId,
    int? kapiGrupId,
    String? kapiAdi = '',
    String? gecisYonu = '',
    int? tanimsizOnayi,
    int? gecisKaydi,
    String? girisKameraId = '',
    int? goruntuIsleme,
    String? iOControllerId = '',
    int? tetikNo,
    int? pauseTetik,
    int? tetikKapat,
    int? tetikKapamaSn,
    String? ledPanelId = '',
    String? kasaKodu = '',
    String? bankaKodu = '',
    int? aboneGecisi,
    int? ucretliGecis,
    int? misafirGecis,
    int? odemeNoktasi,
    String? posId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $kapiId,
    "KapiGrupId": $kapiGrupId,
    "KapiAdi": "$kapiAdi",
    "GecisYonu": "$gecisYonu",
    "TanimsizOnayi": $tanimsizOnayi,
    "GecisKaydi": $gecisKaydi,
    "GirisKameraId": "$girisKameraId",
    "Goruntu_Isleme": $goruntuIsleme,
    "IOControllerId": "$iOControllerId",
    "TetikNo": $tetikNo,
    "PauseTetik": $pauseTetik,
    "TetikKapat": $tetikKapat,
    "TetikKapamaSn": $tetikKapamaSn,
    "LedPanelId": "$ledPanelId",
    "KasaKodu": "$kasaKodu",
    "BankaKodu": "$bankaKodu",
    "AboneGecisi": $aboneGecisi,
    "UcretliGecis": $ucretliGecis,
    "MisafirGecis": $misafirGecis,
    "OdemeNoktasi": $odemeNoktasi,
    "PosId": "$posId"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OtoparkKapiUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

class OtoparkKapiGrupUpdateCall {
  Future<ApiCallResponse> call({
    String? db = '',
    String? tablename = '',
    String? keyField = '',
    String? keyvalue = '',
    String? command = '',
    int? id,
    int? otoparkId,
    String? grupAdi = 'OTOPARK',
    String? grupTuru = 'OTOPARK',
    String? girisYoksaCikis = 'GIRISYAP',
    int? kapasite,
    int? nakitOdeme,
    int? krediKartiOdeme,
    int? borcKaydet,
    int? ucretsizOdeme,
    int? indirimKarti,
    int? aboneKayit,
  }) async {
    final ffApiRequestBody = '''
{
  "tablename": "$tablename",
  "KeyField": "$keyField",
  "keyvalue": "$keyvalue",
  "Command": "$command",
  "data": {
    "Id": $id,
    "OtoparkId": $otoparkId,
    "GrupAdi": "$grupAdi",
    "GrupTuru": "$grupTuru",
    "GirisYoksaCikis": "$girisYoksaCikis",
    "Kapasite": $kapasite,
    "NakitOdeme": $nakitOdeme,
    "KrediKartiOdeme": $krediKartiOdeme,
    "BorcKaydet": $borcKaydet,
    "UcretsizOdeme": $ucretsizOdeme,
    "IndirimKarti": $indirimKarti,
    "AboneKayit": $aboneKayit
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OtoparkKapiGrupUpdate',
      apiUrl: '${SettingsGroup.baseUrl}/$db',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic successed(dynamic response) => getJsonField(
        response,
        r'''$.Successed''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.Id''',
      );
}

/// End Settings Group Code

/// Start Firma Group Code

class FirmaGroup {
  static String baseUrl = 'https://mobil.fastpark.com.tr/api/Firma';
  static Map<String, String> headers = {};
}

/// End Firma Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
