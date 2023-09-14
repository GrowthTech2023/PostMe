import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sidebartabs/posttab/posttab_widget.dart';
import '/sidebartabs/profilestab/profilestab_widget.dart';
import '/sidebartabs/scheduletab/scheduletab_widget.dart';
import '/sidebartabs/settingstab/settingstab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SidebarModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool? compactView = false;

  ///  State fields for stateful widgets in this component.

  // Model for posttab component.
  late PosttabModel posttabModel;
  // Model for profilestab component.
  late ProfilestabModel profilestabModel;
  // Model for scheduletab component.
  late ScheduletabModel scheduletabModel;
  // Model for settingstab component.
  late SettingstabModel settingstabModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    posttabModel = createModel(context, () => PosttabModel());
    profilestabModel = createModel(context, () => ProfilestabModel());
    scheduletabModel = createModel(context, () => ScheduletabModel());
    settingstabModel = createModel(context, () => SettingstabModel());
  }

  void dispose() {
    posttabModel.dispose();
    profilestabModel.dispose();
    scheduletabModel.dispose();
    settingstabModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
