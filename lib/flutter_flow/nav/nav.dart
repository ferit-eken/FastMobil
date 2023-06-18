import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

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
                  'assets/images/traffixsplash.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/traffixsplash.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              : LoginWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'otoparklar',
          path: '/otoparklar',
          builder: (context, params) => OtoparklarWidget(),
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
          builder: (context, params) => IOControllerWidget(),
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
          builder: (context, params) => PosCihazlariWidget(),
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
          builder: (context, params) => LedTabelalarWidget(),
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
          builder: (context, params) => BankalarWidget(),
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
          builder: (context, params) => KasalarWidget(),
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
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'Giris',
          path: '/giris',
          builder: (context, params) => GirisWidget(),
        ),
        FFRoute(
          name: 'AracListesi',
          path: '/aracListesi',
          builder: (context, params) => AracListesiWidget(),
        ),
        FFRoute(
          name: 'Cikis',
          path: '/cikis',
          builder: (context, params) => CikisWidget(),
        ),
        FFRoute(
          name: 'Aboneler',
          path: '/aboneler',
          builder: (context, params) => AbonelerWidget(),
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
          builder: (context, params) => GunSonuRaporWidget(),
        ),
        FFRoute(
          name: 'otoparkdurum',
          path: '/otoparkdurum',
          builder: (context, params) => OtoparkdurumWidget(),
        ),
        FFRoute(
          name: 'aracistekListe',
          path: '/aracistekListe',
          builder: (context, params) => AracistekListeWidget(),
        ),
        FFRoute(
          name: 'PrinterList',
          path: '/printerList',
          builder: (context, params) => PrinterListWidget(
            yaziciListe:
                params.getParam<dynamic>('yaziciListe', ParamType.JSON, true),
          ),
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
