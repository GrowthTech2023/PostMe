import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/uploadphoto/uploadphoto_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String uploadedvid = 'false';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for uploadphoto component.
  late UploadphotoModel uploadphotoModel1;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (userPrompt)] action in navigateToCaptions widget.
  ApiCallResponse? apiResultafm;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Model for uploadphoto component.
  late UploadphotoModel uploadphotoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    uploadphotoModel1 = createModel(context, () => UploadphotoModel());
    uploadphotoModel2 = createModel(context, () => UploadphotoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    tabBarController1?.dispose();
    textController1?.dispose();
    uploadphotoModel1.dispose();
    textController2?.dispose();
    tabBarController2?.dispose();
    uploadphotoModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
