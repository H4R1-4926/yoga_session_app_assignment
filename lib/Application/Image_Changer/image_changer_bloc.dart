import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_changer_event.dart';
part 'image_changer_state.dart';
part 'image_changer_bloc.freezed.dart';

class ImageChangerBloc extends Bloc<ImageChangerEvent, ImageChangerState> {
  Timer? timer;
  int currentIndex = 0;

  ImageChangerBloc() : super(ImageChangerState.initial()) {
    on<_Started>((event, emit) async {
      if (state.imagePath == null) {
        emit(state.copyWith(haveData: false));
      } else {
        emit(state.copyWith(isClosed: false));
      }
      while (!state.isClosed) {
        await Future.delayed(const Duration(milliseconds: 1500));
        currentIndex = (currentIndex + 1) % event.imgPaths.length;
        if (state.isClosed) break;
        emit(
          state.copyWith(
            imagePath: event.imgPaths[currentIndex],
            isClosed: false,
            haveData: true,
          ),
        );
      }
    });
    on<IsClosed>((event, emit) {
      emit(state.copyWith(isClosed: true));
    });
  }
}
