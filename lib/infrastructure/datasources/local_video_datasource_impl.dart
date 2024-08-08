import 'package:toktik/domain/entities/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override // define la forma en la que se procesan los videos locales.
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {

    await Future.delayed(const Duration(seconds: 2));

     final List<VideoPost> newVideos = videoPosts.map(
       ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity() 
    ).toList();

    return newVideos;
  }

}


