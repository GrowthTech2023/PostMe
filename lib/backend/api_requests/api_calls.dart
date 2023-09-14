import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI GPT Group Code

class OpenAIGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static UserPromptCall userPromptCall = UserPromptCall();
}

class UserPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic? promptJson,
  }) {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo-16k-0613",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userPrompt',
      apiUrl: '${OpenAIGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        ...OpenAIGPTGroup.headers,
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic createdTimeStamp(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

/// End OpenAI GPT Group Code

/// Start tiktok Group Code

class TiktokGroup {
  static String baseUrl = 'https://open-api.tiktok.com';
  static Map<String, String> headers = {};
  static TiktokConnectCall tiktokConnectCall = TiktokConnectCall();
}

class TiktokConnectCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'tiktokConnect',
      apiUrl:
          '${TiktokGroup.baseUrl}/platform/oauth/connect/?client_key=aw5xgjgqk86aj4ey&response_type=code&redirect_uri=https://postme-390612.firebaseapp.com/__/auth/handler&scope=user.info.basic',
      callType: ApiCallType.POST,
      headers: {
        ...TiktokGroup.headers,
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End tiktok Group Code

/// Start youtube Group Code

class YoutubeGroup {
  static String baseUrl = 'https://www.googleapis.com';
  static Map<String, String> headers = {};
  static YoutubeUploadCall youtubeUploadCall = YoutubeUploadCall();
}

class YoutubeUploadCall {
  Future<ApiCallResponse> call({
    String? snippetTitle = '',
    String? snippetDescription = '',
    List<String>? snippetTagsList,
    String? statusPrivacyStatus = 'public',
  }) {
    final snippetTags = _serializeList(snippetTagsList);

    return ApiManager.instance.makeApiCall(
      callName: 'youtubeUpload',
      apiUrl:
          '${YoutubeGroup.baseUrl}/upload/youtube/v3/videos?part=snippet,status',
      callType: ApiCallType.POST,
      headers: {
        ...YoutubeGroup.headers,
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

/// End youtube Group Code

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
