import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profilepic_copy_model.dart';
export 'profilepic_copy_model.dart';

class ProfilepicCopyWidget extends StatefulWidget {
  const ProfilepicCopyWidget({Key? key}) : super(key: key);

  @override
  _ProfilepicCopyWidgetState createState() => _ProfilepicCopyWidgetState();
}

class _ProfilepicCopyWidgetState extends State<ProfilepicCopyWidget> {
  late ProfilepicCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilepicCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.15,
        height: MediaQuery.sizeOf(context).height * 0.069,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Container(
                width: 35.0,
                height: 35.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/PostMe!_(3).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.2, 0.6),
              child: Container(
                width: 15.0,
                height: 15.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/3689123.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
