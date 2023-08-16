import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profilepic_model.dart';
export 'profilepic_model.dart';

class ProfilepicWidget extends StatefulWidget {
  const ProfilepicWidget({Key? key}) : super(key: key);

  @override
  _ProfilepicWidgetState createState() => _ProfilepicWidgetState();
}

class _ProfilepicWidgetState extends State<ProfilepicWidget> {
  late ProfilepicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilepicModel());
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
        width: MediaQuery.sizeOf(context).width * 0.107,
        height: MediaQuery.sizeOf(context).height * 0.048,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
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
              alignment: AlignmentDirectional(0.8, 0.8),
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
