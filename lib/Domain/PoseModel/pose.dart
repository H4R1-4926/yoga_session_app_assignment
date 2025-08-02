import 'package:json_annotation/json_annotation.dart';

part 'pose.g.dart';

@JsonSerializable()
class Pose {
  Metadata? metadata;
  Assets? assets;
  List<Sequence>? sequence;

  Pose({this.metadata, this.assets, this.sequence});

  factory Pose.fromJson(Map<String, dynamic> json) => _$PoseFromJson(json);

  Map<String, dynamic> toJson() => _$PoseToJson(this);
}

@JsonSerializable()
class Metadata {
  String? id;
  String? title;
  String? category;
  int? defaultLoopCount;
  String? tempo;

  Metadata({
    this.id,
    this.title,
    this.category,
    this.defaultLoopCount,
    this.tempo,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return _$MetadataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class Assets {
  final Map<String, dynamic>? images;
  final Map<String, dynamic>? audio;

  Assets({this.images, this.audio});

  factory Assets.fromJson(Map<String, dynamic> json) {
    return _$AssetsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssetsToJson(this);
}

@JsonSerializable()
class Sequence {
  String? type;
  String? name;
  String? audioRef;
  int? durationSec;
  List<Script>? script;
  String? iterations;
  bool? loopable;

  Sequence({
    this.type,
    this.name,
    this.audioRef,
    this.durationSec,
    this.script,
    this.iterations,
    this.loopable,
  });

  factory Sequence.fromJson(Map<String, dynamic> json) {
    return _$SequenceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SequenceToJson(this);
}

@JsonSerializable()
class Script {
  String? text;
  int? startSec;
  int? endSec;
  String? imageRef;

  Script({this.text, this.startSec, this.endSec, this.imageRef});

  factory Script.fromJson(Map<String, dynamic> json) {
    return _$ScriptFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScriptToJson(this);
}
