import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GoogleOauthCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'googleOauth',
      apiUrl:
          'https://postme-390612.firebaseapp.com/__/auth/action?mode=action&oobCode=code',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class ConnectTiktokAccountCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'connectTiktokAccount',
      apiUrl:
          'https://open-api.tiktok.com/platform/oauth/connect/?client_key=aw5xgjgqk86aj4ey&response_type=code&redirect_uri=https://postme-390612.firebaseapp.com/__/auth/handler&scope=user.info.basic',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class ExchangeCodeForTokenCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'exchangeCodeForToken',
      apiUrl: 'https://open-api.tiktok.com/oauth/access_token/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_key': "aw5xgjgqk86aj4ey",
        'client_secret': "oqiPFe5bExpZFA1HAxtc1cCjnlCw0nsF",
        'code': code,
        'grant_type': "authorization_code",
        'redirect_uri': "https://postme-390612.firebaseapp.com/__/auth/handler",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class YoutubePostCall {
  static Future<ApiCallResponse> call({
    String? snippetTitle = '',
    String? snippetDescription = '',
    List<String>? snippetTagsList,
    String? statusPrivacyStatus = 'public',
  }) {
    final snippetTags = _serializeList(snippetTagsList);

    return ApiManager.instance.makeApiCall(
      callName: 'youtubePost',
      apiUrl:
          'https://www.googleapis.com/upload/youtube/v3/videos?part=snippet,status',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
