import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:yoga_session_app_assignment/Domain/PoseModel/pose.dart';
import 'package:yoga_session_app_assignment/Infrastructure/Fetch_Pose/fetch_pose.dart';

part 'pose_tutorial_event.dart';
part 'pose_tutorial_state.dart';
part 'pose_tutorial_bloc.freezed.dart';

class PoseTutorialBloc extends Bloc<PoseTutorialEvent, PoseTutorialState> {
  Timer? timer;
  final AudioPlayer bgPlayer = AudioPlayer();
  final AudioPlayer voicePlayer = AudioPlayer();
  final fetchPose = FetchPose();
  PoseTutorialBloc() : super(PoseTutorialState.initial()) {
    on<FetchedPose>((event, emit) async {
      final pose = await fetchPose.fetchPoses();
      emit(state.copyWith(poses: pose));
    });
    on<PlayTutorial>((event, emit) async {
      final pose = event.pose;
      final imageMap = pose.assets?.images ?? {};
      final sequence = pose.sequence ?? [];
      final audioMap = pose.assets?.audio ?? {};
      final loopCount = pose.metadata?.defaultLoopCount ?? 1;

      bgPlayer.setAsset('assets/audio/bg/bg.mp3');
      bgPlayer.setLoopMode(LoopMode.one);
      bgPlayer.setVolume(0.5);
      bgPlayer.play();

      for (final segment in sequence) {
        final int loopable =
            (segment.type == 'loop' && segment.loopable == true)
            ? loopCount
            : 1;
        final audioFile = audioMap[segment.audioRef];

        for (int i = 0; i < loopable; i++) {
          voicePlayer.setAsset('assets/audio/$audioFile');
          voicePlayer.play();
          for (final script in segment.script!) {
            final imgName = imageMap[script.imageRef];
            final fullImagePath = 'assets/img/$imgName';
            final duration = script.endSec! - script.startSec!;

            emit(
              state.copyWith(
                img: fullImagePath,
                description: script.text,
                isIntro: segment.type == 'segment' && segment.name == 'intro',
                isLoop: segment.type == 'loop',
                isOutro: segment.type == 'segment' && segment.name == 'outro',
                isLoading: false,
                isCompleted: false,
              ),
            );

            await Future.delayed(Duration(seconds: duration));
          }
        }
        await voicePlayer.stop();
      }
      await bgPlayer.stop();
      emit(state.copyWith(isCompleted: true));
    });
    on<StopTutorial>((event, emit) async {
      await bgPlayer.stop();
      await voicePlayer.stop();
      emit(
        state.copyWith(
          isCompleted: true,
          isIntro: false,
          isLoop: false,
          isOutro: false,
          img: '',
          description: '',
          isLoading: false,
        ),
      );
    });
  }
}
