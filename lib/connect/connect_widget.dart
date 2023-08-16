import '/components/accountconnected2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'connect_model.dart';
export 'connect_model.dart';

class ConnectWidget extends StatefulWidget {
  const ConnectWidget({Key? key}) : super(key: key);

  @override
  _ConnectWidgetState createState() => _ConnectWidgetState();
}

class _ConnectWidgetState extends State<ConnectWidget>
    with TickerProviderStateMixin {
  late ConnectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConnectModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    );
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
            'PostMe',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).secondary,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Connect Your Social Media Platforms',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter Tight',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.641,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle: TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          tabs: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.tiktok,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                Tab(
                                  text: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                Tab(
                                  text: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.youtube,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                Tab(
                                  text: '',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                Tab(
                                  text: '',
                                ),
                              ],
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (value) => setState(() {}),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Add Profile',
                                    icon: Icon(
                                      Icons.add,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 182.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model1,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model2,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model3,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model4,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model5,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                              ].divide(SizedBox(height: 17.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Add Profile',
                                    icon: Icon(
                                      Icons.add,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 182.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model6,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model7,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model8,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model9,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model10,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                              ].divide(SizedBox(height: 17.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Add Profile',
                                    icon: Icon(
                                      Icons.add,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 182.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model11,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model12,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model13,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model14,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model15,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                              ].divide(SizedBox(height: 17.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Add Profile',
                                    icon: Icon(
                                      Icons.add,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 182.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model16,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model17,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model18,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model19,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                                wrapWithModel(
                                  model: _model.accountconnected2Model20,
                                  updateCallback: () => setState(() {}),
                                  child: Accountconnected2Widget(),
                                ),
                              ].divide(SizedBox(height: 17.0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
