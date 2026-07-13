import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/job_card.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'late_model.dart';
export 'late_model.dart';

class LateWidget extends StatefulWidget {
  const LateWidget({
    super.key,
    required this.img,
    required this.mainname,
  });

  final String? img;
  final String? mainname;

  @override
  State<LateWidget> createState() => _LateWidgetState();
}

class _LateWidgetState extends State<LateWidget> {
  late LateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JobCard(
      img: widget.img!,
      mainname: valueOrDefault<String>(widget.mainname, 'na'),
      age: '48 ปี 2 เดือน 15 วัน',
      date: '10 ธันวาคม 2568',
      time: '09:30 น.',
      assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
      nameColor: FlutterFlowTheme.of(context).error,
      avatarColor: const Color(0xFFFE9E9E),
      onTap: () => context.pushNamed(AddVisitinginformationWidget.routeName),
    );
  }
}
