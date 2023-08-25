import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagepostsRecord extends FirestoreRecord {
  ImagepostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "additionalphotos" field.
  List<String>? _additionalphotos;
  List<String> get additionalphotos => _additionalphotos ?? const [];
  bool hasAdditionalphotos() => _additionalphotos != null;

  void _initializeFields() {
    _additionalphotos = getDataList(snapshotData['additionalphotos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imageposts');

  static Stream<ImagepostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagepostsRecord.fromSnapshot(s));

  static Future<ImagepostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagepostsRecord.fromSnapshot(s));

  static ImagepostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImagepostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagepostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagepostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagepostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagepostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagepostsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ImagepostsRecordDocumentEquality implements Equality<ImagepostsRecord> {
  const ImagepostsRecordDocumentEquality();

  @override
  bool equals(ImagepostsRecord? e1, ImagepostsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.additionalphotos, e2?.additionalphotos);
  }

  @override
  int hash(ImagepostsRecord? e) =>
      const ListEquality().hash([e?.additionalphotos]);

  @override
  bool isValidKey(Object? o) => o is ImagepostsRecord;
}
