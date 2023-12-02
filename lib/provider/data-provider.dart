import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_api/model/git_model.dart';
import 'package:github_api/service/api_services.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
