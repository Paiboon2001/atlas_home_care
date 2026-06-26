import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                child: Center(
                  child: Image.asset(
                    'assets/images/AHC_V2.webp',
                    width: 220.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
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
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    child: Center(
                      child: Image.asset(
                        'assets/images/AHC_V2.webp',
                        width: 220.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : const LoginWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: PdpaWidget.routeName,
          path: PdpaWidget.routePath,
          builder: (context, params) => const PdpaWidget(),
        ),
        FFRoute(
          name: PINCodeWidget.routeName,
          path: PINCodeWidget.routePath,
          builder: (context, params) => const PINCodeWidget(),
        ),
        FFRoute(
          name: MapWidget.routeName,
          path: MapWidget.routePath,
          builder: (context, params) => const MapWidget(),
        ),
        FFRoute(
          name: NewsdetailWidget.routeName,
          path: NewsdetailWidget.routePath,
          builder: (context, params) => const NewsdetailWidget(),
        ),
        FFRoute(
          name: HomevisitlistWidget.routeName,
          path: HomevisitlistWidget.routePath,
          builder: (context, params) => const HomevisitlistWidget(),
        ),
        FFRoute(
          name: SettingWidget.routeName,
          path: SettingWidget.routePath,
          builder: (context, params) => const SettingWidget(),
        ),
        FFRoute(
          name: ConnectdevicesWidget.routeName,
          path: ConnectdevicesWidget.routePath,
          builder: (context, params) => const ConnectdevicesWidget(),
        ),
        FFRoute(
          name: MapHomeWidget.routeName,
          path: MapHomeWidget.routePath,
          builder: (context, params) => const MapHomeWidget(),
        ),
        FFRoute(
          name: AddVisitinginformationWidget.routeName,
          path: AddVisitinginformationWidget.routePath,
          builder: (context, params) => const AddVisitinginformationWidget(),
        ),
        FFRoute(
          name: PatientinfoWidget.routeName,
          path: PatientinfoWidget.routePath,
          builder: (context, params) => const PatientinfoWidget(),
        ),
        FFRoute(
          name: AppointmentHistoryWidget.routeName,
          path: AppointmentHistoryWidget.routePath,
          builder: (context, params) => const AppointmentHistoryWidget(),
        ),
        FFRoute(
          name: HomeVisitWidget.routeName,
          path: HomeVisitWidget.routePath,
          builder: (context, params) => const HomeVisitWidget(),
        ),
        FFRoute(
          name: PlanForVisitWidget.routeName,
          path: PlanForVisitWidget.routePath,
          builder: (context, params) => const PlanForVisitWidget(),
        ),
        FFRoute(
          name: NotiWidget.routeName,
          path: NotiWidget.routePath,
          builder: (context, params) => const NotiWidget(),
        ),
        FFRoute(
          name: DetailesPatientNewtaskWidget.routeName,
          path: DetailesPatientNewtaskWidget.routePath,
          builder: (context, params) => const DetailesPatientNewtaskWidget(),
        ),
        FFRoute(
          name: CalendarWidget.routeName,
          path: CalendarWidget.routePath,
          builder: (context, params) => const CalendarWidget(),
        ),
        FFRoute(
          name: InformationCommunityOneWidget.routeName,
          path: InformationCommunityOneWidget.routePath,
          builder: (context, params) => const InformationCommunityOneWidget(),
        ),
        FFRoute(
          name: SelectLabFormWidget.routeName,
          path: SelectLabFormWidget.routePath,
          builder: (context, params) => const SelectLabFormWidget(),
        ),
        FFRoute(
          name: LABResultWidget.routeName,
          path: LABResultWidget.routePath,
          builder: (context, params) => const LABResultWidget(),
        ),
        FFRoute(
          name: PhotoLABWidget.routeName,
          path: PhotoLABWidget.routePath,
          builder: (context, params) => const PhotoLABWidget(),
        ),
        FFRoute(
          name: MainAssigntWidget.routeName,
          path: MainAssigntWidget.routePath,
          builder: (context, params) => const MainAssigntWidget(),
        ),
        FFRoute(
          name: AllSummaryWidget.routeName,
          path: AllSummaryWidget.routePath,
          builder: (context, params) => const AllSummaryWidget(),
        ),
        FFRoute(
          name: DetailsSummaryWidget.routeName,
          path: DetailsSummaryWidget.routePath,
          builder: (context, params) => const DetailsSummaryWidget(),
        ),
        FFRoute(
          name: AuthenCodeWidget.routeName,
          path: AuthenCodeWidget.routePath,
          builder: (context, params) => const AuthenCodeWidget(),
        ),
        FFRoute(
          name: LABDiabetesWidget.routeName,
          path: LABDiabetesWidget.routePath,
          builder: (context, params) => const LABDiabetesWidget(),
        ),
        FFRoute(
          name: LABBloodpressureWidget.routeName,
          path: LABBloodpressureWidget.routePath,
          builder: (context, params) => const LABBloodpressureWidget(),
        ),
        FFRoute(
          name: LABBloodfatWidget.routeName,
          path: LABBloodfatWidget.routePath,
          builder: (context, params) => const LABBloodfatWidget(),
        ),
        FFRoute(
          name: BarthelIndexScoreWidget.routeName,
          path: BarthelIndexScoreWidget.routePath,
          builder: (context, params) => BarthelIndexScoreWidget(
            pagebarthel: params.getParam(
              'pagebarthel',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ADLEverydayWidget.routeName,
          path: ADLEverydayWidget.routePath,
          builder: (context, params) => ADLEverydayWidget(
            pagebarthel: params.getParam(
              'pagebarthel',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: MainBloodWidget.routeName,
          path: MainBloodWidget.routePath,
          builder: (context, params) => const MainBloodWidget(),
        ),
        FFRoute(
          name: BloodSummaryWidget.routeName,
          path: BloodSummaryWidget.routePath,
          builder: (context, params) => const BloodSummaryWidget(),
        ),
        FFRoute(
          name: SummaryPressureWidget.routeName,
          path: SummaryPressureWidget.routePath,
          builder: (context, params) => const SummaryPressureWidget(),
        ),
        FFRoute(
          name: FormPalliativeCareWidget.routeName,
          path: FormPalliativeCareWidget.routePath,
          builder: (context, params) => const FormPalliativeCareWidget(),
        ),
        FFRoute(
          name: ChooseHosWidget.routeName,
          path: ChooseHosWidget.routePath,
          builder: (context, params) => ChooseHosWidget(
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            text: params.getParam(
              'text',
              ParamType.String,
            ),
            chand: params.getParam(
              'chand',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FormINHOMESSSWidget.routeName,
          path: FormINHOMESSSWidget.routePath,
          builder: (context, params) => const FormINHOMESSSWidget(),
        ),
        FFRoute(
          name: HomepageNewWidget.routeName,
          path: HomepageNewWidget.routePath,
          builder: (context, params) => const HomepageNewWidget(),
        ),
        FFRoute(
          name: HoldJobWidget.routeName,
          path: HoldJobWidget.routePath,
          builder: (context, params) => const HoldJobWidget(),
        ),
        FFRoute(
          name: PlanvisitNewWidget.routeName,
          path: PlanvisitNewWidget.routePath,
          builder: (context, params) => const PlanvisitNewWidget(),
        ),
        FFRoute(
          name: TwoQWidget.routeName,
          path: TwoQWidget.routePath,
          builder: (context, params) => const TwoQWidget(),
        ),
        FFRoute(
          name: NineQWidget.routeName,
          path: NineQWidget.routePath,
          builder: (context, params) => const NineQWidget(),
        ),
        FFRoute(
          name: EightQWidget.routeName,
          path: EightQWidget.routePath,
          builder: (context, params) => const EightQWidget(),
        ),
        FFRoute(
          name: MNAShortWidget.routeName,
          path: MNAShortWidget.routePath,
          builder: (context, params) => const MNAShortWidget(),
        ),
        FFRoute(
          name: MNAFullWidget.routeName,
          path: MNAFullWidget.routePath,
          builder: (context, params) => const MNAFullWidget(),
        ),
        FFRoute(
          name: CareWidget.routeName,
          path: CareWidget.routePath,
          builder: (context, params) => const CareWidget(),
        ),
        FFRoute(
          name: EsasWidget.routeName,
          path: EsasWidget.routePath,
          builder: (context, params) => const EsasWidget(),
        ),
        FFRoute(
          name: RespiratorySystemWidget.routeName,
          path: RespiratorySystemWidget.routePath,
          builder: (context, params) => const RespiratorySystemWidget(),
        ),
        FFRoute(
          name: BreatheWidget.routeName,
          path: BreatheWidget.routePath,
          builder: (context, params) => const BreatheWidget(),
        ),
        FFRoute(
          name: MarkmapWidget.routeName,
          path: MarkmapWidget.routePath,
          builder: (context, params) => const MarkmapWidget(),
        ),
        FFRoute(
          name: AddressWidget.routeName,
          path: AddressWidget.routePath,
          builder: (context, params) => const AddressWidget(),
        ),
        FFRoute(
          name: HistoryWidget.routeName,
          path: HistoryWidget.routePath,
          builder: (context, params) => const HistoryWidget(),
        ),
        FFRoute(
          name: SelectLocationWidget.routeName,
          path: SelectLocationWidget.routePath,
          builder: (context, params) => const SelectLocationWidget(),
        ),
        FFRoute(
          name: OldPINWidget.routeName,
          path: OldPINWidget.routePath,
          builder: (context, params) => const OldPINWidget(),
        ),
        FFRoute(
          name: SetNewPINWidget.routeName,
          path: SetNewPINWidget.routePath,
          builder: (context, params) => const SetNewPINWidget(),
        ),
        FFRoute(
          name: MePdpaWidget.routeName,
          path: MePdpaWidget.routePath,
          builder: (context, params) => const MePdpaWidget(),
        ),
        FFRoute(
          name: ReportWidget.routeName,
          path: ReportWidget.routePath,
          builder: (context, params) => const ReportWidget(),
        ),
        FFRoute(
          name: RunWayWidget.routeName,
          path: RunWayWidget.routePath,
          builder: (context, params) => const RunWayWidget(),
        ),
        FFRoute(
          name: InhomesssSummaryWidget.routeName,
          path: InhomesssSummaryWidget.routePath,
          builder: (context, params) => const InhomesssSummaryWidget(),
        ),
        FFRoute(
          name: InhomessResultWidget.routeName,
          path: InhomessResultWidget.routePath,
          builder: (context, params) => const InhomessResultWidget(),
        ),
        FFRoute(
          name: HomepageBlankWidget.routeName,
          path: HomepageBlankWidget.routePath,
          builder: (context, params) => const HomepageBlankWidget(),
        ),
        FFRoute(
          name: NoInternetWidget.routeName,
          path: NoInternetWidget.routePath,
          builder: (context, params) => const NoInternetWidget(),
        ),
        FFRoute(
          name: NotiBlankWidget.routeName,
          path: NotiBlankWidget.routePath,
          builder: (context, params) => const NotiBlankWidget(),
        ),
        FFRoute(
          name: AddHomeWidget.routeName,
          path: AddHomeWidget.routePath,
          builder: (context, params) => const AddHomeWidget(),
        ),
        FFRoute(
          name: AddHomememberWidget.routeName,
          path: AddHomememberWidget.routePath,
          builder: (context, params) => const AddHomememberWidget(),
        ),
        FFRoute(
          name: HistoryBlankWidget.routeName,
          path: HistoryBlankWidget.routePath,
          builder: (context, params) => const HistoryBlankWidget(),
        ),
        FFRoute(
          name: CgmDetailsWidget.routeName,
          path: CgmDetailsWidget.routePath,
          builder: (context, params) => CgmDetailsWidget(
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            text: params.getParam(
              'text',
              ParamType.String,
            ),
            chand: params.getParam(
              'chand',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CgmResultWidget.routeName,
          path: CgmResultWidget.routePath,
          builder: (context, params) => const CgmResultWidget(),
        ),
        FFRoute(
          name: MedicaldeliveryWidget.routeName,
          path: MedicaldeliveryWidget.routePath,
          builder: (context, params) => MedicaldeliveryWidget(
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            text: params.getParam(
              'text',
              ParamType.String,
            ),
            chand: params.getParam(
              'chand',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DeliveryMapWidget.routeName,
          path: DeliveryMapWidget.routePath,
          builder: (context, params) => const DeliveryMapWidget(),
        ),
        FFRoute(
          name: DetailsWidget.routeName,
          path: DetailsWidget.routePath,
          builder: (context, params) => DetailsWidget(
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            text: params.getParam(
              'text',
              ParamType.String,
            ),
            chand: params.getParam(
              'chand',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CgmResultHistoryWidget.routeName,
          path: CgmResultHistoryWidget.routePath,
          builder: (context, params) => const CgmResultHistoryWidget(),
        ),
        FFRoute(
          name: HealthhistoryWidget.routeName,
          path: HealthhistoryWidget.routePath,
          builder: (context, params) => const HealthhistoryWidget(),
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
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
  }) {
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
          fixStatusBarOniOS16AndBelow(context);
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
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
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

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 100),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
