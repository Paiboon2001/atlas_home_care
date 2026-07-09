import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

/// Shared open/closed state for the My Service sheet. Every menu bar listens to
/// this so the "My Service" item can show a selected state while the sheet is
/// open, and so any bar instance can open or close it.
final ValueNotifier<bool> myServiceSheetOpen = ValueNotifier<bool>(false);

OverlayEntry? _myServiceEntry;

/// True while a page launched from a My Service tile (with
/// `reopenMenuOnReturn`) is on screen, so that page's back button can bring the
/// menu back on return. Only ever set for tiles that opt in; consumed (cleared)
/// by the returning page and reset on any fresh open/close of the sheet.
bool myServiceReopenOnReturn = false;

void _openMyServiceSheet(BuildContext context, Color backgroundColor) {
  myServiceReopenOnReturn = false;
  if (_myServiceEntry != null) return;
  final entry = OverlayEntry(
    builder: (_) => _MyServiceSheet(backgroundColor: backgroundColor),
  );
  _myServiceEntry = entry;
  Overlay.of(context, rootOverlay: true).insert(entry);
  myServiceSheetOpen.value = true;
}

/// Re-opens the My Service sheet — used when returning (back) from a page that
/// was launched from the menu, so the user lands back on the menu they came
/// from. No-op if it is already open.
void reopenMyServiceSheet(BuildContext context) {
  _openMyServiceSheet(
    context,
    FlutterFlowTheme.of(context).secondaryBackground,
  );
}

/// Closes the My Service sheet if it is open. Safe to call unconditionally.
void closeMyServiceSheet() {
  myServiceReopenOnReturn = false;
  _myServiceEntry?.remove();
  _myServiceEntry = null;
  myServiceSheetOpen.value = false;
}

