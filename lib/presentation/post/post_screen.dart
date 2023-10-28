import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../bloc/posts_bloc.dart';

class Postscreen extends StatefulWidget {
  const Postscreen({super.key});

  @override
  State<Postscreen> createState() => _PostscreenState();
}

class _PostscreenState extends State<Postscreen> {
  // @override
  // void initState() {
  //   context.read<PostsBloc>().add(PostLoadedEvent());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state is PostsLoadingstate) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PostsLoadedstate) {
            return ListView.builder(
              itemCount: state.postModel.length,
              itemBuilder: (context, index) => Card(
                elevation: 10,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.heightBox,
                      Text(
                        state.postModel[index].title.toString(),
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      5.heightBox,
                      Text(state.postModel[index].body.toString())
                    ],
                  ),
                ),
              ),
            );
          } else if (state is PostsErrorstate) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
