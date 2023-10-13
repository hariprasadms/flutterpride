import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicsRecord extends FirestoreRecord {
  TopicsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "topic_title_img" field.
  String? _topicTitleImg;
  String get topicTitleImg => _topicTitleImg ?? '';
  bool hasTopicTitleImg() => _topicTitleImg != null;

  // "topic_imgs" field.
  List<String>? _topicImgs;
  List<String> get topicImgs => _topicImgs ?? const [];
  bool hasTopicImgs() => _topicImgs != null;

  // "topic_video" field.
  List<String>? _topicVideo;
  List<String> get topicVideo => _topicVideo ?? const [];
  bool hasTopicVideo() => _topicVideo != null;

  // "topic_gist_link" field.
  String? _topicGistLink;
  String get topicGistLink => _topicGistLink ?? '';
  bool hasTopicGistLink() => _topicGistLink != null;

  // "topic_article_link" field.
  String? _topicArticleLink;
  String get topicArticleLink => _topicArticleLink ?? '';
  bool hasTopicArticleLink() => _topicArticleLink != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "full_category" field.
  String? _fullCategory;
  String get fullCategory => _fullCategory ?? '';
  bool hasFullCategory() => _fullCategory != null;

  // "topic_youtube_link" field.
  String? _topicYoutubeLink;
  String get topicYoutubeLink => _topicYoutubeLink ?? '';
  bool hasTopicYoutubeLink() => _topicYoutubeLink != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _shortDescription = snapshotData['short_description'] as String?;
    _details = snapshotData['details'] as String?;
    _category = snapshotData['category'] as String?;
    _topicTitleImg = snapshotData['topic_title_img'] as String?;
    _topicImgs = getDataList(snapshotData['topic_imgs']);
    _topicVideo = getDataList(snapshotData['topic_video']);
    _topicGistLink = snapshotData['topic_gist_link'] as String?;
    _topicArticleLink = snapshotData['topic_article_link'] as String?;
    _source = snapshotData['source'] as String?;
    _fullCategory = snapshotData['full_category'] as String?;
    _topicYoutubeLink = snapshotData['topic_youtube_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('topics');

  static Stream<TopicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicsRecord.fromSnapshot(s));

  static Future<TopicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicsRecord.fromSnapshot(s));

  static TopicsRecord fromSnapshot(DocumentSnapshot snapshot) => TopicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicsRecordData({
  String? title,
  String? shortDescription,
  String? details,
  String? category,
  String? topicTitleImg,
  String? topicGistLink,
  String? topicArticleLink,
  String? source,
  String? fullCategory,
  String? topicYoutubeLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'short_description': shortDescription,
      'details': details,
      'category': category,
      'topic_title_img': topicTitleImg,
      'topic_gist_link': topicGistLink,
      'topic_article_link': topicArticleLink,
      'source': source,
      'full_category': fullCategory,
      'topic_youtube_link': topicYoutubeLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicsRecordDocumentEquality implements Equality<TopicsRecord> {
  const TopicsRecordDocumentEquality();

  @override
  bool equals(TopicsRecord? e1, TopicsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.details == e2?.details &&
        e1?.category == e2?.category &&
        e1?.topicTitleImg == e2?.topicTitleImg &&
        listEquality.equals(e1?.topicImgs, e2?.topicImgs) &&
        listEquality.equals(e1?.topicVideo, e2?.topicVideo) &&
        e1?.topicGistLink == e2?.topicGistLink &&
        e1?.topicArticleLink == e2?.topicArticleLink &&
        e1?.source == e2?.source &&
        e1?.fullCategory == e2?.fullCategory &&
        e1?.topicYoutubeLink == e2?.topicYoutubeLink;
  }

  @override
  int hash(TopicsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.shortDescription,
        e?.details,
        e?.category,
        e?.topicTitleImg,
        e?.topicImgs,
        e?.topicVideo,
        e?.topicGistLink,
        e?.topicArticleLink,
        e?.source,
        e?.fullCategory,
        e?.topicYoutubeLink
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicsRecord;
}
