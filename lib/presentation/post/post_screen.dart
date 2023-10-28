import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.postModel[index].title.toString(),
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(state.postModel[index].body.toString())
                  ],
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
