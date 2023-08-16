import '/components/notifications_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scheduled_posts_model.dart';
export 'scheduled_posts_model.dart';

class ScheduledPostsWidget extends StatefulWidget {
  const ScheduledPostsWidget({Key? key}) : super(key: key);

  @override
  _ScheduledPostsWidgetState createState() => _ScheduledPostsWidgetState();
}

class _ScheduledPostsWidgetState extends State<ScheduledPostsWidget> {
  late ScheduledPostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduledPostsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Scheduled Posts',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                  fontSize: 24.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).displaySmallFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Recent Updates',
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.notificationsModel1,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel2,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel3,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel4,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel5,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel6,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.notificationsModel7,
                      updateCallback: () => setState(() {}),
                      child: NotificationsWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
