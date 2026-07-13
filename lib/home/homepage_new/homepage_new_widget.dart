import '/flutter_flow/flutter_flow_icon_button.dart';
import '/components/home_calendar_strip_widget.dart';
import '/components/real_map_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/buttonsheetpatient/buttonsheetpatient_widget.dart';
import '/home/widget/late/late_widget.dart';
import '/home/widget/new_job/new_job_widget.dart';
import '/home/widget/respon_job/respon_job_widget.dart';
import '/home/widget/successfull/successfull_widget.dart';
import '/home/widget/job_card.dart';
import '/home/widget/tablecalenda/tablecalenda_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as ll;
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'homepage_new_model.dart';
export 'homepage_new_model.dart';

class HomepageNewWidget extends StatefulWidget {
  const HomepageNewWidget({super.key});

  static String routeName = 'Homepage_New';
  static String routePath = '/homepageNew';

  @override
  State<HomepageNewWidget> createState() => _HomepageNewWidgetState();
}

class _HomepageNewWidgetState extends State<HomepageNewWidget> {
  late HomepageNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Which body view the calendar-strip toggle shows: agenda cards, map, or
  // month calendar.
  HomeCalendarView _homeView = HomeCalendarView.agenda;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageNewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  /// Visit pins, anchored to real coordinates so they pan and zoom with the
  /// map. Colours match the job status (yellow = new, green = done,
  /// blue = in progress, red = overdue).
  List<Marker> _mapPins(BuildContext context) {
    final pins = <List<Object>>[
      [13.7563, 100.5018, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [
        13.7290,
        100.5100,
        '1',
        const Color(0xFF1D8B6B),
        FlutterFlowTheme.of(context).success
      ],
      [13.7810, 100.4880, '2', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [
        13.7180,
        100.4760,
        '1',
        const Color(0xFF1D8B6B),
        FlutterFlowTheme.of(context).success
      ],
      [13.7650, 100.5320, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
      [
        13.7900,
        100.5450,
        '1',
        const Color(0xFF0761B8),
        FlutterFlowTheme.of(context).accent1
      ],
      [
        13.8020,
        100.4560,
        '1',
        FlutterFlowTheme.of(context).error,
        FlutterFlowTheme.of(context).customColor4
      ],
      [13.7480, 100.5600, '1', const Color(0xFFFFBD00), const Color(0xFFFFE7A2)],
    ];

    return pins
        .map(
          (pin) => Marker(
            point: ll.LatLng(pin[0] as double, pin[1] as double),
            width: 48.0,
            height: 67.0,
            alignment: Alignment.topCenter,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: const ButtonsheetpatientWidget(),
                    ),
                  ),
                ).then((value) => safeSetState(() {}));
              },
              child: PinWidget(
                num: pin[2] as String,
                color2: pin[3] as Color,
                color1: pin[4] as Color,
              ),
            ),
          ),
        )
        .toList();
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            // Always-pinned status-bar-height background so the collapsed
            // capsule app bar never touches the status bar.
            SliverPersistentHeader(
              pinned: true,
              delegate: HomeStickyHeaderDelegate(
                height: MediaQuery.of(context).padding.top,
                child: AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle.light,
                  child: Container(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
            SliverAppBar(
              primary: false,
              expandedHeight: 56.0,
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFA0D6FF),
                            FlutterFlowTheme.of(context).primary
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 300.0,
                            height: 300.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://randomuser.me/api/portraits/men/32.jpg',
                              fit: BoxFit.cover,
                              alignment: const Alignment(0.0, 1.0),
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/doc1.png',
                                fit: BoxFit.cover,
                                alignment: const Alignment(0.0, 1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'รพ.บางกอก เมดิคอล เทคโนโลยี',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w400,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'คุณ สุขภาพดี จิตแจ่มใส',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyLargeIsCustom,
                                    ),
                              ),
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(HistoryWidget.routeName);
                        },
                        child: SvgPicture.asset(
                          'assets/images/ic_history_clock.svg',
                          width: 24.0,
                          height: 24.0,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(NotiWidget.routeName);
                        },
                        child: SvgPicture.asset(
                          'assets/images/ic_bell_notify.svg',
                          width: 24.0,
                          height: 24.0,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 24.0)),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            // Full strip at rest; collapses to a pinned capsule app bar on
            // scroll (wordmark/month/toggle clip away, week row stays).
            SliverPersistentHeader(
              pinned: true,
              delegate: HomeCollapsingStripDelegate(
                expandedHeight: 208.0,
                collapsedHeight: 112.0,
                expandedColor:
                    FlutterFlowTheme.of(context).primaryBackground,
                collapsedColor: FlutterFlowTheme.of(context).primary,
                child: Container(
                  height: 208.0,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0, 32.0, 16.0, 0.0),
                  child: HomeCalendarStrip(
                    selectedView: _homeView,
                    onViewChanged: (view) =>
                        safeSetState(() => _homeView = view),
                  ),
                ),
              ),
            ),
          ],
          body: Builder(
            builder: (context) {
              return ClipRRect(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x4C164874),
                        offset: Offset(
                          0.0,
                          -2.0,
                        ),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: _homeView == HomeCalendarView.map
                            ? SizedBox.expand(
                                child: RealMap(
                                  showCenterPin: false,
                                  markers: _mapPins(context),
                                ),
                              )
                            : _homeView == HomeCalendarView.calendar
                                ? const SizedBox.expand(child: CalendarWidget())
                                : CustomScrollView(
                          slivers: [
                            const SliverToBoxAdapter(
                                child: SizedBox(height: 0.0)),
                            // (Calendar strip lives in the app bar header below.)
                            SliverList(
                              delegate: SliverChildListDelegate([
                            // Hidden (not deleted): set visible: true to restore.
                            Visibility(
                              visible: false,
                              child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x1A000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 48.0;
                                                  } else {
                                                    return 48.0;
                                                  }
                                                }(),
                                                height: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 48.0;
                                                  } else {
                                                    return 48.0;
                                                  }
                                                }(),
                                                decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                    colors: [
                                                      Color(0xFFFFE7A2),
                                                      Color(0xFFFFBD00)
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.0, -1.0),
                                                    end: AlignmentDirectional(
                                                        0, 1.0),
                                                  ),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: const Color(0xFFFFDB00),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    Icons.topic,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 20.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 20.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 24.0;
                                                      } else {
                                                        return 24.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: GradientText(
                                                  'งานของคุณวันนี้',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumIsCustom,
                                                          ),
                                                  colors: const [
                                                    Color(0xFFC86807),
                                                    Color(0xFFF7C921)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                              Container(
                                                height: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 48.0;
                                                  } else {
                                                    return 48.0;
                                                  }
                                                }(),
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x6AD3A30D),
                                                    )
                                                  ],
                                                  gradient: const LinearGradient(
                                                    colors: [
                                                      Color(0xFFFFE7A2),
                                                      Color(0xFFFFBD00)
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.0, -1.0),
                                                    end: AlignmentDirectional(
                                                        0, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFFFDB00),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    child: Text(
                                                      '2/7 งาน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            letterSpacing: 0.0,
                                                            shadows: [
                                                              const Shadow(
                                                                color: Color(
                                                                    0xFF9B7C4A),
                                                                offset: Offset(
                                                                    1.0, 1.0),
                                                                blurRadius: 1.0,
                                                              )
                                                            ],
                                                            lineHeight: 1.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 8.0)),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 8.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.2,
                                                height: 8.0,
                                                decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                    colors: [
                                                      Color(0xFFFFE7A2),
                                                      Color(0xFFFFBD00)
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.0, -1.0),
                                                    end: AlignmentDirectional(
                                                        0, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 300.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 300.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 400.0;
                                        } else {
                                          return 400.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              child: const RealMap(
                                                showCenterPin: false,
                                                interactive: false,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .navigatebuttonModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        const NavigatebuttonWidget(),
                                                  ),
                                                  Container(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 48.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 48.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 56.0;
                                                      } else {
                                                        return 56.0;
                                                      }
                                                    }(),
                                                    height: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 48.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 48.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 56.0;
                                                      } else {
                                                        return 56.0;
                                                      }
                                                    }(),
                                                    decoration: const BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x46000000),
                                                          offset: Offset(
                                                            0.0,
                                                            3.0,
                                                          ),
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 100.0,
                                                      buttonSize: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 40.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 40.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 56.0;
                                                        } else {
                                                          return 56.0;
                                                        }
                                                      }(),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        Icons.aspect_ratio,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        size: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 20.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 20.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 24.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            MapWidget
                                                                .routeName);
                                                      },
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.6, -0.19),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const ButtonsheetpatientWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.pinModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const PinWidget(
                                                  num: '1',
                                                  color2: Color(0xFFFFBD00),
                                                  color1: Color(0xFFFFE7A2),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.02, 0.72),
                                            child: wrapWithModel(
                                              model: _model.pinModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PinWidget(
                                                num: '1',
                                                color2: const Color(0xFF1D8B6B),
                                                color1:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.21, -0.72),
                                            child: wrapWithModel(
                                              model: _model.pinModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const PinWidget(
                                                num: '2',
                                                color2: Color(0xFFFFBD00),
                                                color1: Color(0xFFFFE7A2),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.43, 0.85),
                                            child: wrapWithModel(
                                              model: _model.pinModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PinWidget(
                                                num: '1',
                                                color2: const Color(0xFF1D8B6B),
                                                color1:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.28, -0.17),
                                            child: wrapWithModel(
                                              model: _model.pinModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const PinWidget(
                                                num: '1',
                                                color2: Color(0xFFFFBD00),
                                                color1: Color(0xFFFFE7A2),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.55, -0.73),
                                            child: wrapWithModel(
                                              model: _model.pinModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PinWidget(
                                                num: '1',
                                                color2: const Color(0xFF0761B8),
                                                color1:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.81, -0.98),
                                            child: wrapWithModel(
                                              model: _model.pinModel7,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PinWidget(
                                                num: '1',
                                                color2:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                color1:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor4,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.74, -0.14),
                                            child: wrapWithModel(
                                              model: _model.pinModel8,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const PinWidget(
                                                num: '1',
                                                color2: Color(0xFFFFBD00),
                                                color1: Color(0xFFFFE7A2),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'แจ้งเตือนงานใหม่',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              fontSize: 18.0,
                                              letterSpacing: -0.3,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                      ),
                                      Text(
                                        'จำนวน 3 งาน',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: const Color(0xFF339FF3),
                                              fontSize: 14.0,
                                              letterSpacing: -0.3,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.newJobModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const NewJobWidget(
                                          img:
                                              'https://randomuser.me/api/portraits/men/45.jpg',
                                          mainname: 'เด็กชายพัฒนา ศรีโอพาส',
                                          year: '46',
                                          month: '5',
                                          day: '23',
                                          date: '12 ม.ค. 2569',
                                          time: '11:00 น.',
                                          details:
                                              'โรคเบาหวานมีความเป็นกรดสูงมาก มีการทำให้เป็นโรคเรื้อรังทางระบบประสาทและสมอง กินยาเป็นระยะเวลานานแล้ว',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.newJobModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const NewJobWidget(
                                          img:
                                              'https://randomuser.me/api/portraits/men/78.jpg',
                                          mainname: 'นายมโน สิริสาทร',
                                          year: '34',
                                          month: '5',
                                          day: '9',
                                          date: '12 ม.ค. 2569',
                                          time: '13:00 น.',
                                          details:
                                              'โรคเบาหวานมีความเป็นกรดสูงมาก มีการทำให้เป็นโรคเรื้อรังทางระบบประสาทและสมอง กินยาเป็นระยะเวลานานแล้ว',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.newJobModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const NewJobWidget(
                                          img:
                                              'https://randomuser.me/api/portraits/women/68.jpg',
                                          mainname: 'นางอรดี ศรีอุดมการ',
                                          year: '78',
                                          month: '6',
                                          day: '19',
                                          date: '13 ม.ค. 2569',
                                          time: '14:00 น.',
                                          details:
                                              'โรคเบาหวานมีความเป็นกรดสูงมาก มีการทำให้เป็นโรคเรื้อรังทางระบบประสาทและสมอง กินยาเป็นระยะเวลานานแล้ว',
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 8.0))
                                        .addToStart(const SizedBox(width: 16.0))
                                        .addToEnd(const SizedBox(width: 16.0)),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 8.0))
                                  .addToEnd(const SizedBox(height: 8.0)),
                            ),
                            Divider(
                              height: 5.0,
                              thickness: 5.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'งานที่รับมอบหมาย',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: -0.3,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              HoldJobWidget.routeName);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวน 5 งาน',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: const Color(
                                                            0xFF339FF3),
                                                        fontSize: 14.0,
                                                        letterSpacing: -0.3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 16.0))
                                      .around(const SizedBox(width: 16.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: MasonryGridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 2;
                                        } else {
                                          return 2;
                                        }
                                      }(),
                                    ),
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => JobCard(
                                              img:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                                              mainname: 'นายสมรชัย กุลศรีมา',
                                              age: '48 ปี 2 เดือน 15 วัน',
                                              date: '14 ธันวาคม 2568',
                                              time: '11:45 น.',
                                              assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
                                              nameColor: const Color(0xFF944D04),
                                              avatarColor: const Color(0xFFFEE47A),
                                              badgeIcon: Icons.edit_document,
                                              onTap: () => context.pushNamed(
                                                  AddVisitinginformationWidget
                                                      .routeName),
                                            ),
                                        () => wrapWithModel(
                                              model: _model.responJobModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const ResponJobWidget(
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                                                mainname: 'นายมังการ มุสยานา',
                                              ),
                                            ),
                                        () => wrapWithModel(
                                              model: _model.responJobModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const ResponJobWidget(
                                                mainname:
                                                    'เด็กหญิงกัญญา มหานคร',
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                                              ),
                                            ),
                                        () => wrapWithModel(
                                              model: _model.responJobModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const ResponJobWidget(
                                                mainname: 'นางวิมล สกุลลุนช่อง',
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                              ),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 5.0,
                              thickness: 5.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'งานที่เกินกำหนด',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: -0.3,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              HoldJobWidget.routeName);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวน 2 งาน',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: const Color(
                                                            0xFF339FF3),
                                                        fontSize: 14.0,
                                                        letterSpacing: -0.3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 16.0))
                                      .around(const SizedBox(width: 16.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: MasonryGridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 2;
                                        } else {
                                          return 2;
                                        }
                                      }(),
                                    ),
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => wrapWithModel(
                                              model: _model.lateModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const LateWidget(
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                                                mainname: 'นายสกลนคร ยามาราตรี',
                                              ),
                                            ),
                                        () => wrapWithModel(
                                              model: _model.lateModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const LateWidget(
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/m7xdpmwhlgki/girl1.png',
                                                mainname: 'นางกรกนก นรงค์ศรี',
                                              ),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 5.0,
                              thickness: 5.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'งานสำเร็จ',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: -0.3,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              HoldJobWidget.routeName);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวน 2 งาน',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: const Color(
                                                            0xFF339FF3),
                                                        fontSize: 14.0,
                                                        letterSpacing: -0.3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 16.0))
                                      .around(const SizedBox(width: 16.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: MasonryGridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 1;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 2;
                                        } else {
                                          return 2;
                                        }
                                      }(),
                                    ),
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => wrapWithModel(
                                              model: _model.successfullModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SuccessfullWidget(
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/tazm936iga7w/Baby_Girl.png',
                                                mainname:
                                                    'เด็กหญิงสุขาวดี ตรีสวัสดิ์',
                                              ),
                                            ),
                                        () => wrapWithModel(
                                              model: _model.successfullModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SuccessfullWidget(
                                                img:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/0a355akt4mcc/callege_Girl.png',
                                                mainname:
                                                    'นางสาวรัตนาการ สนามฉันท์',
                                              ),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 5.0,
                              thickness: 5.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'งานในอนาคต',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: -0.3,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              HoldJobWidget.routeName);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'จำนวน 2 งาน',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: const Color(
                                                            0xFF339FF3),
                                                        fontSize: 14.0,
                                                        letterSpacing: -0.3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 16.0))
                                      .around(const SizedBox(width: 16.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: MasonryGridView.builder(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                    ),
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => JobCard(
                                              img:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/16ztnqju67da/student_girl.png',
                                              mainname: 'เด็กหญิงพิมพ์ชนก ใจดี',
                                              age: '9 ปี 3 เดือน 12 วัน',
                                              date: '20 ธันวาคม 2568',
                                              time: '10:00 น.',
                                              assignee: 'นางสาวกมลวรรณ ศรีนาบดี',
                                              nameColor: const Color(0xFF1B5FA8),
                                              avatarColor: const Color(0xFF9CD3FB),
                                              onTap: () => context.pushNamed(
                                                  AddVisitinginformationWidget
                                                      .routeName),
                                            ),
                                        () => JobCard(
                                              img:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/healflow-1ya11l/assets/4mq6lu0xx1l8/oldman1.png',
                                              mainname: 'นายประเสริฐ ทองสุข',
                                              age: '67 ปี 8 เดือน 4 วัน',
                                              date: '22 ธันวาคม 2568',
                                              time: '13:30 น.',
                                              assignee: 'นายวิรัช พงศ์ไพบูลย์',
                                              nameColor: const Color(0xFF1B5FA8),
                                              avatarColor: const Color(0xFF9CD3FB),
                                              onTap: () => context.pushNamed(
                                                  AddVisitinginformationWidget
                                                      .routeName),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // Hidden (not deleted): set visible: true to restore.
                            Visibility(
                              visible: false,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.tablecalendaModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const TablecalendaWidget(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              ].divide(const SizedBox(height: 16.0))),
                            ),
                            const SliverToBoxAdapter(
                                child: SizedBox(height: 124.0)),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.navbarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const NavbarWidget(
                            navbar: 1,
                            hide: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
