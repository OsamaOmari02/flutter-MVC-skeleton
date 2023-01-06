import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_mvc_skeleton/core/constants.dart';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

class RestApiService {
  static var apiHeaders = {
    "Access-Control-Allow-Origin": "*",
    'Content-Type': 'application/json',
    'Accept': '*/*'
  };

  /// Fires a Get request to an endpoint('path')
  /// Note that query params MUST BE STRINGS or lists of strings.
  static Future<http.Response> get(String path,
      [Map<String, dynamic> queryParams = const {}]) async {
    //! https => http
    final url = Uri.https(BASE_URL, '/api/$path', queryParams);
    if (kDebugMode) {
      print('url is $url');
    }
    return retry(
            () => http
            .get(url, headers: apiHeaders)
            .timeout(const Duration(seconds: 4)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
        maxAttempts: 4);
  }

  static Future<http.Response> post(String path,
      [Object? requestBody,
        Map<String, dynamic> queryParams = const {}]) async {
    final url = Uri.https(BASE_URL, '/api/$path', queryParams);
    if (kDebugMode) {
      print('post url is $url');
      print('post requestBody is $requestBody');
    }
    log('post url payload is $requestBody');
    return retry(
            () => http
            .post(url, headers: apiHeaders, body: jsonEncode(requestBody))
            .timeout(const Duration(seconds: 4)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
        maxAttempts: 4);
  }

  static Future<http.Response> put(String path,
      [Object? requestBody,
        Map<String, dynamic> queryParams = const {}]) async {
    final url = Uri.https(BASE_URL, '/api/$path', queryParams);
    if (kDebugMode) {
      print(url);
      print(requestBody);
    }
    return retry(
            () => http
            .put(url, headers: apiHeaders, body: requestBody)
            .timeout(const Duration(seconds: 4)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
        maxAttempts: 4);
  }

  static Future<http.Response> patch(String path,
      [Object? requestBody,
        Map<String, dynamic> queryParams = const {}]) async {
    final url = Uri.https(BASE_URL, '/api/$path', queryParams);
    if (kDebugMode) {
      print("patch url:$url");
      print("patch body ${requestBody.toString()}");
    }
    return retry(
            () => http
            .patch(url, headers: apiHeaders, body: jsonEncode(requestBody))
            .timeout(const Duration(seconds: 4)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
        maxAttempts: 4);
  }

  static Future<http.Response> delete(String path,
      [Object? requestBody,
        Map<String, dynamic> queryParams = const {}]) async {
    final url = Uri.https(BASE_URL, '/api/$path', queryParams);
    log('delete url $url');
    return retry(
            () => http
            .delete(url, headers: apiHeaders, body: requestBody)
            .timeout(const Duration(seconds: 4)),
        retryIf: (e) => e is SocketException || e is TimeoutException,
        maxAttempts: 4);
  }
}
