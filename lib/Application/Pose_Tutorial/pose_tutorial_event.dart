part of 'pose_tutorial_bloc.dart';

@freezed
abstract class PoseTutorialEvent with _$PoseTutorialEvent {
  const factory PoseTutorialEvent.fetchedPose() = FetchedPose;

  const factory PoseTutorialEvent.playTutorial({required Pose pose}) =
      PlayTutorial;
  const factory PoseTutorialEvent.stopTutorial() = StopTutorial;
}
