import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'set_new_p_i_n_model.dart';
export 'set_new_p_i_n_model.dart';

class SetNewPINWidget extends StatefulWidget {
  const SetNewPINWidget({super.key});

  static String routeName = 'Set_New_PIN';
  static String routePath = '/setNewPIN';

  @override
  State<SetNewPINWidget> createState() => _SetNewPINWidgetState();
}

class _SetNewPINWidgetState extends State<SetNewPINWidget> {
  late SetNewPINModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetNewPINModel());

    _model.pinCodeFocusNode ??= FocusNode();

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
      context.pushNamed(SettingWidget.routeName);
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

  Widget _backspaceButton() {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: SizedBox(
        width: 72.0,
        height: 72.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(36.0),
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => _backspace(),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.deleteLeft,
              size: 24.0,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
          ),
        ),
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
            'ตั้งรหัส PIN ใหม่',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      24.0, 16.0, 24.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo
                      Image.asset(
                        'assets/images/AHC_V2.webp',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 12.0),
                      // Title
                      Text(
                        'กรุณาตั้งรหัส PIN ใหม่เพื่อดำเนินการเปลี่ยน',
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
                              () => const SizedBox(width: 72.0, height: 72.0),
                              () => _keyButton('0'),
                              () => _backspaceButton(),
                            ][index]();
                          },
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
