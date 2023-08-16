import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "video_path" field.
  String? _videoPath;
  String get videoPath => _videoPath ?? '';
  bool hasVideoPath() => _videoPath != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "video_thumbnail_path" field.
  String? _videoThumbnailPath;
  String get videoThumbnailPath => _videoThumbnailPath ?? '';
  bool hasVideoThumbnailPath() => _videoThumbnailPath != null;

  // "youtubeCaption" field.
  String? _youtubeCaption;
  String get youtubeCaption => _youtubeCaption ?? '';
  bool hasYoutubeCaption() => _youtubeCaption != null;

  // "youtubeDescription" field.
  String? _youtubeDescription;
  String get youtubeDescription => _youtubeDescription ?? '';
  bool hasYoutubeDescription() => _youtubeDescription != null;

  // "youtubeHashtags" field.
  List<String>? _youtubeHashtags;
  List<String> get youtubeHashtags => _youtubeHashtags ?? const [];
  bool hasYoutubeHashtags() => _youtubeHashtags != null;

  // "youtubeUploadStatus" field.
  String? _youtubeUploadStatus;
  String get youtubeUploadStatus => _youtubeUploadStatus ?? '';
  bool hasYoutubeUploadStatus() => _youtubeUploadStatus != null;

  // "facebookCaption" field.
  String? _facebookCaption;
  String get facebookCaption => _facebookCaption ?? '';
  bool hasFacebookCaption() => _facebookCaption != null;

  // "facebookDescription" field.
  String? _facebookDescription;
  String get facebookDescription => _facebookDescription ?? '';
  bool hasFacebookDescription() => _facebookDescription != null;

  // "facebookHashtags" field.
  List<String>? _facebookHashtags;
  List<String> get facebookHashtags => _facebookHashtags ?? const [];
  bool hasFacebookHashtags() => _facebookHashtags != null;

  // "facebookUploadStatus" field.
  String? _facebookUploadStatus;
  String get facebookUploadStatus => _facebookUploadStatus ?? '';
  bool hasFacebookUploadStatus() => _facebookUploadStatus != null;

  // "tiktokCaption" field.
  String? _tiktokCaption;
  String get tiktokCaption => _tiktokCaption ?? '';
  bool hasTiktokCaption() => _tiktokCaption != null;

  // "tiktokDescription" field.
  String? _tiktokDescription;
  String get tiktokDescription => _tiktokDescription ?? '';
  bool hasTiktokDescription() => _tiktokDescription != null;

  // "tiktokHashtags" field.
  List<String>? _tiktokHashtags;
  List<String> get tiktokHashtags => _tiktokHashtags ?? const [];
  bool hasTiktokHashtags() => _tiktokHashtags != null;

  // "tiktokUploadStatus" field.
  String? _tiktokUploadStatus;
  String get tiktokUploadStatus => _tiktokUploadStatus ?? '';
  bool hasTiktokUploadStatus() => _tiktokUploadStatus != null;

  // "instagramCaption" field.
  String? _instagramCaption;
  String get instagramCaption => _instagramCaption ?? '';
  bool hasInstagramCaption() => _instagramCaption != null;

  // "instagramDescription" field.
  String? _instagramDescription;
  String get instagramDescription => _instagramDescription ?? '';
  bool hasInstagramDescription() => _instagramDescription != null;

  // "instagramHashtags" field.
  List<String>? _instagramHashtags;
  List<String> get instagramHashtags => _instagramHashtags ?? const [];
  bool hasInstagramHashtags() => _instagramHashtags != null;

  // "instagramUploadStatus" field.
  String? _instagramUploadStatus;
  String get instagramUploadStatus => _instagramUploadStatus ?? '';
  bool hasInstagramUploadStatus() => _instagramUploadStatus != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  bool hasPrompt() => _prompt != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _videoPath = snapshotData['video_path'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _videoThumbnailPath = snapshotData['video_thumbnail_path'] as String?;
    _youtubeCaption = snapshotData['youtubeCaption'] as String?;
    _youtubeDescription = snapshotData['youtubeDescription'] as String?;
    _youtubeHashtags = getDataList(snapshotData['youtubeHashtags']);
    _youtubeUploadStatus = snapshotData['youtubeUploadStatus'] as String?;
    _facebookCaption = snapshotData['facebookCaption'] as String?;
    _facebookDescription = snapshotData['facebookDescription'] as String?;
    _facebookHashtags = getDataList(snapshotData['facebookHashtags']);
    _facebookUploadStatus = snapshotData['facebookUploadStatus'] as String?;
    _tiktokCaption = snapshotData['tiktokCaption'] as String?;
    _tiktokDescription = snapshotData['tiktokDescription'] as String?;
    _tiktokHashtags = getDataList(snapshotData['tiktokHashtags']);
    _tiktokUploadStatus = snapshotData['tiktokUploadStatus'] as String?;
    _instagramCaption = snapshotData['instagramCaption'] as String?;
    _instagramDescription = snapshotData['instagramDescription'] as String?;
    _instagramHashtags = getDataList(snapshotData['instagramHashtags']);
    _instagramUploadStatus = snapshotData['instagramUploadStatus'] as String?;
    _prompt = snapshotData['prompt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? title,
  String? videoPath,
  DocumentReference? userId,
  String? videoThumbnailPath,
  String? youtubeCaption,
  String? youtubeDescription,
  String? youtubeUploadStatus,
  String? facebookCaption,
  String? facebookDescription,
  String? facebookUploadStatus,
  String? tiktokCaption,
  String? tiktokDescription,
  String? tiktokUploadStatus,
  String? instagramCaption,
  String? instagramDescription,
  String? instagramUploadStatus,
  String? prompt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'video_path': videoPath,
      'user_id': userId,
      'video_thumbnail_path': videoThumbnailPath,
      'youtubeCaption': youtubeCaption,
      'youtubeDescription': youtubeDescription,
      'youtubeUploadStatus': youtubeUploadStatus,
      'facebookCaption': facebookCaption,
      'facebookDescription': facebookDescription,
      'facebookUploadStatus': facebookUploadStatus,
      'tiktokCaption': tiktokCaption,
      'tiktokDescription': tiktokDescription,
      'tiktokUploadStatus': tiktokUploadStatus,
      'instagramCaption': instagramCaption,
      'instagramDescription': instagramDescription,
      'instagramUploadStatus': instagramUploadStatus,
      'prompt': prompt,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.videoPath == e2?.videoPath &&
        e1?.userId == e2?.userId &&
        e1?.videoThumbnailPath == e2?.videoThumbnailPath &&
        e1?.youtubeCaption == e2?.youtubeCaption &&
        e1?.youtubeDescription == e2?.youtubeDescription &&
        listEquality.equals(e1?.youtubeHashtags, e2?.youtubeHashtags) &&
        e1?.youtubeUploadStatus == e2?.youtubeUploadStatus &&
        e1?.facebookCaption == e2?.facebookCaption &&
        e1?.facebookDescription == e2?.facebookDescription &&
        listEquality.equals(e1?.facebookHashtags, e2?.facebookHashtags) &&
        e1?.facebookUploadStatus == e2?.facebookUploadStatus &&
        e1?.tiktokCaption == e2?.tiktokCaption &&
        e1?.tiktokDescription == e2?.tiktokDescription &&
        listEquality.equals(e1?.tiktokHashtags, e2?.tiktokHashtags) &&
        e1?.tiktokUploadStatus == e2?.tiktokUploadStatus &&
        e1?.instagramCaption == e2?.instagramCaption &&
        e1?.instagramDescription == e2?.instagramDescription &&
        listEquality.equals(e1?.instagramHashtags, e2?.instagramHashtags) &&
        e1?.instagramUploadStatus == e2?.instagramUploadStatus &&
        e1?.prompt == e2?.prompt;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.title,
        e?.videoPath,
        e?.userId,
        e?.videoThumbnailPath,
        e?.youtubeCaption,
        e?.youtubeDescription,
        e?.youtubeHashtags,
        e?.youtubeUploadStatus,
        e?.facebookCaption,
        e?.facebookDescription,
        e?.facebookHashtags,
        e?.facebookUploadStatus,
        e?.tiktokCaption,
        e?.tiktokDescription,
        e?.tiktokHashtags,
        e?.tiktokUploadStatus,
        e?.instagramCaption,
        e?.instagramDescription,
        e?.instagramHashtags,
        e?.instagramUploadStatus,
        e?.prompt
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
