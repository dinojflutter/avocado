import 'package:avocado_demo/Models/post_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsLoadingstate()) {
    on<PostsEvent>((event, emit) async {
      try {
        emit(PostsLoadingstate());
        var response = await http
            .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

        if (response.statusCode == 200) {
          emit(PostsLoadedstate(postModelFromJson(response.body)));
        } else {
          throw Exception("Error load ");
        }
      } catch (e) {
        emit(PostsErrorstate(e.toString()));
      }
    });
  }
}
