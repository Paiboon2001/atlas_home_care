import '/c_g_m_history/cgm_result/cgm_result_widget.dart';
import '/components/search_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/other/item_selecid10/item_selecid10_widget.dart';
import 'package:flutter/material.dart';

/// Full-screen patient search opened from the "ข้อมูลค่าน้ำตาล" (CGM) screen.
///
/// Reuses the shared [SearchHeaderBar] style (same as the หมู่บ้านที่ดูแล
/// village search): a white standing app bar (`[chevron] · pill field · search`)
/// over a results list.
class CgmSearchWidget extends StatefulWidget {
  const CgmSearchWidget({
    super.key,
    this.topInset = 0.0,
    this.hintText = 'ค้นหา ชื่อ-นามสกุล, SN',
  });

  /// Status-bar inset passed from the caller (MediaQuery strips the top padding
  /// inside a `useSafeArea: false` modal, so the caller supplies it).
  final double topInset;
  final String hintText;

  @override
  State<CgmSearchWidget> createState() => _CgmSearchWidgetState();
}

class _CgmSearchWidgetState extends State<CgmSearchWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  static const List<String> _patients = [
    'เด็กหญิงปฐมา สมศรี',
    'นายกรกนก กนกวัน',
    'นายกรกนก กนกวัน',
    'นายกรกนก กนกวัน',
    'นายกรกนก กนกวัน',
    'นายกรกนก กนกวัน',
  ];

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: widget.topInset),
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SearchHeaderBar(
            controller: _controller,
            focusNode: _focusNode,
            hintText: widget.hintText,
            onBack: () => Navigator.pop(context),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 24.0),
              itemCount: _patients.length,
              itemBuilder: (context, index) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(CgmResultWidget.routeName);
                },
                child: ItemSelecid10Widget(
                  cid10code: _patients[index],
                  decription: 'VN : 1873678292',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