void _toggleMyServiceSheet(BuildContext context, Color backgroundColor) {
  if (_myServiceEntry != null) {
    closeMyServiceSheet();
  } else {
    _openMyServiceSheet(context, backgroundColor);
  }
}

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.navbar,
    bool? hide,
  }) : hide = hide ?? false;

  final int? navbar;
  final bool hide;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
    // Rebuild so the My Service item reflects the sheet's open/closed state.
    myServiceSheetOpen.addListener(_onSheetToggled);

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    myServiceSheetOpen.removeListener(_onSheetToggled);
    _model.maybeDispose();

    super.dispose();
  }

  void _onSheetToggled() {
    if (mounted) safeSetState(() {});
  }

  Widget _navItem({
    required bool selected,
    required String outlineAsset,
    required String boldAsset,
    required String label,
    required Future<dynamic> Function() onTap,
  }) {
    final color = selected ? Colors.white : const Color(0xFF5F9ED6);
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              selected ? boldAsset : outlineAsset,
              width: 24.0,
              height: 24.0,
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            const SizedBox(height: 5.0),
            Text(
              label,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: color,
                    fontSize: 12.0,
                    letterSpacing: -0.3,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF004078),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 32.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _navItem(
              selected: widget.navbar == 1,
              outlineAsset: 'assets/images/nav_home_outline.svg',
              boldAsset: 'assets/images/nav_home_bold.svg',
              label: 'หน้าหลัก',
              onTap: () async {
                closeMyServiceSheet();
                context.pushNamed(
                  HomepageNewWidget.routeName,
                  extra: <String, dynamic>{
                    '__transition_info__': const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            _navItem(
              selected: widget.navbar == 5,
              outlineAsset: 'assets/images/nav_community_outline.svg',
              boldAsset: 'assets/images/nav_community_bold.svg',
              label: 'งานชุมชน',
              onTap: () async {
                closeMyServiceSheet();
                context.pushNamed(InformationCommunityOneWidget.routeName);
              },
            ),
            _navItem(
              selected: widget.navbar == 3,
              outlineAsset: 'assets/images/nav_villages_outline.svg',
              boldAsset: 'assets/images/nav_villages_bold.svg',
              label: 'หมู่บ้านที่ดูแล',
              onTap: () async {
                closeMyServiceSheet();
                context.pushNamed(
                  HomeVisitWidget.routeName,
                  extra: <String, dynamic>{
                    '__transition_info__': const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            _navItem(
              // Selected while its sheet is open (My Service isn't a route).
              selected: widget.navbar == 2 || myServiceSheetOpen.value,
              outlineAsset: 'assets/images/nav_myservice_outline.svg',
              boldAsset: 'assets/images/nav_myservice_bold.svg',
              label: 'My Service',
              onTap: () async {
                _toggleMyServiceSheet(
                  context,
                  FlutterFlowTheme.of(context).secondaryBackground,
                );
              },
            ),
            _navItem(
              selected: widget.navbar == 4,
              outlineAsset: 'assets/images/nav_settings_outline.svg',
              boldAsset: 'assets/images/nav_settings_bold.svg',
              label: 'การตั้งค่า',
              onTap: () async {
                closeMyServiceSheet();
                context.pushNamed(
                  SettingWidget.routeName,
                  extra: <String, dynamic>{
                    '__transition_info__': const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Full-screen My Service overlay. The sheet slides up from the bottom and its
/// lower edge is hidden behind the menu bar, which is painted on top and stays
/// fully interactive (tapping another item closes the sheet and navigates).
class _MyServiceSheet extends StatefulWidget {
  const _MyServiceSheet({required this.backgroundColor});

  final Color backgroundColor;

  @override
  State<_MyServiceSheet> createState() => _MyServiceSheetState();
}

class _MyServiceSheetState extends State<_MyServiceSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// A single My Service entry: round icon + label. Closes the sheet, then runs
  /// [onOpen] (navigation).
  Widget _serviceTile({
    required String asset,
    required String label,
    required VoidCallback onOpen,
    required double width,
    bool reopenMenuOnReturn = false,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onOpen();
        closeMyServiceSheet();
        // Set after closeMyServiceSheet (which clears the flag) so the opted-in
        // tile can ask its target page to bring the menu back on return.
        myServiceReopenOnReturn = reopenMenuOnReturn;
      },
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56.0,
              height: 56.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(asset),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelSmallIsCustom,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sheetHeight = MediaQuery.sizeOf(context).height * 0.50;
    // Transparent Material so the menu bar's InkWells have a Material ancestor
    // (the root overlay has none).
    return Material(
      type: MaterialType.transparency,
      child: Stack(
      children: [
        // Dimming scrim over the whole screen; tapping it closes the sheet.
        // Drawn below the sheet and the bar so neither is dimmed.
        Positioned.fill(
          child: FadeTransition(
            opacity: _controller,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: closeMyServiceSheet,
              child: const ColoredBox(color: Color(0x66000000)),
            ),
          ),
        ),
        // The sheet slides up from behind the bar; its bottom runs off-screen
        // so the bar (painted next) hides the lower edge.
        Align(
          alignment: const AlignmentDirectional(0.0, 1.0),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
            ),
            child: Container(
              width: double.infinity,
              height: sheetHeight,
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Drag handle.
                      Center(
                        child: Container(
                          width: 40.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0D8E0),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        'My Service',
                        style: FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleMediumFamily,
                              color: const Color(0xFF041228),
                              fontSize: 20.0,
                              letterSpacing: -0.3,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleMediumIsCustom,
                            ),
                      ),
                      const SizedBox(height: 20.0),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          const spacing = 16.0;
                          // Cap at 4 tiles per row; a 5th wraps to a new line.
                          final tileWidth =
                              (constraints.maxWidth - spacing * 3) / 4;
                          return Wrap(
                            spacing: spacing,
                            runSpacing: 20.0,
                            children: [
                              _serviceTile(
                                width: tileWidth,
                                asset: 'assets/images/infor_patient.png',
                                label: 'ข้อมูลสุขภาพ',
                                onOpen: () {
                                  context.pushNamed(
                                      HealthhistoryWidget.routeName);
                                },
                              ),
                              _serviceTile(
                                width: tileWidth,
                                asset: 'assets/images/Book01.png',
                                label: 'วางแผนเยี่ยม',
                            onOpen: () {
                              context.pushNamed(
                                PlanForVisitWidget.routeName,
                                extra: <String, dynamic>{
                                  '__transition_info__': const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                          _serviceTile(
                            width: tileWidth,
                            asset: 'assets/images/Drug_Delivery.png',
                            label: 'ส่งเวชภัณฑ์ยา',
                            onOpen: () {
                              context.pushNamed(
                                MedicaldeliveryWidget.routeName,
                                queryParameters: {
                                  'photo': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'text': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'chand': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  '__transition_info__': const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // The real, interactive menu bar painted on top so the sheet appears to
        // emerge from behind it. navbar == 2 keeps My Service selected.
        const Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: NavbarWidget(navbar: 2),
        ),
      ],
      ),
    );
  }
}
