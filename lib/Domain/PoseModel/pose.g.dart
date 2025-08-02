// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pose _$PoseFromJson(Map<String, dynamic> json) => Pose(
  metadata: json['metadata'] == null
      ? null
      : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
  assets: json['assets'] == null
      ? null
      : Assets.fromJson(json['assets'] as Map<String, dynamic>),
  sequence: (json['sequence'] as List<dynamic>?)
      ?.map((e) => Sequence.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PoseToJson(Pose instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'assets': instance.assets,
  'sequence': instance.sequence,
};

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
  id: json['id'] as String?,
  title: json['title'] as String?,
  category: json['category'] as String?,
  defaultLoopCount: (json['defaultLoopCount'] as num?)?.toInt(),
  tempo: json['tempo'] as String?,
);

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'category': instance.category,
  'defaultLoopCount': instance.defaultLoopCount,
  'tempo': instance.tempo,
};

Assets _$AssetsFromJson(Map<String, dynamic> json) => Assets(
  images: json['images'] as Map<String, dynamic>?,
  audio: json['audio'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AssetsToJson(Assets instance) => <String, dynamic>{
  'images': instance.images,
  'audio': instance.audio,
};

Sequence _$SequenceFromJson(Map<String, dynamic> json) => Sequence(
  type: json['type'] as String?,
  name: json['name'] as String?,
  audioRef: json['audioRef'] as String?,
  durationSec: (json['durationSec'] as num?)?.toInt(),
  script: (json['script'] as List<dynamic>?)
      ?.map((e) => Script.fromJson(e as Map<String, dynamic>))
      .toList(),
  iterations: json['iterations'] as String?,
  loopable: json['loopable'] as bool?,
);

Map<String, dynamic> _$SequenceToJson(Sequence instance) => <String, dynamic>{
  'type': instance.type,
  'name': instance.name,
  'audioRef': instance.audioRef,
  'durationSec': instance.durationSec,
  'script': instance.script,
  'iterations': instance.iterations,
  'loopable': instance.loopable,
};

Script _$ScriptFromJson(Map<String, dynamic> json) => Script(
  text: json['text'] as String?,
  startSec: (json['startSec'] as num?)?.toInt(),
  endSec: (json['endSec'] as num?)?.toInt(),
  imageRef: json['imageRef'] as String?,
);

Map<String, dynamic> _$ScriptToJson(Script instance) => <String, dynamic>{
  'text': instance.text,
  'startSec': instance.startSec,
  'endSec': instance.endSec,
  'imageRef': instance.imageRef,
};
