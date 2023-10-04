import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repositry/implement_home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


  final getIt = GetIt.instance;

  void setup() {
    getIt.registerSingleton<ApiService>(ApiService(Dio()));
    getIt.registerSingleton<ImpHomeRepo>(ImpHomeRepo(getIt.get<ApiService>()));
  }
