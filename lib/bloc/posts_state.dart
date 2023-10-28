part of 'posts_bloc.dart';

sealed class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

class PostsInitial extends PostsState {}

class PostsLoadingstate extends PostsState {}

class PostsLoadedstate extends PostsState {
  final List<PostModel> postModel;

  const PostsLoadedstate(this.postModel);

  @override
  List<Object> get props => [];
}

class PostsErrorstate extends PostsState {
  final String errorMessage;

  const PostsErrorstate(this.errorMessage);
  @override
  List<Object> get props => [];
}
