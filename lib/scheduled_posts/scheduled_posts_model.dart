import '/components/notifications_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduledPostsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for notifications component.
  late NotificationsModel notificationsModel1;
  // Model for notifications component.
  late NotificationsModel notificationsModel2;
  // Model for notifications component.
  late NotificationsModel notificationsModel3;
  // Model for notifications component.
  late NotificationsModel notificationsModel4;
  // Model for notifications component.
  late NotificationsModel notificationsModel5;
  // Model for notifications component.
  late NotificationsModel notificationsModel6;
  // Model for notifications component.
  late NotificationsModel notificationsModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notificationsModel1 = createModel(context, () => NotificationsModel());
    notificationsModel2 = createModel(context, () => NotificationsModel());
    notificationsModel3 = createModel(context, () => NotificationsModel());
    notificationsModel4 = createModel(context, () => NotificationsModel());
    notificationsModel5 = createModel(context, () => NotificationsModel());
    notificationsModel6 = createModel(context, () => NotificationsModel());
    notificationsModel7 = createModel(context, () => NotificationsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    notificationsModel1.dispose();
    notificationsModel2.dispose();
    notificationsModel3.dispose();
    notificationsModel4.dispose();
    notificationsModel5.dispose();
    notificationsModel6.dispose();
    notificationsModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
