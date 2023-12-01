import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/splash.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              : const LoginWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'otoparklar',
          path: '/otoparklar',
          builder: (context, params) => const OtoparklarWidget(),
        ),
        FFRoute(
          name: 'otopark_detay',
          path: '/otoparkDetay',
          builder: (context, params) => OtoparkDetayWidget(
            otopark: params.getParam('otopark', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'kapigrup_detay',
          path: '/kapigrupDetay',
          builder: (context, params) => KapigrupDetayWidget(
            otopark: params.getParam('otopark', ParamType.JSON),
            kapigrup: params.getParam('kapigrup', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'kapi_detay',
          path: '/kapiDetay',
          builder: (context, params) => KapiDetayWidget(
            kapi: params.getParam('kapi', ParamType.JSON),
            kapigrup: params.getParam('kapigrup', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'IOController',
          path: '/iOController',
          builder: (context, params) => const IOControllerWidget(),
        ),
        FFRoute(
          name: 'IOControllerDetay',
          path: '/iOControllerDetay',
          builder: (context, params) => IOControllerDetayWidget(
            command: params.getParam('command', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'PosCihazlari',
          path: '/posCihazlari',
          builder: (context, params) => const PosCihazlariWidget(),
        ),
        FFRoute(
          name: 'PosDetay',
          path: '/posDetay',
          builder: (context, params) => PosDetayWidget(
            pos: params.getParam('pos', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'LedTabelalar',
          path: '/ledTabelalar',
          builder: (context, params) => const LedTabelalarWidget(),
        ),
        FFRoute(
          name: 'LedTabelaDetay',
          path: '/ledTabelaDetay',
          builder: (context, params) => LedTabelaDetayWidget(
            item: params.getParam('item', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Bankalar',
          path: '/bankalar',
          builder: (context, params) => const BankalarWidget(),
        ),
        FFRoute(
          name: 'BankaDetay',
          path: '/bankaDetay',
          builder: (context, params) => BankaDetayWidget(
            banka: params.getParam('banka', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Kasalar',
          path: '/kasalar',
          builder: (context, params) => const KasalarWidget(),
        ),
        FFRoute(
          name: 'KasaDetay',
          path: '/kasaDetay',
          builder: (context, params) => KasaDetayWidget(
            kasa: params.getParam('kasa', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'Giris',
          path: '/giris',
          builder: (context, params) => const GirisWidget(),
        ),
        FFRoute(
          name: 'AracListesi',
          path: '/aracListesi',
          builder: (context, params) => const AracListesiWidget(),
        ),
        FFRoute(
          name: 'Cikis',
          path: '/cikis',
          builder: (context, params) => const CikisWidget(),
        ),
        FFRoute(
          name: 'Aboneler',
          path: '/aboneler',
          builder: (context, params) => const AbonelerWidget(),
        ),
        FFRoute(
          name: 'CikisBilgi',
          path: '/cikisBilgi',
          builder: (context, params) => CikisBilgiWidget(
            gecisId: params.getParam('gecisId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'gunSonuRapor',
          path: '/gunSonuRapor',
          builder: (context, params) => const GunSonuRaporWidget(),
        ),
        FFRoute(
          name: 'otoparkdurum',
          path: '/otoparkdurum',
          builder: (context, params) => const OtoparkdurumWidget(),
        ),
        FFRoute(
          name: 'aracistekListe',
          path: '/aracistekListe',
          builder: (context, params) => const AracistekListeWidget(),
        ),
        FFRoute(
          name: 'PrinterList',
          path: '/printerList',
          builder: (context, params) => PrinterListWidget(
            yazicilar:
                params.getParam<dynamic>('yazicilar', ParamType.JSON, true),
          ),
        ),
        FFRoute(
          name: 'AboneDetay',
          path: '/aboneDetay',
          builder: (context, params) => AboneDetayWidget(
            cari: params.getParam('cari', ParamType.JSON),
            kod: params.getParam('kod', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'AboneAraclar',
          path: '/aboneAraclar',
          builder: (context, params) => AboneAraclarWidget(
            cari: params.getParam('cari', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'AboneAracDetay',
          path: '/aboneAracDetay',
          builder: (context, params) => AboneAracDetayWidget(
            arac: params.getParam('arac', ParamType.JSON),
            cariKod: params.getParam('cariKod', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'register',
          path: '/register',
          builder: (context, params) => const RegisterWidget(),
        ),
        FFRoute(
          name: 'fis_ayar',
          path: '/fisAyar',
          builder: (context, params) => const FisAyarWidget(),
        ),
        FFRoute(
          name: 'Kullanicilar',
          path: '/kullanicilar',
          builder: (context, params) => const KullanicilarWidget(),
        ),
        FFRoute(
          name: 'KullaniciDetay',
          path: '/kullaniciDetay',
          builder: (context, params) => KullaniciDetayWidget(
            personel: params.getParam('personel', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Support',
          path: '/support',
          builder: (context, params) => const SupportWidget(),
        ),
        FFRoute(
          name: 'Tarifeler',
          path: '/tarifeler',
          builder: (context, params) => const TarifelerWidget(),
        ),
        FFRoute(
          name: 'TarifeDetay',
          path: '/tarifeDetay',
          builder: (context, params) => TarifeDetayWidget(
            tarife: params.getParam('tarife', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'TarifeFiyatlar',
          path: '/tarifeFiyatlar',
          builder: (context, params) => TarifeFiyatlarWidget(
            tarife: params.getParam('tarife', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'TarifeFiyatDetay',
          path: '/tarifeFiyatDetay',
          builder: (context, params) => TarifeFiyatDetayWidget(
            otoparkId: params.getParam('otoparkId', ParamType.int),
            tarifeId: params.getParam('tarifeId', ParamType.int),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'About',
          path: '/about',
          builder: (context, params) => const AboutWidget(),
        ),
        FFRoute(
          name: 'Urunler',
          path: '/urunler',
          builder: (context, params) => const UrunlerWidget(),
        ),
        FFRoute(
          name: 'UrunDetay',
          path: '/urunDetay',
          builder: (context, params) => UrunDetayWidget(
            kod: params.getParam('kod', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ParkKonumDetay',
          path: '/parkKonumDetay',
          builder: (context, params) => ParkKonumDetayWidget(
            id: params.getParam('id', ParamType.int),
            kapiGrupId: params.getParam('kapiGrupId', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'portal_home',
          path: '/portalHome',
          builder: (context, params) => const PortalHomeWidget(),
        ),
        FFRoute(
          name: 'portal_mainpage',
          path: '/portalMainpage',
          builder: (context, params) => const PortalMainpageWidget(),
        ),
        FFRoute(
          name: 'portal_liste',
          path: '/portalListe',
          builder: (context, params) => const PortalListeWidget(),
        ),
        FFRoute(
          name: 'portal_profil',
          path: '/portalProfil',
          builder: (context, params) => const PortalProfilWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
