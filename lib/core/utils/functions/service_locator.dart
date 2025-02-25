import 'package:bookly_app_clean_arch/core/utils/api_service.dart';
import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_clean_arch/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:bookly_app_clean_arch/features/home/domain/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUpServiceLocator() {
  locator.registerSingleton<ApiService>(ApiService(Dio()));
  locator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        locator.get<ApiService>(),
      ),
    ),
  );
}
