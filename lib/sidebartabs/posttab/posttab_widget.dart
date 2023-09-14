import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'posttab_model.dart';
export 'posttab_model.dart';

class PosttabWidget extends StatefulWidget {
  const PosttabWidget({Key? key}) : super(key: key);

  @override
  _PosttabWidgetState createState() => _PosttabWidgetState();
}

class _PosttabWidgetState extends State<PosttabWidget> {
  late PosttabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PosttabModel());

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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        setState(() {
          FFAppState().posttabclickd = true;
        });

        context.pushNamed('Post');

        if ((FFAppState().settingstabclickd == true) ||
                (FFAppState().profilestabclickd == true) ||
                (FFAppState().scheduletabclickd == true)
            ? (FFAppState().posttabclickd == false)
            : (FFAppState().posttabclickd == true)) {
          setState(() {
            FFAppState().posttabclickd = false;
          });
        } else {
          setState(() {
            FFAppState().posttabclickd = true;
          });
        }
      },
      child: Container(
        width: 230.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            FFAppState().posttabclickd == true
                ? FlutterFlowTheme.of(context).lineColor
                : FlutterFlowTheme.of(context).primaryText,
            FlutterFlowTheme.of(context).primaryText,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.add_circle,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 24.0,
              ),
              if (FFAppState().closesidebar == false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Post',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
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