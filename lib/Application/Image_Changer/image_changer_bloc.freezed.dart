// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_changer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageChangerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageChangerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageChangerEvent()';
}


}

/// @nodoc
class $ImageChangerEventCopyWith<$Res>  {
$ImageChangerEventCopyWith(ImageChangerEvent _, $Res Function(ImageChangerEvent) __);
}


/// Adds pattern-matching-related methods to [ImageChangerEvent].
extension ImageChangerEventPatterns on ImageChangerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( IsClosed value)?  isClosed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case IsClosed() when isClosed != null:
return isClosed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( IsClosed value)  isClosed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case IsClosed():
return isClosed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( IsClosed value)?  isClosed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case IsClosed() when isClosed != null:
return isClosed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<String> imgPaths)?  started,TResult Function()?  isClosed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.imgPaths);case IsClosed() when isClosed != null:
return isClosed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<String> imgPaths)  started,required TResult Function()  isClosed,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.imgPaths);case IsClosed():
return isClosed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<String> imgPaths)?  started,TResult? Function()?  isClosed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.imgPaths);case IsClosed() when isClosed != null:
return isClosed();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ImageChangerEvent {
  const _Started({required final  List<String> imgPaths}): _imgPaths = imgPaths;
  

 final  List<String> _imgPaths;
 List<String> get imgPaths {
  if (_imgPaths is EqualUnmodifiableListView) return _imgPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imgPaths);
}


/// Create a copy of ImageChangerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&const DeepCollectionEquality().equals(other._imgPaths, _imgPaths));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_imgPaths));

@override
String toString() {
  return 'ImageChangerEvent.started(imgPaths: $imgPaths)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ImageChangerEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 List<String> imgPaths
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ImageChangerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imgPaths = null,}) {
  return _then(_Started(
imgPaths: null == imgPaths ? _self._imgPaths : imgPaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class IsClosed implements ImageChangerEvent {
  const IsClosed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsClosed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageChangerEvent.isClosed()';
}


}




/// @nodoc
mixin _$ImageChangerState {

 String? get imagePath; bool get isClosed; bool get haveData;
/// Create a copy of ImageChangerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageChangerStateCopyWith<ImageChangerState> get copyWith => _$ImageChangerStateCopyWithImpl<ImageChangerState>(this as ImageChangerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageChangerState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.haveData, haveData) || other.haveData == haveData));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,isClosed,haveData);

@override
String toString() {
  return 'ImageChangerState(imagePath: $imagePath, isClosed: $isClosed, haveData: $haveData)';
}


}

/// @nodoc
abstract mixin class $ImageChangerStateCopyWith<$Res>  {
  factory $ImageChangerStateCopyWith(ImageChangerState value, $Res Function(ImageChangerState) _then) = _$ImageChangerStateCopyWithImpl;
@useResult
$Res call({
 String? imagePath, bool isClosed, bool haveData
});




}
/// @nodoc
class _$ImageChangerStateCopyWithImpl<$Res>
    implements $ImageChangerStateCopyWith<$Res> {
  _$ImageChangerStateCopyWithImpl(this._self, this._then);

  final ImageChangerState _self;
  final $Res Function(ImageChangerState) _then;

/// Create a copy of ImageChangerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = freezed,Object? isClosed = null,Object? haveData = null,}) {
  return _then(_self.copyWith(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,haveData: null == haveData ? _self.haveData : haveData // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageChangerState].
extension ImageChangerStatePatterns on ImageChangerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageChangerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageChangerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageChangerState value)  $default,){
final _that = this;
switch (_that) {
case _ImageChangerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageChangerState value)?  $default,){
final _that = this;
switch (_that) {
case _ImageChangerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imagePath,  bool isClosed,  bool haveData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageChangerState() when $default != null:
return $default(_that.imagePath,_that.isClosed,_that.haveData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imagePath,  bool isClosed,  bool haveData)  $default,) {final _that = this;
switch (_that) {
case _ImageChangerState():
return $default(_that.imagePath,_that.isClosed,_that.haveData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imagePath,  bool isClosed,  bool haveData)?  $default,) {final _that = this;
switch (_that) {
case _ImageChangerState() when $default != null:
return $default(_that.imagePath,_that.isClosed,_that.haveData);case _:
  return null;

}
}

}

/// @nodoc


class _ImageChangerState implements ImageChangerState {
  const _ImageChangerState({required this.imagePath, required this.isClosed, required this.haveData});
  

@override final  String? imagePath;
@override final  bool isClosed;
@override final  bool haveData;

/// Create a copy of ImageChangerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageChangerStateCopyWith<_ImageChangerState> get copyWith => __$ImageChangerStateCopyWithImpl<_ImageChangerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageChangerState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.haveData, haveData) || other.haveData == haveData));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,isClosed,haveData);

@override
String toString() {
  return 'ImageChangerState(imagePath: $imagePath, isClosed: $isClosed, haveData: $haveData)';
}


}

/// @nodoc
abstract mixin class _$ImageChangerStateCopyWith<$Res> implements $ImageChangerStateCopyWith<$Res> {
  factory _$ImageChangerStateCopyWith(_ImageChangerState value, $Res Function(_ImageChangerState) _then) = __$ImageChangerStateCopyWithImpl;
@override @useResult
$Res call({
 String? imagePath, bool isClosed, bool haveData
});




}
/// @nodoc
class __$ImageChangerStateCopyWithImpl<$Res>
    implements _$ImageChangerStateCopyWith<$Res> {
  __$ImageChangerStateCopyWithImpl(this._self, this._then);

  final _ImageChangerState _self;
  final $Res Function(_ImageChangerState) _then;

/// Create a copy of ImageChangerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? isClosed = null,Object? haveData = null,}) {
  return _then(_ImageChangerState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,haveData: null == haveData ? _self.haveData : haveData // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
