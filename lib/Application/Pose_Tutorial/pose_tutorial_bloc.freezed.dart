// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pose_tutorial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PoseTutorialEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoseTutorialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PoseTutorialEvent()';
}


}

/// @nodoc
class $PoseTutorialEventCopyWith<$Res>  {
$PoseTutorialEventCopyWith(PoseTutorialEvent _, $Res Function(PoseTutorialEvent) __);
}


/// Adds pattern-matching-related methods to [PoseTutorialEvent].
extension PoseTutorialEventPatterns on PoseTutorialEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchedPose value)?  fetchedPose,TResult Function( PlayTutorial value)?  playTutorial,TResult Function( StopTutorial value)?  stopTutorial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchedPose() when fetchedPose != null:
return fetchedPose(_that);case PlayTutorial() when playTutorial != null:
return playTutorial(_that);case StopTutorial() when stopTutorial != null:
return stopTutorial(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchedPose value)  fetchedPose,required TResult Function( PlayTutorial value)  playTutorial,required TResult Function( StopTutorial value)  stopTutorial,}){
final _that = this;
switch (_that) {
case FetchedPose():
return fetchedPose(_that);case PlayTutorial():
return playTutorial(_that);case StopTutorial():
return stopTutorial(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchedPose value)?  fetchedPose,TResult? Function( PlayTutorial value)?  playTutorial,TResult? Function( StopTutorial value)?  stopTutorial,}){
final _that = this;
switch (_that) {
case FetchedPose() when fetchedPose != null:
return fetchedPose(_that);case PlayTutorial() when playTutorial != null:
return playTutorial(_that);case StopTutorial() when stopTutorial != null:
return stopTutorial(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchedPose,TResult Function( Pose pose)?  playTutorial,TResult Function()?  stopTutorial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchedPose() when fetchedPose != null:
return fetchedPose();case PlayTutorial() when playTutorial != null:
return playTutorial(_that.pose);case StopTutorial() when stopTutorial != null:
return stopTutorial();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchedPose,required TResult Function( Pose pose)  playTutorial,required TResult Function()  stopTutorial,}) {final _that = this;
switch (_that) {
case FetchedPose():
return fetchedPose();case PlayTutorial():
return playTutorial(_that.pose);case StopTutorial():
return stopTutorial();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchedPose,TResult? Function( Pose pose)?  playTutorial,TResult? Function()?  stopTutorial,}) {final _that = this;
switch (_that) {
case FetchedPose() when fetchedPose != null:
return fetchedPose();case PlayTutorial() when playTutorial != null:
return playTutorial(_that.pose);case StopTutorial() when stopTutorial != null:
return stopTutorial();case _:
  return null;

}
}

}

/// @nodoc


class FetchedPose implements PoseTutorialEvent {
  const FetchedPose();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchedPose);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PoseTutorialEvent.fetchedPose()';
}


}




/// @nodoc


class PlayTutorial implements PoseTutorialEvent {
  const PlayTutorial({required this.pose});
  

 final  Pose pose;

/// Create a copy of PoseTutorialEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayTutorialCopyWith<PlayTutorial> get copyWith => _$PlayTutorialCopyWithImpl<PlayTutorial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayTutorial&&(identical(other.pose, pose) || other.pose == pose));
}


@override
int get hashCode => Object.hash(runtimeType,pose);

@override
String toString() {
  return 'PoseTutorialEvent.playTutorial(pose: $pose)';
}


}

/// @nodoc
abstract mixin class $PlayTutorialCopyWith<$Res> implements $PoseTutorialEventCopyWith<$Res> {
  factory $PlayTutorialCopyWith(PlayTutorial value, $Res Function(PlayTutorial) _then) = _$PlayTutorialCopyWithImpl;
@useResult
$Res call({
 Pose pose
});




}
/// @nodoc
class _$PlayTutorialCopyWithImpl<$Res>
    implements $PlayTutorialCopyWith<$Res> {
  _$PlayTutorialCopyWithImpl(this._self, this._then);

  final PlayTutorial _self;
  final $Res Function(PlayTutorial) _then;

/// Create a copy of PoseTutorialEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pose = null,}) {
  return _then(PlayTutorial(
pose: null == pose ? _self.pose : pose // ignore: cast_nullable_to_non_nullable
as Pose,
  ));
}


}

