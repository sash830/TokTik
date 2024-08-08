import 'package:toktik/domain/entities/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/repositories/video_post_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{
// forma en la que se llaman los origenes de datos que nos pide.
final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
    });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }



}

