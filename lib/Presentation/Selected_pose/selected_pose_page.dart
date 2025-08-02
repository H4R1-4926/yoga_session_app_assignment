import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:yoga_session_app_assignment/Application/Pose_Tutorial/pose_tutorial_bloc.dart';
import 'package:yoga_session_app_assignment/Domain/PoseModel/pose.dart';
import 'package:yoga_session_app_assignment/Infrastructure/Fetch_Pose/fetch_pose.dart';
import 'package:yoga_session_app_assignment/Presentation/Home/homepage.dart';

class SelectedPosePage extends StatelessWidget {
  final Pose selectedPose;
  const SelectedPosePage({super.key, required this.selectedPose});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PoseTutorialBloc>().add(PlayTutorial(pose: selectedPose));
    });

    return BlocBuilder<PoseTutorialBloc, PoseTutorialState>(
      builder: (context, state) {
        final totalSeconds = FetchPose().fetchTotalDuration(selectedPose);

        log(totalSeconds.toString());
        if (state.isCompleted) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                '${selectedPose.metadata?.title}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Center(
                  child: Text(
                    'Your Section is over',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),

                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (_) => false,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 218, 255, 246),
                      ),
                    ),
                    child: Text(
                      'Return to home',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              '${selectedPose.metadata?.title}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                context.read<PoseTutorialBloc>().add(StopTutorial());
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (_) => false,
                );
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                switchInCurve: Curves.easeIn,
                switchOutCurve: Curves.easeOut,
                transitionBuilder: (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
                child: Image(
                  key: ValueKey(state.img),
                  image: AssetImage(state.img ?? 'assets/img/Base.png'),
                ),
              ),
              SimpleCircularProgressBar(
                mergeMode: true,
                backColor: Colors.transparent,
                progressColors: [Colors.teal],
                animationDuration: totalSeconds,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: Text(
                    // 'Come to all fours. Hands below shoulders, knees under hips. Feel the earth beneath you \u2014 steady, quiet, alive.',
                    state.description ?? 'nothing',
                    key: ValueKey(state.description),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
