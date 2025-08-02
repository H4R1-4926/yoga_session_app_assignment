import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga_session_app_assignment/Application/Image_Changer/image_changer_bloc.dart';
import 'package:yoga_session_app_assignment/Application/Pose_Tutorial/pose_tutorial_bloc.dart';
import 'package:yoga_session_app_assignment/Presentation/Selected_pose/selected_pose_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) =>
          context.read<PoseTutorialBloc>().add(PoseTutorialEvent.fetchedPose()),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Yoga App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF00CCBB),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Choose pose', style: TextStyle(fontSize: 18)),
          ),
          BlocBuilder<PoseTutorialBloc, PoseTutorialState>(
            builder: (context, state) {
              if (state.poses.isEmpty) {
                return Center(child: Text('No Posses found'));
              }
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final pose = state.poses[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          title: Text('${pose.metadata?.title}'),
                          subtitle: Text(
                            'Category: ${pose.metadata?.category}',
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            final imageMap = pose.assets?.images;

                            final imgPaths = imageMap?.values.map<String>((
                              imgName,
                            ) {
                              return 'assets/img/$imgName';
                            }).toList();
                            context.read<ImageChangerBloc>().add(
                              ImageChangerEvent.started(imgPaths: imgPaths!),
                            );

                            showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context,
                              isDismissible: false,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        '${pose.metadata?.title}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    BlocBuilder<
                                      ImageChangerBloc,
                                      ImageChangerState
                                    >(
                                      builder: (context, state) {
                                        if (!state.haveData) {
                                          return Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.teal,
                                            ),
                                          );
                                        }
                                        return Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                state.imagePath!,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    SafeArea(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              context
                                                  .read<ImageChangerBloc>()
                                                  .add(
                                                    ImageChangerEvent.isClosed(),
                                                  );
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Leave',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              context
                                                  .read<ImageChangerBloc>()
                                                  .add(
                                                    ImageChangerEvent.isClosed(),
                                                  );
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SelectedPosePage(
                                                        selectedPose: pose,
                                                      ),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Try it',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: state.poses.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
