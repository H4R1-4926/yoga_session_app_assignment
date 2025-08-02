part of 'image_changer_bloc.dart';

@freezed
abstract class ImageChangerEvent with _$ImageChangerEvent {
  const factory ImageChangerEvent.started({required List<String> imgPaths}) =
      _Started;
  const factory ImageChangerEvent.isClosed() = IsClosed;
}
