import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/socialprofilesconnect/socialprofilesconnect_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profilesetbox_model.dart';
export 'profilesetbox_model.dart';

class ProfilesetboxWidget extends StatefulWidget {
  const ProfilesetboxWidget({Key? key}) : super(key: key);

  @override
  _ProfilesetboxWidgetState createState() => _ProfilesetboxWidgetState();
}

class _ProfilesetboxWidgetState extends State<ProfilesetboxWidget> {
  late ProfilesetboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilesetboxModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 94.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Color(0x001A1A1A),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          await currentUserDocument!.profileset!
                                              .update(
                                                  createProfileSetsRecordData(
                                            profilesetname: '',
                                          ));
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Profile Set name here',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 191.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x001A1A1A),
                                  ),
                                  child: Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/3689123.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/[removal.ai]_dd8d9e63-d180-4201-95fa-36aadf641a33-png-transparent-tiktok-tiktok-logo-tiktok-icon.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Facebook_Logo_(2019).png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          width: 20.0,
                                          height: 20.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/youtube_2.0.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: SocialprofilesconnectWidget(),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 18.0,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: FaIcon(
                          FontAwesomeIcons.trash,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 18.0,
                        ),
                      ),
                    ].divide(SizedBox(width: 32.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
