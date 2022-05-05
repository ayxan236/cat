import 'package:cat_fact/assets/strings.dart';
import 'package:dio/dio.dart';

late final dio = Dio()
  ..options = BaseOptions(
    baseUrl: Urls.baseUrl,
    contentType: 'application/json',
  );
