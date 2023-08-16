import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConnectedAccountsRecord extends FirestoreRecord {
  ConnectedAccountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "platform" field.
  String? _platform;
  String get platform => _platform ?? '';
  bool hasPlatform() => _platform != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  bool hasRefreshToken() => _refreshToken != null;

  // "expiryDate" field.
  DateTime? _expiryDate;
  DateTime? get expiryDate => _expiryDate;
  bool hasExpiryDate() => _expiryDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _platform = snapshotData['platform'] as String?;
    _accountName = snapshotData['accountName'] as String?;
    _accessToken = snapshotData['accessToken'] as String?;
    _refreshToken = snapshotData['refreshToken'] as String?;
    _expiryDate = snapshotData['expiryDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ConnectedAccounts')
          : FirebaseFirestore.instance.collectionGroup('ConnectedAccounts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ConnectedAccounts').doc();

  static Stream<ConnectedAccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConnectedAccountsRecord.fromSnapshot(s));

  static Future<ConnectedAccountsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConnectedAccountsRecord.fromSnapshot(s));

  static ConnectedAccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConnectedAccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConnectedAccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConnectedAccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConnectedAccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConnectedAccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConnectedAccountsRecordData({
  String? platform,
  String? accountName,
  String? accessToken,
  String? refreshToken,
  DateTime? expiryDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'platform': platform,
      'accountName': accountName,
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'expiryDate': expiryDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConnectedAccountsRecordDocumentEquality
    implements Equality<ConnectedAccountsRecord> {
  const ConnectedAccountsRecordDocumentEquality();

  @override
  bool equals(ConnectedAccountsRecord? e1, ConnectedAccountsRecord? e2) {
    return e1?.platform == e2?.platform &&
        e1?.accountName == e2?.accountName &&
        e1?.accessToken == e2?.accessToken &&
        e1?.refreshToken == e2?.refreshToken &&
        e1?.expiryDate == e2?.expiryDate;
  }

  @override
  int hash(ConnectedAccountsRecord? e) => const ListEquality().hash([
        e?.platform,
        e?.accountName,
        e?.accessToken,
        e?.refreshToken,
        e?.expiryDate
      ]);

  @override
  bool isValidKey(Object? o) => o is ConnectedAccountsRecord;
}
