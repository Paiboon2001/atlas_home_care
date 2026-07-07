import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/widget/choose_company/choose_company_widget.dart';
import '/profile/widget/logout_system/logout_system_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'setting_model.dart';
export 'setting_model.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  static String routeName = 'Setting';
  static String routePath = '/setting';

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late SettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  static const Color _line = Color(0xFFEEF3F7);
  static const Color _gray01 = Color(0xFF8A8F97);

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingModel());

    _model.switchValue1 = true;
    _model.switchValue2 = true;
    _model.switchValue3 = true;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // Gradient rounded icon box with a 16px white glyph (svg asset or material icon).
  Widget _iconBox({
    required List<Color> colors,
    String? asset,
    IconData? icon,
    double iconWidth = 16.0,
    double iconHeight = 16.0,
    AlignmentGeometry begin = const AlignmentDirectional(0.0, -1.0),
    AlignmentGeometry end = const AlignmentDirectional(0.0, 1.0),
  }) {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, begin: begin, end: end),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: asset != null
            ? SvgPicture.asset(
                asset,
                width: iconWidth,
                height: iconHeight,
                fit: BoxFit.contain,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              )
            : Icon(icon, size: 16.0, color: Colors.white),
      ),
    );
  }

  Widget _tile({
    required Widget leading,
    required String label,
    required Widget trailing,
    Future<dynamic> Function()? onTap,
  }) {
    final row = SizedBox(
      // Uniform row height so switch rows and chevron rows share the same
      // vertical rhythm across every settings card.
      height: 36.0,
      child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              leading,
              const SizedBox(width: 12.0),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: Colors.black,
                        fontSize: 16.0,
                        letterSpacing: -0.3,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                      ),
                ),
              ),
            ],
          ),
        ),
        trailing,
      ],
    ),
    );
    if (onTap == null) return row;
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: row,
    );
  }

  Widget get _chevron => const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: _gray01,
        size: 24.0,
      );

  Widget _switch(bool value, ValueChanged<bool> onChanged) {
    return Switch.adaptive(
      value: value,
      onChanged: onChanged,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      activeThumbColor: Colors.white,
      activeTrackColor: const Color(0xFF339FF3),
      inactiveTrackColor: const Color(0xFFD0D8E0),
      inactiveThumbColor: Colors.white,
    );
  }

  Widget _trailingText(String text) => Text(
        text,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: _gray01,
              fontSize: 16.0,
              letterSpacing: -0.3,
              useGoogleFonts:
                  !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
      );

  Widget _card(List<Widget> tiles) {
    final children = <Widget>[];
    for (var i = 0; i < tiles.length; i++) {
      children.add(tiles[i]);
      if (i != tiles.length - 1) {
        children.add(
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Divider(height: 1.0, thickness: 1.0, color: _line),
          ),
        );
      }
    }
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x145F9ED6),
            offset: Offset(0.0, 0.0),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget _profileHeader() {
    // Status-bar height: the blue banner paints behind it (edge-to-edge),
    // while the banner content stays pushed below the notch.
    final topInset = MediaQuery.paddingOf(context).top;
    return SizedBox(
      height: 224.0 + topInset,
      child: Stack(
        children: [
          // Blue banner with concentric ring pattern
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRect(
              child: SizedBox(
                height: 100.0 + topInset,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Figma node 162:376 — concentric rings raster (blur baked
                    // in). Fills the whole banner (incl. behind the status bar)
                    // seamlessly, bottom-aligned so the flat bottom edge sits at
                    // the avatar's middle and the bright centre lands on it.
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/set_header_rings.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Avatar (overlaps the banner)
          Positioned(
            // Blue disc grown 100 -> 108 (+8px); top nudged -4 so the disc
            // centre stays fixed and the rings remain centred on it.
            top: 44.0 + topInset,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Container(
                width: 108.0,
                height: 108.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF85C5F8),
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFF2FAFF), width: 4.0),
                ),
                // Only the blue disc behind grows; the character art keeps its
                // original 100px size, centred, so a thin blue halo appears
                // around the figure instead of scaling it up.
                child: Center(
                  child: ClipOval(
                    child: SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: Image.network(
                        'https://randomuser.me/api/portraits/men/32.jpg',
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, progress) {
                          if (progress == null) return child;
                          return const Center(
                            child: SizedBox(
                              width: 24.0,
                              height: 24.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/doc1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Name + role row
          Positioned(
            top: 160.0 + topInset,
            left: 16.0,
            right: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'คุณ สุขภาพดี จิตแจ่มใส',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: const Color(0xFF004078),
                        fontSize: 20.0,
                        letterSpacing: -0.3,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: !FlutterFlowTheme.of(context)
                            .titleMediumIsCustom,
                      ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _roleChip('assets/images/set_ic_role_user.svg', 'อสม.'),
                    Container(
                      width: 1.0,
                      height: 16.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 0.0, 12.0, 0.0),
                      color: const Color(0xFFD0D8E0),
                    ),
                    Flexible(
                      child: _roleChip(
                          'assets/images/set_ic_role_hospital.svg',
                          'รพ.บางกอก เมดิคอล เทคโนโลยี'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _roleChip(String asset, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          asset,
          width: 16.0,
          height: 16.0,
          fit: BoxFit.contain,
          colorFilter:
              const ColorFilter.mode(Color(0xFF339FF3), BlendMode.srcIn),
        ),
        const SizedBox(width: 4.0),
        Flexible(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: const Color(0xFF041228),
                  fontSize: 16.0,
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
        key: scaffoldKey,
        // Grey-blue so nothing behind the navbar's rounded top corners shows
        // white; the content bg and this share one colour end-to-end.
        backgroundColor: const Color(0xFFF2FAFF),
        body: SafeArea(
          top: false,
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _profileHeader(),
                      Expanded(
                        child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF2FAFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.0),
                            topRight: Radius.circular(24.0),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'การตั้งค่าและความปลอดภัย',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: _gray01,
                                      fontSize: 14.0,
                                      letterSpacing: -0.3,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              const SizedBox(height: 16.0),
                              // Card 1
                              _card([
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF29E5B4),
                                      Color(0xFF008E6D)
                                    ],
                                    asset: 'assets/images/set_ic_notify.svg',
                                  ),
                                  label: 'การแจ้งเตือน',
                                  trailing: _switch(
                                    _model.switchValue1!,
                                    (v) => safeSetState(
                                        () => _model.switchValue1 = v),
                                  ),
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF8CF5A0),
                                      Color(0xFF14B633)
                                    ],
                                    asset: 'assets/images/set_ic_call.svg',
                                  ),
                                  label: 'Telemedicine Settings',
                                  trailing: _switch(
                                    _model.switchValue2!,
                                    (v) => safeSetState(
                                        () => _model.switchValue2 = v),
                                  ),
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF9DF4FF),
                                      Color(0xFF00B2FF)
                                    ],
                                    icon: Icons.mic,
                                  ),
                                  label: 'ส่งตรวจ',
                                  trailing: _switch(
                                    _model.switchValue3!,
                                    (v) => safeSetState(
                                        () => _model.switchValue3 = v),
                                  ),
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFFFFBFE6),
                                      Color(0xFFFF57D2)
                                    ],
                                    asset: 'assets/images/set_ic_code.svg',
                                    iconWidth: 14.0,
                                    iconHeight: 14.0,
                                  ),
                                  label: 'สิทธิใน Authen Code',
                                  trailing: _chevron,
                                  onTap: () async {
                                    context
                                        .pushNamed(AuthenCodeWidget.routeName);
                                  },
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF4DA3FF),
                                      Color(0xFF004078)
                                    ],
                                    asset: 'assets/images/set_ic_world.svg',
                                    iconWidth: 13.0,
                                    iconHeight: 13.0,
                                  ),
                                  label: 'เชื่อมต่ออุปกรณ์วัด Vital Sign',
                                  trailing: _chevron,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      isDismissible: true,
                                      enableDrag: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (sheetContext) {
                                        return const ChooseCompanyWidget();
                                      },
                                    );
                                  },
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFFFFAE00),
                                      Color(0xFFF6F0BD)
                                    ],
                                    begin: const AlignmentDirectional(0.0, 1.0),
                                    end: const AlignmentDirectional(0.0, -1.0),
                                    asset: 'assets/images/set_ic_lock.svg',
                                  ),
                                  label: 'เปลี่ยนรหัส PIN',
                                  trailing: _chevron,
                                  onTap: () async {
                                    context.pushNamed(OldPINWidget.routeName);
                                  },
                                ),
                              ]),
                              const SizedBox(height: 16.0),
                              // Card 2
                              _card([
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF28E841),
                                      Color(0xFF259029)
                                    ],
                                    icon: Icons.report_rounded,
                                  ),
                                  label: 'แจ้งปัญหาการใช้งาน',
                                  trailing: _chevron,
                                  onTap: () async {
                                    context.pushNamed(ReportWidget.routeName);
                                  },
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFFFFDBCE),
                                      Color(0xFFFF5D51)
                                    ],
                                    asset: 'assets/images/set_ic_book.svg',
                                    iconWidth: 14.0,
                                    iconHeight: 14.0,
                                  ),
                                  label: 'Terms of Use',
                                  trailing: _chevron,
                                  onTap: () async {
                                    await launchURL(
                                        'https://atlasplatform.in.th/termsOfUse');
                                  },
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFFCDADFF),
                                      Color(0xFF6D33F4)
                                    ],
                                    asset: 'assets/images/set_ic_protect.svg',
                                    iconWidth: 12.0,
                                    iconHeight: 13.5,
                                  ),
                                  label: 'นโยบายความเป็นส่วนตัว',
                                  trailing: _chevron,
                                  onTap: () async {
                                    context.pushNamed(MePdpaWidget.routeName);
                                  },
                                ),
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFF339FF3),
                                      Color(0xFFA6CDFF)
                                    ],
                                    begin: const AlignmentDirectional(0.0, 1.0),
                                    end: const AlignmentDirectional(0.0, -1.0),
                                    asset: 'assets/images/set_ic_info.svg',
                                  ),
                                  label: 'เกี่ยวกับแอปพลเคชั่น',
                                  trailing: _trailingText('เวอร์ชัน 2.0.0'),
                                ),
                              ]),
                              const SizedBox(height: 16.0),
                              // Card 3
                              _card([
                                _tile(
                                  leading: _iconBox(
                                    colors: const [
                                      Color(0xFFFFA7A8),
                                      Color(0xFFFF0000)
                                    ],
                                    asset: 'assets/images/set_ic_logout.svg',
                                  ),
                                  label: 'ออกจากระบบ',
                                  trailing: _chevron,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding:
                                                MediaQuery.viewInsetsOf(context),
                                            child: const LogoutSystemWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ]),
                              const SizedBox(height: 16.0),
                            ],
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                  ),
                  ),
                  ),
                ),
              ),
              const NavbarWidget(navbar: 4),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
