part of 'image_changer_bloc.dart';

@freezed
abstract class ImageChangerState with _$ImageChangerState {
  const factory ImageChangerState({
    required String? imagePath,
    required bool isClosed,
    required bool haveData,
  }) = _ImageChangerState;
  factory ImageChangerState.initial() {
    return ImageChangerState(imagePath: null, haveData: false, isClosed: false);
  }
}
