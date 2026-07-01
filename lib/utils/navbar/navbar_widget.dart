import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

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

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
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
                context.pushNamed(InformationCommunityOneWidget.routeName);
              },
            ),
            _navItem(
              selected: widget.navbar == 3,
              outlineAsset: 'assets/images/nav_villages_outline.svg',
              boldAsset: 'assets/images/nav_villages_bold.svg',
              label: 'หมู่บ้านที่ดูแล',
              onTap: () async {
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
              selected: widget.navbar == 4,
              outlineAsset: 'assets/images/nav_settings_outline.svg',
              boldAsset: 'assets/images/nav_settings_bold.svg',
              label: 'การตั้งค่า',
              onTap: () async {
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
