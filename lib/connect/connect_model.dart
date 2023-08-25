import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/accountconnected2/accountconnected2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConnectModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (connectTiktokAccount)] action in connectTiktok widget.
  ApiCallResponse? apiResultTikTokConnect;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model1;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model2;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model3;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model4;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model5;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model6;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model7;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model8;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model9;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model10;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model11;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model12;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model13;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model14;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model15;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model16;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model17;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model18;
  // Model for Accountconnected2 component.
  late Accountconnected2Model accountconnected2Model19;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    accountconnected2Model1 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model2 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model3 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model4 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model5 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model6 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model7 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model8 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model9 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model10 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model11 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model12 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model13 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model14 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model15 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model16 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model17 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model18 =
        createModel(context, () => Accountconnected2Model());
    accountconnected2Model19 =
        createModel(context, () => Accountconnected2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    accountconnected2Model1.dispose();
    accountconnected2Model2.dispose();
    accountconnected2Model3.dispose();
    accountconnected2Model4.dispose();
    accountconnected2Model5.dispose();
    accountconnected2Model6.dispose();
    accountconnected2Model7.dispose();
    accountconnected2Model8.dispose();
    accountconnected2Model9.dispose();
    accountconnected2Model10.dispose();
    accountconnected2Model11.dispose();
    accountconnected2Model12.dispose();
    accountconnected2Model13.dispose();
    accountconnected2Model14.dispose();
    accountconnected2Model15.dispose();
    accountconnected2Model16.dispose();
    accountconnected2Model17.dispose();
    accountconnected2Model18.dispose();
    accountconnected2Model19.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
