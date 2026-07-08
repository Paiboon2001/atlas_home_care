import '/components/bottom_action_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/widget/authens/authens_widget.dart';
import '/utils/sucess/sucess_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'authen_code_model.dart';
export 'authen_code_model.dart';

class AuthenCodeWidget extends StatefulWidget {
  const AuthenCodeWidget({super.key});

  static String routeName = 'Authen_code';
  static String routePath = '/authenCode';

  @override
  State<AuthenCodeWidget> createState() => _AuthenCodeWidgetState();
}

class _AuthenCodeWidgetState extends State<AuthenCodeWidget> {
  late AuthenCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Currently selected hospital in the "อื่นๆ" radio list (null = none).
  String? selectedAuthen;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenCodeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // Navigate away via [navigate], then flash the green "บันทึกสำเร็จ" toast
  // (~3s) over the destination page. Uses a non-blocking overlay entry
  // (IgnorePointer) so the page underneath stays fully interactive.
  Future<void> _saveThenToast(VoidCallback navigate) async {
    final OverlayState? overlay =
        Navigator.of(context, rootNavigator: true).overlay;
    navigate(); // go to the next page first
    // Let the route transition settle before overlaying the toast.
    await Future.delayed(const Duration(milliseconds: 20));
    if (overlay == null || !overlay.mounted) return;
    final entry = OverlayEntry(
      builder: (_) => const IgnorePointer(
        child: Material(
          type: MaterialType.transparency,
          child: SizedBox.expand(
            child: SucessWidget(),
          ),
        ),
      ),
    );
    overlay.insert(entry);
    await Future.delayed(const Duration(milliseconds: 3000));
    entry.remove();
  }

  // A tappable hospital row with a radio. Tapping selects it (or clears the
  // selection if it was already the selected one — tap to toggle).
  Widget _authenCard({
    required AuthensModel model,
    required String name,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        // Select this hospital: it moves up to "ของฉัน" and hides from the list.
        safeSetState(() {
          selectedAuthen = name;
        });
      },
      child: wrapWithModel(
        model: model,
        updateCallback: () => safeSetState(() {}),
        child: AuthensWidget(
          names: name,
          selected: selectedAuthen == name,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          toolbarHeight: 48.0,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 44.0,
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () async {
              context.pushNamed(SettingWidget.routeName);
            },
          ),
          title: Text(
            'สิทธิใน Authen Code',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF2FAFF),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  0.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      48.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Authen Code ของฉัน',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (selectedAuthen != null)
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      safeSetState(() {
                                        selectedAuthen = null;
                                      });
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: Color(0x145F9ED6),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            const Color(0xFFD8FFF3)
                                          ],
                                          stops: const [0.0, 1.0],
                                          begin:
                                              const AlignmentDirectional(1.0, -0.93),
                                          end: const AlignmentDirectional(-1.0, 0.93),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: GradientText(
                                                selectedAuthen ?? '',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                                  FlutterFlowTheme.of(context)
                                                      .success
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            ),
                                            Icon(
                                              Icons.check_circle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                if (selectedAuthen == null)
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: const Color(0xFFD5D9E2),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.add_home,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          Text(
                                            'กรุณาเลือกสถานพยาบาล',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallIsCustom,
                                                ),
                                          ),
                                        ].divide(const SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                      const Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0xFFD7D8D9),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'รายการ Authen Code อื่นๆ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Text(
                                  '${selectedAuthen == null ? 3 : 2} รายการ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            if (selectedAuthen != 'โรงพยาบาลสกลนคร')
                              _authenCard(
                                model: _model.authensModel1,
                                name: 'โรงพยาบาลสกลนคร',
                              ),
                            if (selectedAuthen != 'โรงพยาบาลบัว')
                              _authenCard(
                                model: _model.authensModel2,
                                name: 'โรงพยาบาลบัว',
                              ),
                            if (selectedAuthen != 'โรงพยาบาลหนองจอก')
                              _authenCard(
                                model: _model.authensModel3,
                                name: 'โรงพยาบาลหนองจอก',
                              ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
              BottomActionBar(
                text: 'บันทึก',
                // Disabled until a hospital is selected.
                enabled: selectedAuthen != null,
                onPressed: () async {
                  await _saveThenToast(
                      () => context.pushNamed(SettingWidget.routeName));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
