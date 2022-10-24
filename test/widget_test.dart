// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

void main() {
  // String url = "192.168.0.104:8080";
  String url = "atlasdv.logisvalley.com";
  String path = "/logisvalley_sec";
  // String url = 'https://atlasdv.logisvalley.com/logisvalley_sec';
  test('http simple test', () async {
    var response = await http.post(
      // Uri.parse('http://192.168.0.104:8080/api/ATLAS1000000SVC/getInitMobile'),
      Uri.parse('https://${url}${path}'),
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
        'X-CSRF-TOKEN': 'Global No1 HTNS',
        'AJAX': 'true',
        'charset': 'utf-8',
        "referer": "https://192.168.0.104",
        HttpHeaders.authorizationHeader: "Global No1 HTNS",
        //  'Cookie': localcookie,
        'User-Agent': 'okhttp/3.4.1',
        'credentials': 'omit',
        'Referer': 'https://${url}'
      },
      // body: jsonEncode({'USER_ID': 'tokenfix', 'PW': 'tokenfix'}),
      body: 'USER_ID=tokenfix&PW=tokenfix&X-CSRF-TOKEN=Global No1 HTNS',
    );
    var result = jsonDecode(await response.body);
    // final csrf = result['signaldata']['X_CSRF_TOKEN'];
    print(result);
    // return;

    // var response2 = await http.post(Uri.http(url, path),
    //     headers: <String, String>{
    //       'Accept': 'application/json',
    //       'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
    //       'X-CSRF-TOKEN': csrf,
    //       'AJAX': 'true',
    //       //'Cookie': '',//cookie,
    //       'User-Agent': 'okhttp/3.4.1',
    //       'credentials': 'omit'
    //     },
    //     // body: jsonEncode(sBody),
    //     // body: <String, String>{
    //     //   '_csrf': csrf,
    //     //   'USER_ID': 'user04',
    //     //   'PW': 'user04',
    //     //   '_spring_security_remember_me': 'true'
    //     // },
    //     body:
    //         '_csrf=${csrf}&USER_ID=user04&PW=user04&_spring_security_remember_me=true');
    // print(response2.body);
  });
  test('dio simple test', () async {
    List<Cookie> cookies = [
      Cookie("X-CSRF-TOKEN", "GlobalNo1HTNS"),
    ];
    var cj = CookieJar();
    //Save cookies
    await cj.saveFromResponse(
        Uri.parse("https://atlasdv.logisvalley.com"), cookies);
    //Get cookies
    List<Cookie> results = await cj.loadForRequest(
        Uri.parse("https://atlasdv.logisvalley.com/logisvalley_sec"));
    print(results);
    var dio = Dio(BaseOptions(
        connectTimeout: 10000, // in ms
        receiveTimeout: 10000,
        sendTimeout: 10000,
        responseType: ResponseType.plain,
        followRedirects: false,
        validateStatus: (status) {
          return true;
        }));
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Content-Type'] =
        'application/x-www-form-urlencoded; charset=utf-8';
    dio.options.headers['X-CSRF-TOKEN'] = 'Global No1 HTNS';
    dio.options.headers['X-XSRF-TOKEN'] = 'Global No1 HTNS';
    dio.options.headers["AJAX"] = "true";
    dio.options.headers["User-Agent"] = "okhttp/3.4.1";
    dio.options.headers["credentials"] = "omit";
    dio.options.headers["Referer"] = "https://${url}";
    dio.options.headers["Connection"] = "keep-alive";

    final Response<dynamic> response = await dio.post(
      'https://${url}${path}',
      // options: Options(headers: {
      //   'Accept': 'application/json',
      //   'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
      //   'X-CSRF-TOKEN': 'Global No1 HTNS',
      //   'AJAX': true,
      //   'User-Agent': 'okhttp/3.4.1',
      //   'credentials': 'omit',
      // }),
      //queryParameters: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
      data: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
    );
    print(' ${jsonDecode(response.data)}');
  });
  test('dio simple test', () async {
    var dio = Dio(BaseOptions(
        connectTimeout: 10000, // in ms
        receiveTimeout: 10000,
        sendTimeout: 10000,
        responseType: ResponseType.plain,
        followRedirects: false,
        validateStatus: (status) {
          return true;
        }));
    var csrf = 'c41f9677-1e6d-4c6e-aa3e-796d5d875f1d';

    var cj = new CookieJar();
    List<Cookie> cookies = [new Cookie("csrftoken", csrf)];
    print(cookies);
    cj.saveFromResponse(Uri.parse("https://${url}"), cookies);
    Future<List<Cookie>> results =
        cj.loadForRequest(Uri.parse("https://${url}"));
    print(results);
    // HttpSession http = HttpSession();
    // var cookieJar = CookieJar();
    // dio.interceptors.add(CookieManager(cookieJar));
    // dio.interceptors
    //     .add(InterceptorsWrapper(onResponse: (Response<dynamic> response) {
    //   final String urlPath = response.request.path;
    //   final List<Cookie> cookies = cookieJar.loadForRequest(Uri.parse(urlPath));
    //   final String xsrfToken = cookies
    //       .firstWhere((Cookie c) => c.name == 'XSRF-TOKEN', orElse: () => null)
    //       ?.value;
    //   // Set dio auth header token once time
    //   if (xsrfToken != null) {
    //     /// The XSRF-TOKEN got from cookie requires decoded before add to header
    //     dio.options.headers['X-XSRF-TOKEN'] = Uri.decodeComponent(xsrfToken);
    //     dio.options.headers['X-Requested-With'] = 'XMLHttpRequest';
    //     String cookieStr = '';
    //     for (int i = 0; i < cookies.length; i++) {
    //       final Cookie c = cookies[i];
    //       cookieStr += '${c.name}=${c.value}; ';
    //     }
    //     dio.options.headers['Cookie'] = cookieStr;
    //   }
    //   return response;
    // }));

    // cookieJar.loadForRequest(Uri.http("192.168.0.104"));
    // cookieJar.delete(Uri.parse("192.168.0.104"));
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Content-Type'] =
        'application/x-www-form-urlencoded; charset=utf-8';
    dio.options.headers['X-CSRF-TOKEN'] = 'Global No1 HTNS';
    dio.options.headers['X-XSRF-TOKEN'] = 'Global No1 HTNS';
    dio.options.headers["AJAX"] = "true";
    dio.options.headers["User-Agent"] = "okhttp/3.4.1";
    dio.options.headers["credentials"] = "omit";
    dio.options.headers["Referer"] = "https://${url}";
    dio.options.headers["Connection"] = "keep-alive";

    final Response<dynamic> response = await dio.post(
      'https://${url}${path}',
      // options: Options(headers: {
      //   'Accept': 'application/json',
      //   'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
      //   'X-CSRF-TOKEN': 'Global No1 HTNS',
      //   'AJAX': true,
      //   'User-Agent': 'okhttp/3.4.1',
      //   'credentials': 'omit',
      // }),
      //queryParameters: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
      data: {'USER_ID': 'tokenfix', 'PW': 'tokenfix'},
    );
    print(' ${jsonDecode(response.data)}');
    // String token = jsonDecode(response.data)['signaldata']['X_CSRF_TOKEN'];

    // print(' ${jsonDecode(response.data)['signaldata']['X_CSRF_TOKEN']}');
    // cookieJar
    //     .deleteAll(); // .delete(Uri.parse("https://atlasdv.logisvalley.com/"));
    // .loadForRequest(Uri.parse("https://atlasdv.logisvalley.com/")));

    // dio.options.headers["X-CSRF-TOKEN"] = token;
    // dio.options.headers["X_CSRF_TOKEN"] = token;
    // print("${dio.options.headers}");
    return;
    // final Response<dynamic> response2 =
    //     await dio.post('https://atlasdv.logisvalley.com/logisvalley_sec',
    //         options: Options(headers: {
    //           'authorization': token,
    //           'Accept': 'application/json',
    //           'Content-Type':
    //               'application/x-www-form-urlencoded; charset=utf-8',
    //           'X-CSRF-TOKEN': token,
    //           'AJAX': 'true',
    //           'User-Agent': 'okhttp/3.4.1',
    //           'credentials': 'omit',
    //         }),
    //         data: jsonEncode({
    //           '_csrf': token,
    //           'USER_ID': 'user04',
    //           'PW': 'user04',
    //           '_spring_security_remember_me': 'true'
    //         }));
    // print(' ${response2}');
  });
}
