import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_api/model/git_model.dart';
import 'package:http/http.dart';

class ApiServices {
  String endpoint =
      "https://api.github.com/search/repositories?q=created:%3E2022-04-29&sort=stars&order=desc";
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      // final List result = jsonDecode(response.body)['data'];
      final List result = jsonDecode(response.body)['items'];

      return result.map((e) => UserModel.fromjson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiServices>((ref) => ApiServices());
