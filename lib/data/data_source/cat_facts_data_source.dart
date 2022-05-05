import 'package:cat_fact/assets/strings.dart';
import 'package:cat_fact/data/models/cat_fsatc_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'apis.dart';

part 'cat_facts_data_source.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class CatFactDataSource {
  factory CatFactDataSource(Dio dio, {String baseUrl}) = _CatFactDataSource;

  @GET(Apis.fact)
  Future<CatFactModel> getFacts();
}
