import '/components/recentposts/recentposts_widget.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String uploadedvid = 'false';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel1;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel2;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel3;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel4;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel5;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel6;
  // Model for recentposts component.
  late RecentpostsModel recentpostsModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    recentpostsModel1 = createModel(context, () => RecentpostsModel());
    recentpostsModel2 = createModel(context, () => RecentpostsModel());
    recentpostsModel3 = createModel(context, () => RecentpostsModel());
    recentpostsModel4 = createModel(context, () => RecentpostsModel());
    recentpostsModel5 = createModel(context, () => RecentpostsModel());
    recentpostsModel6 = createModel(context, () => RecentpostsModel());
    recentpostsModel7 = createModel(context, () => RecentpostsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    recentpostsModel1.dispose();
    recentpostsModel2.dispose();
    recentpostsModel3.dispose();
    recentpostsModel4.dispose();
    recentpostsModel5.dispose();
    recentpostsModel6.dispose();
    recentpostsModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
