import 'package:http/http.dart' as http;

import '../models/post_model.dart';

class PostRepo {
  Future<List<PostModel>> getposts() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      return postModelFromJson(response.body);
    } else {
      throw Exception("Error failed to load ");
    }
  }
}
