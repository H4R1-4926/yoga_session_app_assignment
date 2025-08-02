import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga_session_app_assignment/Application/Image_Changer/image_changer_bloc.dart';
import 'package:yoga_session_app_assignment/Application/Pose_Tutorial/pose_tutorial_bloc.dart';
import 'package:yoga_session_app_assignment/Presentation/Home/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ImageChangerBloc()),
        BlocProvider(create: (context) => PoseTutorialBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
