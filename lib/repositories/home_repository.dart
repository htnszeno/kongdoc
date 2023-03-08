import 'package:cache/cache.dart';
import 'package:dio/dio.dart';

import '../models/app_response.dart';
import '../models/home_model.dart';
import '../util/dio_client/dio_client.dart';

class HomeRepository {
  HomeRepository({
    Dio? dioClient,
    CacheClient? cache,
    // firebase_auth.FirebaseAuth? firebaseAuth,
    // GoogleSignIn? googleSignIn,
  })  : _dioClient = DioClient().dio,
        _cache = cache ?? CacheClient();

  final Dio _dioClient;
  final CacheClient _cache;

  Future<AppResponse<List<HomeItem>?>> getMain({
    required int currentPage,
    int limit = 10,
  }) async {
    int start = currentPage == 1 ? 0 : ((currentPage * limit) - limit);

    final response = await _dioClient.get(
      '/posts',
      queryParameters: {'_start': start, '_limit': limit},
    );
    return AppResponse<List<HomeItem>?>.fromJson(response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => HomeItem.fromJson(e))
            .toList();
      }
      return null;
    });
  }



  Future<AppResponse<List<HomeItem>?>> getHomeData(
    //Future<Map<String,dynamic>> getHomeData(
      {required String userId}) async {

    final response =
    await _dioClient.post( '/api/CUSSO003SVC/getHome', data: {'user_id': userId});
    //await _dioClient.get("/api/CUSSO003SVC/getHome?user_id=hj.im");

    //return response.data;
    return AppResponse<List<HomeItem>?>.fromJson(response.data,
            (dynamic json) {
          return (json as List<dynamic>)
              .map((e) => HomeItem.fromJson(e))
              .toList();
        });
  }
}