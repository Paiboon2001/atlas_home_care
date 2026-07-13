import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'successfull_model.dart';
export 'successfull_model.dart';

class SuccessfullWidget extends StatefulWidget {
  const SuccessfullWidget({
    super.key,
    required this.img,
    required this.mainname,
  });

  final String? img;
  final String? mainname;

  @override
  State<SuccessfullWidget> createState() => _SuccessfullWidgetState();
}

class _SuccessfullWidgetState extends State<SuccessfullWidget> {
  late SuccessfullModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessfullModel());

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
      date: '5 ธันวาคม 2568',
      time: '14:00 น.',
      assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
      nameColor: FlutterFlowTheme.of(context).customColor1,
      avatarColor: const Color(0xFF79DF9E),
      badgeIcon: Icons.check_rounded,
      badgeColor: FlutterFlowTheme.of(context).success,
      badgeIconColor: Colors.white,
    );
  }
}
