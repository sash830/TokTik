import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository { // El repositorio llama al DataSource.

  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);


}