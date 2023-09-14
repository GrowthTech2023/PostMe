import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileSetsRecord extends FirestoreRecord {
  ProfileSetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ig-accountname" field.
  String? _igAccountname;
  String get igAccountname => _igAccountname ?? '';
  bool hasIgAccountname() => _igAccountname != null;

  // "ig-accesstoken" field.
  String? _igAccesstoken;
  String get igAccesstoken => _igAccesstoken ?? '';
  bool hasIgAccesstoken() => _igAccesstoken != null;

  // "ig-refreshtoken" field.
  String? _igRefreshtoken;
  String get igRefreshtoken => _igRefreshtoken ?? '';
  bool hasIgRefreshtoken() => _igRefreshtoken != null;

  // "ig-expirydate" field.
  DateTime? _igExpirydate;
  DateTime? get igExpirydate => _igExpirydate;
  bool hasIgExpirydate() => _igExpirydate != null;

  // "fb-accountname" field.
  String? _fbAccountname;
  String get fbAccountname => _fbAccountname ?? '';
  bool hasFbAccountname() => _fbAccountname != null;

  // "fb-accesstoken" field.
  String? _fbAccesstoken;
  String get fbAccesstoken => _fbAccesstoken ?? '';
  bool hasFbAccesstoken() => _fbAccesstoken != null;

  // "fb-refreshtoken" field.
  String? _fbRefreshtoken;
  String get fbRefreshtoken => _fbRefreshtoken ?? '';
  bool hasFbRefreshtoken() => _fbRefreshtoken != null;

  // "fb-expirydate" field.
  DateTime? _fbExpirydate;
  DateTime? get fbExpirydate => _fbExpirydate;
  bool hasFbExpirydate() => _fbExpirydate != null;

  // "tiktok-accountname" field.
  String? _tiktokAccountname;
  String get tiktokAccountname => _tiktokAccountname ?? '';
  bool hasTiktokAccountname() => _tiktokAccountname != null;

  // "tiktok-accesstoken" field.
  String? _tiktokAccesstoken;
  String get tiktokAccesstoken => _tiktokAccesstoken ?? '';
  bool hasTiktokAccesstoken() => _tiktokAccesstoken != null;

  // "tiktok-refreshtoken" field.
  String? _tiktokRefreshtoken;
  String get tiktokRefreshtoken => _tiktokRefreshtoken ?? '';
  bool hasTiktokRefreshtoken() => _tiktokRefreshtoken != null;

  // "tiktok-expirydate" field.
  DateTime? _tiktokExpirydate;
  DateTime? get tiktokExpirydate => _tiktokExpirydate;
  bool hasTiktokExpirydate() => _tiktokExpirydate != null;

  // "youtube-accountname" field.
  String? _youtubeAccountname;
  String get youtubeAccountname => _youtubeAccountname ?? '';
  bool hasYoutubeAccountname() => _youtubeAccountname != null;

  // "youtube-accesstoken" field.
  String? _youtubeAccesstoken;
  String get youtubeAccesstoken => _youtubeAccesstoken ?? '';
  bool hasYoutubeAccesstoken() => _youtubeAccesstoken != null;

  // "youtube-refreshtoken" field.
  String? _youtubeRefreshtoken;
  String get youtubeRefreshtoken => _youtubeRefreshtoken ?? '';
  bool hasYoutubeRefreshtoken() => _youtubeRefreshtoken != null;

  // "youtube-expirydate" field.
  DateTime? _youtubeExpirydate;
  DateTime? get youtubeExpirydate => _youtubeExpirydate;
  bool hasYoutubeExpirydate() => _youtubeExpirydate != null;

  // "profilesetname" field.
  String? _profilesetname;
  String get profilesetname => _profilesetname ?? '';
  bool hasProfilesetname() => _profilesetname != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _igAccountname = snapshotData['ig-accountname'] as String?;
    _igAccesstoken = snapshotData['ig-accesstoken'] as String?;
    _igRefreshtoken = snapshotData['ig-refreshtoken'] as String?;
    _igExpirydate = snapshotData['ig-expirydate'] as DateTime?;
    _fbAccountname = snapshotData['fb-accountname'] as String?;
    _fbAccesstoken = snapshotData['fb-accesstoken'] as String?;
    _fbRefreshtoken = snapshotData['fb-refreshtoken'] as String?;
    _fbExpirydate = snapshotData['fb-expirydate'] as DateTime?;
    _tiktokAccountname = snapshotData['tiktok-accountname'] as String?;
    _tiktokAccesstoken = snapshotData['tiktok-accesstoken'] as String?;
    _tiktokRefreshtoken = snapshotData['tiktok-refreshtoken'] as String?;
    _tiktokExpirydate = snapshotData['tiktok-expirydate'] as DateTime?;
    _youtubeAccountname = snapshotData['youtube-accountname'] as String?;
    _youtubeAccesstoken = snapshotData['youtube-accesstoken'] as String?;
    _youtubeRefreshtoken = snapshotData['youtube-refreshtoken'] as String?;
    _youtubeExpirydate = snapshotData['youtube-expirydate'] as DateTime?;
    _profilesetname = snapshotData['profilesetname'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('profileSets')
          : FirebaseFirestore.instance.collectionGroup('profileSets');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('profileSets').doc();

  static Stream<ProfileSetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileSetsRecord.fromSnapshot(s));

  static Future<ProfileSetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileSetsRecord.fromSnapshot(s));

  static ProfileSetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileSetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileSetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileSetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileSetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileSetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileSetsRecordData({
  String? igAccountname,
  String? igAccesstoken,
  String? igRefreshtoken,
  DateTime? igExpirydate,
  String? fbAccountname,
  String? fbAccesstoken,
  String? fbRefreshtoken,
  DateTime? fbExpirydate,
  String? tiktokAccountname,
  String? tiktokAccesstoken,
  String? tiktokRefreshtoken,
  DateTime? tiktokExpirydate,
  String? youtubeAccountname,
  String? youtubeAccesstoken,
  String? youtubeRefreshtoken,
  DateTime? youtubeExpirydate,
  String? profilesetname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ig-accountname': igAccountname,
      'ig-accesstoken': igAccesstoken,
      'ig-refreshtoken': igRefreshtoken,
      'ig-expirydate': igExpirydate,
      'fb-accountname': fbAccountname,
      'fb-accesstoken': fbAccesstoken,
      'fb-refreshtoken': fbRefreshtoken,
      'fb-expirydate': fbExpirydate,
      'tiktok-accountname': tiktokAccountname,
      'tiktok-accesstoken': tiktokAccesstoken,
      'tiktok-refreshtoken': tiktokRefreshtoken,
      'tiktok-expirydate': tiktokExpirydate,
      'youtube-accountname': youtubeAccountname,
      'youtube-accesstoken': youtubeAccesstoken,
      'youtube-refreshtoken': youtubeRefreshtoken,
      'youtube-expirydate': youtubeExpirydate,
      'profilesetname': profilesetname,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileSetsRecordDocumentEquality implements Equality<ProfileSetsRecord> {
  const ProfileSetsRecordDocumentEquality();

  @override
  bool equals(ProfileSetsRecord? e1, ProfileSetsRecord? e2) {
    return e1?.igAccountname == e2?.igAccountname &&
        e1?.igAccesstoken == e2?.igAccesstoken &&
        e1?.igRefreshtoken == e2?.igRefreshtoken &&
        e1?.igExpirydate == e2?.igExpirydate &&
        e1?.fbAccountname == e2?.fbAccountname &&
        e1?.fbAccesstoken == e2?.fbAccesstoken &&
        e1?.fbRefreshtoken == e2?.fbRefreshtoken &&
        e1?.fbExpirydate == e2?.fbExpirydate &&
        e1?.tiktokAccountname == e2?.tiktokAccountname &&
        e1?.tiktokAccesstoken == e2?.tiktokAccesstoken &&
        e1?.tiktokRefreshtoken == e2?.tiktokRefreshtoken &&
        e1?.tiktokExpirydate == e2?.tiktokExpirydate &&
        e1?.youtubeAccountname == e2?.youtubeAccountname &&
        e1?.youtubeAccesstoken == e2?.youtubeAccesstoken &&
        e1?.youtubeRefreshtoken == e2?.youtubeRefreshtoken &&
        e1?.youtubeExpirydate == e2?.youtubeExpirydate &&
        e1?.profilesetname == e2?.profilesetname;
  }

  @override
  int hash(ProfileSetsRecord? e) => const ListEquality().hash([
        e?.igAccountname,
        e?.igAccesstoken,
        e?.igRefreshtoken,
        e?.igExpirydate,
        e?.fbAccountname,
        e?.fbAccesstoken,
        e?.fbRefreshtoken,
        e?.fbExpirydate,
        e?.tiktokAccountname,
        e?.tiktokAccesstoken,
        e?.tiktokRefreshtoken,
        e?.tiktokExpirydate,
        e?.youtubeAccountname,
        e?.youtubeAccesstoken,
        e?.youtubeRefreshtoken,
        e?.youtubeExpirydate,
        e?.profilesetname
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfileSetsRecord;
}
