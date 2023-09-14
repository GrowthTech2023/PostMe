import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popup_model.dart';
export 'popup_model.dart';

class PopupWidget extends StatefulWidget {
  const PopupWidget({Key? key}) : super(key: key);

  @override
  _PopupWidgetState createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  late PopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().currentProfileSetName);
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

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 5.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 24.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, -1.00),
                                      child: Text(
                                        'What is the name of your new Profile Set?',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Color(0xFF14181B),
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.w800,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 44.0,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: Color(0xFF57636C),
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Profile Set name',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E3E7),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) =>
                                    StreamBuilder<ProfileSetsRecord>(
                                  stream: ProfileSetsRecord.getDocument(
                                      currentUserDocument!.profileset!),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    final buttonProfileSetsRecord =
                                        snapshot.data!;
                                    return FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().update(() {
                                          FFAppState().uidstate =
                                              currentUserUid;
                                        });
                                        await queryUsersRecordOnce(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord.where('uid',
                                                  isEqualTo: currentUserUid),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        if (FFAppState().uidstate != null &&
                                            FFAppState().uidstate != '') {
                                          await ProfileSetsRecord.createDoc(
                                                  currentUserReference!)
                                              .set(createProfileSetsRecordData(
                                            igAccountname:
                                                buttonProfileSetsRecord
                                                    .igAccountname,
                                            igAccesstoken:
                                                buttonProfileSetsRecord
                                                    .igAccesstoken,
                                            igRefreshtoken:
                                                buttonProfileSetsRecord
                                                    .igRefreshtoken,
                                            igExpirydate:
                                                buttonProfileSetsRecord
                                                    .igExpirydate,
                                            fbAccountname:
                                                buttonProfileSetsRecord
                                                    .fbAccountname,
                                            fbAccesstoken:
                                                buttonProfileSetsRecord
                                                    .fbAccesstoken,
                                            fbRefreshtoken:
                                                buttonProfileSetsRecord
                                                    .fbRefreshtoken,
                                            fbExpirydate:
                                                buttonProfileSetsRecord
                                                    .fbExpirydate,
                                            tiktokAccountname:
                                                buttonProfileSetsRecord
                                                    .tiktokAccountname,
                                            tiktokAccesstoken:
                                                buttonProfileSetsRecord
                                                    .tiktokAccesstoken,
                                            tiktokRefreshtoken:
                                                buttonProfileSetsRecord
                                                    .tiktokRefreshtoken,
                                            tiktokExpirydate:
                                                buttonProfileSetsRecord
                                                    .tiktokExpirydate,
                                            youtubeAccountname:
                                                buttonProfileSetsRecord
                                                    .youtubeAccountname,
                                            youtubeAccesstoken:
                                                buttonProfileSetsRecord
                                                    .youtubeAccesstoken,
                                            youtubeRefreshtoken:
                                                buttonProfileSetsRecord
                                                    .youtubeRefreshtoken,
                                            youtubeExpirydate:
                                                buttonProfileSetsRecord
                                                    .youtubeExpirydate,
                                            profilesetname: FFAppState()
                                                .currentProfileSetName,
                                          ));
                                        }
                                        Navigator.pop(
                                            context, buttonProfileSetsRecord);
                                      },
                                      text: 'Create Profile Set',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFF1F4F8),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Color(0xFF14181B),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    );
                                  },
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
            ],
          ),
        ),
      ),
    );
  }
}
