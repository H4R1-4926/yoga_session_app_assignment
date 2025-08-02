part of 'pose_tutorial_bloc.dart';

@freezed
abstract class PoseTutorialState with _$PoseTutorialState {
  const factory PoseTutorialState({
    required List<Pose> poses,
    required String? img,
    required String? description,
    required bool isIntro,
    required bool isLoop,
    required bool isOutro,
    required int currentDuration,
    required int totalDuration,
    required bool isLoading,
    required bool isCompleted,
  }) = _PoseTutorialState;
  factory PoseTutorialState.initial() {
    return const PoseTutorialState(
      poses: [],
      img: null,
      description: null,
      isIntro: false,
      isLoop: false,
      isOutro: false,
      currentDuration: 0,
      totalDuration: 0,
      isLoading: false,
      isCompleted: false,
    );
  }
}