/// @nodoc


class StopTutorial implements PoseTutorialEvent {
  const StopTutorial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopTutorial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PoseTutorialEvent.stopTutorial()';
}


}




/// @nodoc
mixin _$PoseTutorialState {

 List<Pose> get poses; String? get img; String? get description; bool get isIntro; bool get isLoop; bool get isOutro; int get currentDuration; int get totalDuration; bool get isLoading; bool get isCompleted;
/// Create a copy of PoseTutorialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PoseTutorialStateCopyWith<PoseTutorialState> get copyWith => _$PoseTutorialStateCopyWithImpl<PoseTutorialState>(this as PoseTutorialState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoseTutorialState&&const DeepCollectionEquality().equals(other.poses, poses)&&(identical(other.img, img) || other.img == img)&&(identical(other.description, description) || other.description == description)&&(identical(other.isIntro, isIntro) || other.isIntro == isIntro)&&(identical(other.isLoop, isLoop) || other.isLoop == isLoop)&&(identical(other.isOutro, isOutro) || other.isOutro == isOutro)&&(identical(other.currentDuration, currentDuration) || other.currentDuration == currentDuration)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(poses),img,description,isIntro,isLoop,isOutro,currentDuration,totalDuration,isLoading,isCompleted);

@override
String toString() {
  return 'PoseTutorialState(poses: $poses, img: $img, description: $description, isIntro: $isIntro, isLoop: $isLoop, isOutro: $isOutro, currentDuration: $currentDuration, totalDuration: $totalDuration, isLoading: $isLoading, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $PoseTutorialStateCopyWith<$Res>  {
  factory $PoseTutorialStateCopyWith(PoseTutorialState value, $Res Function(PoseTutorialState) _then) = _$PoseTutorialStateCopyWithImpl;
@useResult
$Res call({
 List<Pose> poses, String? img, String? description, bool isIntro, bool isLoop, bool isOutro, int currentDuration, int totalDuration, bool isLoading, bool isCompleted
});




}
/// @nodoc
class _$PoseTutorialStateCopyWithImpl<$Res>
    implements $PoseTutorialStateCopyWith<$Res> {
  _$PoseTutorialStateCopyWithImpl(this._self, this._then);

  final PoseTutorialState _self;
  final $Res Function(PoseTutorialState) _then;

/// Create a copy of PoseTutorialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? poses = null,Object? img = freezed,Object? description = freezed,Object? isIntro = null,Object? isLoop = null,Object? isOutro = null,Object? currentDuration = null,Object? totalDuration = null,Object? isLoading = null,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
poses: null == poses ? _self.poses : poses // ignore: cast_nullable_to_non_nullable
as List<Pose>,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isIntro: null == isIntro ? _self.isIntro : isIntro // ignore: cast_nullable_to_non_nullable
as bool,isLoop: null == isLoop ? _self.isLoop : isLoop // ignore: cast_nullable_to_non_nullable
as bool,isOutro: null == isOutro ? _self.isOutro : isOutro // ignore: cast_nullable_to_non_nullable
as bool,currentDuration: null == currentDuration ? _self.currentDuration : currentDuration // ignore: cast_nullable_to_non_nullable
as int,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PoseTutorialState].
extension PoseTutorialStatePatterns on PoseTutorialState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PoseTutorialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PoseTutorialState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PoseTutorialState value)  $default,){
final _that = this;
switch (_that) {
case _PoseTutorialState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PoseTutorialState value)?  $default,){
final _that = this;
switch (_that) {
case _PoseTutorialState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Pose> poses,  String? img,  String? description,  bool isIntro,  bool isLoop,  bool isOutro,  int currentDuration,  int totalDuration,  bool isLoading,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PoseTutorialState() when $default != null:
return $default(_that.poses,_that.img,_that.description,_that.isIntro,_that.isLoop,_that.isOutro,_that.currentDuration,_that.totalDuration,_that.isLoading,_that.isCompleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Pose> poses,  String? img,  String? description,  bool isIntro,  bool isLoop,  bool isOutro,  int currentDuration,  int totalDuration,  bool isLoading,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _PoseTutorialState():
return $default(_that.poses,_that.img,_that.description,_that.isIntro,_that.isLoop,_that.isOutro,_that.currentDuration,_that.totalDuration,_that.isLoading,_that.isCompleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Pose> poses,  String? img,  String? description,  bool isIntro,  bool isLoop,  bool isOutro,  int currentDuration,  int totalDuration,  bool isLoading,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _PoseTutorialState() when $default != null:
return $default(_that.poses,_that.img,_that.description,_that.isIntro,_that.isLoop,_that.isOutro,_that.currentDuration,_that.totalDuration,_that.isLoading,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc


class _PoseTutorialState implements PoseTutorialState {
  const _PoseTutorialState({required final  List<Pose> poses, required this.img, required this.description, required this.isIntro, required this.isLoop, required this.isOutro, required this.currentDuration, required this.totalDuration, required this.isLoading, required this.isCompleted}): _poses = poses;
  

 final  List<Pose> _poses;
@override List<Pose> get poses {
  if (_poses is EqualUnmodifiableListView) return _poses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_poses);
}

@override final  String? img;
@override final  String? description;
@override final  bool isIntro;
@override final  bool isLoop;
@override final  bool isOutro;
@override final  int currentDuration;
@override final  int totalDuration;
@override final  bool isLoading;
@override final  bool isCompleted;

/// Create a copy of PoseTutorialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PoseTutorialStateCopyWith<_PoseTutorialState> get copyWith => __$PoseTutorialStateCopyWithImpl<_PoseTutorialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoseTutorialState&&const DeepCollectionEquality().equals(other._poses, _poses)&&(identical(other.img, img) || other.img == img)&&(identical(other.description, description) || other.description == description)&&(identical(other.isIntro, isIntro) || other.isIntro == isIntro)&&(identical(other.isLoop, isLoop) || other.isLoop == isLoop)&&(identical(other.isOutro, isOutro) || other.isOutro == isOutro)&&(identical(other.currentDuration, currentDuration) || other.currentDuration == currentDuration)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_poses),img,description,isIntro,isLoop,isOutro,currentDuration,totalDuration,isLoading,isCompleted);

@override
String toString() {
  return 'PoseTutorialState(poses: $poses, img: $img, description: $description, isIntro: $isIntro, isLoop: $isLoop, isOutro: $isOutro, currentDuration: $currentDuration, totalDuration: $totalDuration, isLoading: $isLoading, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$PoseTutorialStateCopyWith<$Res> implements $PoseTutorialStateCopyWith<$Res> {
  factory _$PoseTutorialStateCopyWith(_PoseTutorialState value, $Res Function(_PoseTutorialState) _then) = __$PoseTutorialStateCopyWithImpl;
@override @useResult
$Res call({
 List<Pose> poses, String? img, String? description, bool isIntro, bool isLoop, bool isOutro, int currentDuration, int totalDuration, bool isLoading, bool isCompleted
});




}
/// @nodoc
class __$PoseTutorialStateCopyWithImpl<$Res>
    implements _$PoseTutorialStateCopyWith<$Res> {
  __$PoseTutorialStateCopyWithImpl(this._self, this._then);

  final _PoseTutorialState _self;
  final $Res Function(_PoseTutorialState) _then;

/// Create a copy of PoseTutorialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? poses = null,Object? img = freezed,Object? description = freezed,Object? isIntro = null,Object? isLoop = null,Object? isOutro = null,Object? currentDuration = null,Object? totalDuration = null,Object? isLoading = null,Object? isCompleted = null,}) {
  return _then(_PoseTutorialState(
poses: null == poses ? _self._poses : poses // ignore: cast_nullable_to_non_nullable
as List<Pose>,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isIntro: null == isIntro ? _self.isIntro : isIntro // ignore: cast_nullable_to_non_nullable
as bool,isLoop: null == isLoop ? _self.isLoop : isLoop // ignore: cast_nullable_to_non_nullable
as bool,isOutro: null == isOutro ? _self.isOutro : isOutro // ignore: cast_nullable_to_non_nullable
as bool,currentDuration: null == currentDuration ? _self.currentDuration : currentDuration // ignore: cast_nullable_to_non_nullable
as int,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
