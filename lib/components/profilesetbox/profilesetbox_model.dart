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

class ProfilesetboxModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  List<ProfileSetsRecord> profilesetstate = [];
  void addToProfilesetstate(ProfileSetsRecord item) =>
      profilesetstate.add(item);
  void removeFromProfilesetstate(ProfileSetsRecord item) =>
      profilesetstate.remove(item);
  void removeAtIndexFromProfilesetstate(int index) =>
      profilesetstate.removeAt(index);
  void updateProfilesetstateAtIndex(
          int index, Function(ProfileSetsRecord) updateFn) =>
      profilesetstate[index] = updateFn(profilesetstate[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
