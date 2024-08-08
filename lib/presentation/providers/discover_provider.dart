import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/repositories/video_post_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{

final VideoPostRepository videosPostRepository;


  
  bool initialLoading = true;
List<VideoPost> videos = [];

  DiscoverProvider({required this.videosPostRepository});


  Future<void> loadNextPage() async{

    //await Future.delayed(const Duration(seconds: 2) );

   //final List<VideoPost> newVideos = videoPosts.map(
     //  ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity() 
    //).toList();

    final newVideos = await videosPostRepository.getTrendingVideosByPage(1);

    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }



}