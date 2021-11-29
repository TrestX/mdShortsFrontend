import 'dart:convert';

import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/domain/category/category_failure.dart';
import 'package:MD_Shorts/infrastructure/category/category_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'app_url.dart';

class CategoryApiClient {
  CategoryApiClient();

  Future<Either<CategoryFailure, List<UserCategory>>> getCategory() async {
    final _baseUrl = await appUrl();

    final Uri url = Uri.https(_baseUrl, '/api/v1/category');

    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const CategoryFailure.serverError());
    }

    final jsonData = jsonDecode(response.body);
    final categories = jsonData['data'] as List;
    final jsonDataMap = categories
        .map((data) => CategoryDto.fromJson(data).toDomain())
        .toList();

    return right(jsonDataMap);
  }

  Future<Either<CategoryFailure, List<UserCategory>>> getCategorybyId(
      String? ids) async {
    final _baseUrl = await appUrl();
    final Uri url = Uri.https(_baseUrl, '/api/v1/category/' + ids!);
    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const CategoryFailure.serverError());
    }

    final jsonData = jsonDecode(response.body);
    final categories = jsonData['data'] as List;
    final jsonDataMap = categories
        .map((data) => CategoryDto.fromJson(data).toDomain())
        .toList();

    return right(jsonDataMap);
  }
}
