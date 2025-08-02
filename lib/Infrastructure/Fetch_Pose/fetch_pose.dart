import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:yoga_session_app_assignment/Domain/PoseModel/pose.dart';

class FetchPose {
  Future<List<Pose>> fetchPoses() async {
    // Add the path to your json files here
    final List<String> poseJsonList = ['assets/json/CatCowPose.json'];
    final List<Pose> poses = [];
    try {
      for (var pose in poseJsonList) {
        final jsonData = await rootBundle.loadString(pose);
        final Map<String, dynamic> poseData = jsonDecode(jsonData);
        poses.add(Pose.fromJson(poseData));
      }
      return poses;
    } catch (e) {
      log('Error fetching poses: $e');
      return [];
    }
  }

  int fetchTotalDuration(Pose pose) {
    final sequence = pose.sequence ?? [];
    final loopCount = pose.metadata?.defaultLoopCount ?? 1;

    int totalDuration = 0;

    for (final segment in sequence) {
      if (segment.type == 'loop' && segment.loopable == true) {
        totalDuration += (segment.durationSec ?? 0) * loopCount;
      } else {
        totalDuration += segment.durationSec ?? 0;
      }
    }

    return totalDuration;
  }
}
