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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_n_code_model.dart';
export 'p_i_n_code_model.dart';

const String _faceIdSvg = '''
<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M11.0013 19.5095C10.333 19.5095 9.75425 18.9749 9.75425 18.2624L9.75391 15.0996C9.75391 14.4313 10.2885 13.8525 11.001 13.8525C11.6692 13.8525 12.248 14.3872 12.248 15.0996V18.3066C12.2038 18.9749 11.6693 19.5095 11.0013 19.5095Z" fill="#8A8F97"/>
<path d="M28.4189 19.5095C27.7507 19.5095 27.1719 18.9749 27.1719 18.2624V15.0996C27.1719 14.4313 27.7065 13.8525 28.4189 13.8525C29.1318 13.8525 29.666 14.3872 29.666 15.0996V18.3066C29.6214 18.9749 29.0872 19.5095 28.4189 19.5095Z" fill="#8A8F97"/>
<path d="M17.7729 25.4338H17.5501C17.0155 25.4338 16.5703 24.9882 16.5703 24.454C16.5703 23.9193 17.0158 23.4742 17.5501 23.4742L17.7729 23.4738C18.6639 23.4738 19.421 22.761 19.421 21.8257V15.0994C19.421 14.5648 19.8665 14.1196 20.4007 14.1196C20.9354 14.1196 21.3805 14.5652 21.3805 15.0994V21.8699C21.3809 23.8299 19.7773 25.4338 17.7729 25.4338Z" fill="#8A8F97"/>
<path d="M11.0022 40H6.54775C2.93972 40 0 37.0603 0 33.4522V29.3538C0 28.8192 0.44552 28.374 0.979788 28.374C1.51441 28.374 1.95958 28.8195 1.95958 29.3538V33.4519C1.95958 35.9911 4.00863 38.0398 6.54739 38.0398H11.0019C11.5365 38.0398 11.9817 38.4853 11.9817 39.0196C11.982 39.5546 11.5365 40 11.0022 40Z" fill="#8A8F97"/>
<path d="M0.979788 12.2939C0.445166 12.2939 0 11.8484 0 11.3141V6.54779C0 2.93974 2.93972 0 6.54775 0H11.0022C11.5369 0 11.982 0.445523 11.982 0.979795C11.982 1.51442 11.5365 1.95959 11.0022 1.95959H6.54775C4.00863 1.95959 1.95993 4.00865 1.95993 6.54743V11.3134C1.95993 11.8484 1.51441 12.2939 0.979788 12.2939Z" fill="#8A8F97"/>
<path d="M39.0195 12.2936C38.4848 12.2936 38.0397 11.8481 38.0397 11.3138V6.54744C38.0397 4.0083 35.9906 1.95959 33.4519 1.95959H28.9974C28.4627 1.95959 28.0176 1.51407 28.0176 0.979795C28.0176 0.445169 28.4631 0 28.9974 0H33.4519C37.0599 0 39.9996 2.93974 39.9996 6.54779V11.3138C39.9996 11.8481 39.5541 12.2936 39.0195 12.2936Z" fill="#8A8F97"/>
<path d="M33.4519 40H28.9974C28.4627 40 28.0176 39.5545 28.0176 39.0202C28.0176 38.4856 28.4631 38.0404 28.9974 38.0404H33.4519C35.991 38.0404 38.0397 35.9914 38.0397 33.4526L38.04 29.3538C38.04 28.8192 38.4855 28.374 39.0198 28.374C39.5544 28.374 39.9996 28.8195 39.9996 29.3538V33.4519C39.9999 37.06 37.0599 40 33.4519 40Z" fill="#8A8F97"/>
<path d="M26.7711 31.0465C21.7501 32.9308 18.7775 32.8774 13.2298 31.0465C12.8142 30.8926 12.25 30.601 12.25 30.0667C12.25 29.5321 12.6955 29.0869 13.2298 29.0869C18.774 30.8712 21.7545 30.9797 26.7711 29.0869C27.3057 29.0869 27.7508 29.5324 27.7508 30.0667C27.7512 30.6013 27.3846 30.7795 26.7714 31.0465H26.7711Z" fill="#8A8F97"/>
</svg>
''';

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
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
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
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
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
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
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
              child: const LoadingWidget(),
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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: _PinKeyButton(
        digit: digit,
        onTap: () => _appendDigit(digit),
      ),
    );
  }

  Widget _faceIdButton() {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {},
        text: '',
        icon: SvgPicture.string(
          _faceIdSvg,
          width: 32.0,
          height: 32.0,
        ),
        options: FFButtonOptions(
          width: 72.0,
          height: 72.0,
          padding: const EdgeInsets.all(0.0),
          iconPadding: const EdgeInsets.all(0.0),
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
      alignment: const AlignmentDirectional(0.0, 0.0),
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
          padding: const EdgeInsets.all(0.0),
          iconPadding: const EdgeInsets.all(0.0),
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
        backgroundColor: const Color(0xFFF2FAFF),
        appBar: AppBar(
          toolbarHeight: 48.0,
          backgroundColor: const Color(0xFFF2FAFF),
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
          actions: const [],
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
                      const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
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
                      const SizedBox(height: 12.0),
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
                      const SizedBox(height: 32.0),
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
                      const SizedBox(height: 32.0),
                      // Keypad
                      SizedBox(
                        width: 296.0,
                        child: MasonryGridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
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
                      const SizedBox(height: 32.0),
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
                                  child: const ForgetPinWidget(),
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

/// A circular PIN key that fills with the accent color while pressed.
class _PinKeyButton extends StatefulWidget {
  const _PinKeyButton({
    required this.digit,
    required this.onTap,
  });

  final String digit;
  final VoidCallback onTap;

  @override
  State<_PinKeyButton> createState() => _PinKeyButtonState();
}

class _PinKeyButtonState extends State<_PinKeyButton> {
  static const Color _accent = Color(0xFF004078);
  bool _pressed = false;

  void _setPressed(bool value) {
    if (_pressed != value) {
      setState(() => _pressed = value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => _setPressed(true),
      onTapCancel: () => _setPressed(false),
      onTap: () {
        _setPressed(true);
        widget.onTap();
        // Keep the highlight briefly so a quick tap is still visible.
        Future.delayed(const Duration(milliseconds: 120), () {
          if (mounted) {
            _setPressed(false);
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        width: 72.0,
        height: 72.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _pressed ? _accent : Colors.transparent,
          border: Border.all(color: _accent, width: 1.0),
        ),
        child: Text(
          widget.digit,
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                color: _pressed ? Colors.white : _accent,
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineSmallIsCustom,
              ),
        ),
      ),
    );
  }
}
