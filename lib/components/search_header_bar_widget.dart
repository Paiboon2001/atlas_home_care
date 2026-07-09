import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Full-screen search header used across the app (Figma "Search").
///
/// Layout: `[chevron-left] · [pill text field] · [search icon]` with a light
/// bottom divider. The pill is a filled ([#EEF3F7]) rounded field with a muted
/// hint. Drop it in as the first child of a full-screen search page's Column,
/// above the results list.
class SearchHeaderBar extends StatelessWidget {
  const SearchHeaderBar({
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText = 'ค้นหา...',
    this.autofocus = true,
    this.onBack,
    this.onSearch,
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final bool autofocus;

  /// Back chevron tap. Defaults to popping the current route.
  final VoidCallback? onBack;

  /// Trailing search-icon tap. Defaults to submitting the current text.
  final VoidCallback? onSearch;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  static const String _backChevronSvg = '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15 18L9 12L15 6" stroke="#8A8F97" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>''';

  static const Color _fieldFill = Color(0xFFEEF3F7);
  static const Color _dividerColor = Color(0xFFD0D8E0);
  static const Color _textColor = Color(0xFF041228);
  static const Color _hintColor = Color(0xFF8A8F97);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: _dividerColor, width: 1.0),
        ),
      ),
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _tapBox(
            onTap: onBack ?? () => Navigator.pop(context),
            child: SvgPicture.string(
              _backChevronSvg,
              width: 24.0,
              height: 24.0,
            ),
          ),
          const SizedBox(width: 2.0),
          Expanded(
            child: SizedBox(
              height: 48.0,
              child: TextFormField(
                controller: controller,
                focusNode: focusNode,
                autofocus: autofocus,
                textAlignVertical: TextAlignVertical.center,
                expands: true,
                minLines: null,
                maxLines: null,
                onChanged: onChanged,
                onFieldSubmitted: onSubmitted,
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: _fieldFill,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                hintText: hintText,
                hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: _hintColor,
                      fontSize: 16.0,
                      letterSpacing: -0.14,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    // Secondary color.
                    color: Color(0xFF004078),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: _textColor,
                    fontSize: 16.0,
                    letterSpacing: -0.14,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
          const SizedBox(width: 2.0),
          _iconButton(
            icon: Icons.search_rounded,
            color: FlutterFlowTheme.of(context).primary,
            onTap: onSearch ?? () => onSubmitted?.call(controller.text),
          ),
        ],
      ),
    );
  }

  Widget _iconButton({
    required IconData icon,
    required VoidCallback onTap,
    Color color = _textColor,
  }) {
    return _tapBox(
      onTap: onTap,
      child: Icon(
        icon,
        color: color,
        size: 24.0,
      ),
    );
  }

  Widget _tapBox({
    required VoidCallback onTap,
    required Widget child,
  }) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: Center(child: child),
      ),
    );
  }
}
