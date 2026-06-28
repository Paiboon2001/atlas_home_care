import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/widget/forget_pin/forget_pin_widget.dart';
import '/utils/loading/loading_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_n_code_model.dart';
export 'p_i_n_code_model.dart';

class PINCodeWidget extends StatefulWidget {
  const PINCodeWidget({super.key});

  static String routeName = 'PINCode';
  static String routePath = '/pINCode';

  @override
  State<PINCodeWidget> createState() => _PINCodeWidgetState();
}

class _PINCodeWidgetState extends State<PINCodeWidget>
    with TickerProviderStateMixin {
  late PINCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PINCodeModel());

    _model.pinCodeFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1300.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 900.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> _appendDigit(String digit) async {
    final current = _model.pinCodeController?.text ?? '';
    if (current.length >= 6) {
      return;
    }
    final next = current + digit;
    _model.pinCodeController?.text = next;
    safeSetState(() {});
    if (next.length == 6) {
      // Show the loading overlay for 2 seconds before going to the home page.
      showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: LoadingWidget(),
            ),
          );
        },
      );

      await Future.delayed(const Duration(seconds: 2));
      if (!mounted) {
        return;
      }
      // Dismiss the loading overlay, then navigate.
      Navigator.of(context).pop();
      context.pushNamed(HomepageNewWidget.routeName);
    }
  }

  void _backspace() {
    final current = _model.pinCodeController?.text ?? '';
    if (current.isEmpty) {
      return;
    }
    _model.pinCodeController?.text =
        current.substring(0, current.length - 1);
    safeSetState(() {});
  }

  Widget _keyButton(String digit) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () => _appendDigit(digit),
        text: digit,
        options: FFButtonOptions(
          width: 72.0,
          height: 72.0,
          padding: EdgeInsets.all(0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Colors.transparent,
          textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                color: const Color(0xFF004078),
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineSmallIsCustom,
              ),
          elevation: 0.0,
          borderSide: const BorderSide(
            color: Color(0xFF004078),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(36.0),
          hoverColor: const Color(0xFF004078),
          hoverTextColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        showLoadingIndicator: false,
      ),
    );
  }

  Widget _faceIdButton() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {},
        text: '',
        icon: Icon(
          Icons.face,
          size: 32.0,
          color: FlutterFlowTheme.of(context).secondaryText,
        ),
        options: FFButtonOptions(
          width: 72.0,
          height: 72.0,
          padding: EdgeInsets.all(0.0),
          iconPadding: EdgeInsets.all(0.0),
          color: Colors.transparent,
          textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineSmallIsCustom,
              ),
          elevation: 0.0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(36.0),
        ),
        showLoadingIndicator: false,
      ),
    );
  }

  Widget _backspaceButton() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () => _backspace(),
        text: '',
        icon: FaIcon(
          FontAwesomeIcons.backspace,
          size: 24.0,
          color: FlutterFlowTheme.of(context).secondaryText,
        ),
        options: FFButtonOptions(
          width: 72.0,
          height: 72.0,
          padding: EdgeInsets.all(0.0),
          iconPadding: EdgeInsets.all(0.0),
          color: Colors.transparent,
          textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineSmallIsCustom,
              ),
          elevation: 0.0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(36.0),
        ),
        showLoadingIndicator: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          toolbarHeight: 48.0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 44.0,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 18.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'PIN',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleLargeIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFF2FAFF),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo
                      Image.asset(
                        'assets/images/AHC_V2.webp',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 12.0),
                      // Title
                      Text(
                        'กรุณาใส่รหัส PIN',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: const Color(0xFF041228),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      SizedBox(height: 32.0),
                      // PIN indicator dots
                      SizedBox(
                        width: 176.0,
                        child: PinCodeTextField(
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 6,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: Colors.transparent,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: true,
                          autoFocus: false,
                          focusNode: _model.pinCodeFocusNode,
                          enablePinAutofill: false,
                          errorTextSpace: 0.0,
                          showCursor: false,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          pinTheme: PinTheme(
                            fieldHeight: 12.0,
                            fieldWidth: 12.0,
                            borderWidth: 0.0,
                            shape: PinCodeFieldShape.circle,
                            activeColor: const Color(0xFF004078),
                            inactiveColor: const Color(0xFFCBD5E0),
                            selectedColor: const Color(0xFFCBD5E0),
                            activeFillColor: const Color(0xFF004078),
                            inactiveFillColor: const Color(0xFFCBD5E0),
                            selectedFillColor: const Color(0xFFCBD5E0),
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) {},
                          onCompleted: (_) async {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      SizedBox(height: 32.0),
                      // Keypad
                      SizedBox(
                        width: 296.0,
                        child: MasonryGridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 24.0,
                          itemCount: 12,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return [
                              () => _keyButton('1'),
                              () => _keyButton('2'),
                              () => _keyButton('3'),
                              () => _keyButton('4'),
                              () => _keyButton('5'),
                              () => _keyButton('6'),
                              () => _keyButton('7'),
                              () => _keyButton('8'),
                              () => _keyButton('9'),
                              () => _faceIdButton(),
                              () => _keyButton('0'),
                              () => _backspaceButton(),
                            ][index]();
                          },
                        ),
                      ),
                      SizedBox(height: 32.0),
                      // Forgot PIN link
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
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
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: ForgetPinWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Text(
                          'ลืมรหัสผ่าน',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
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
      ),
    );
  }
}
